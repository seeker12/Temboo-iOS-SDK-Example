/*!
 Copyright 2013, Temboo Inc.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 This file included as part of an example iOS application distributed with the
 Temboo iOS SDK, intended to demonstrate how to use the Temboo SDK to create
 apps that interact with 3rd party APIs and services. 
 
 Visit the "getting started" section of our website at www.temboo.com for the tutorial 
 that goes along with this example.
 */

#import "YouTubeSearchTableVC.h"
#import "TMBException.h"
#import "TMBTembooSession.h"
#import "TMBYouTube.h"
#import "JSONKit.h"

/*!
 * This class is the controller for the second tab of the application's tab view,
 * which displays YouTube movie clips that match the user's search term(s)
 */
@implementation YouTubeSearchTableVC

// Table view data source
@synthesize clipsArray;

/*!
 * Default initialization routine
 */
-(id)initWithCoder:(NSCoder *)decoder {
	self = [super initWithCoder:decoder];
	if (self) {
		// Initialize our data source array w/ capacity
        self.clipsArray = [NSMutableArray arrayWithCapacity:20];
		// Listen for changes in search bar text
		[[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(searchTextDidChange:)
                                                     name:@"onSearchTextChanged" object:nil];
	}
    return self;
}

/*!
 * TMBChoreographyDelegate protocol method implementation - choreography error
 */
-(void)choreographyDidFailWithError:(NSError*)error {
	NSLog(@"%s - An error occurred: %@", __PRETTY_FUNCTION__, error);
}

/*!
 * TMBChoreographyDelegate protocol method implementation - choreography execution completed
 */
//-(void)choreographyDidFinishExecuting:(TMBYouTube_SearchByKeyword_ResultSet*)result {
// 07/25/13 fix result param type
-(void)choreographyDidFinishExecuting:(TMBYouTube_Search_ListSearchResults_ResultSet*)result {
	NSString *response = [result getResponse];
//    NSLog(@"%s search json response:\n%@",__PRETTY_FUNCTION__, response);
    NSMutableDictionary *resultsDict = [response objectFromJSONString];
    NSLog(@"%s dict from json:\n%@",__PRETTY_FUNCTION__, resultsDict);
    
    if (resultsDict.count == 0) return;
    
    // flush current datasource array
    self.clipsArray = [NSMutableArray arrayWithCapacity:20];

    // Unpack the json result dict; assemble clipDetail dictionaries
    for (NSDictionary *item in [resultsDict objectForKey: @"items"]) {
        NSDictionary *snippet = [item objectForKey: @"snippet"];
        NSMutableDictionary *clipDetail = [NSMutableDictionary dictionaryWithCapacity: 3];
        [clipDetail setValue:[snippet valueForKey: @"title"] forKey: @"title"];
        [clipDetail setValue:[snippet valueForKey: @"description"] forKey: @"description"];
        // thumbnail
        NSDictionary *thumbnails = [snippet valueForKey: @"thumbnails"];
        NSDictionary *thumbDict = [thumbnails valueForKey: @"default"];
        NSString *strURL = [thumbDict valueForKey: @"url"];
        [clipDetail setValue: [NSURL URLWithString: strURL] forKey: @"thumbUrl"];
        
        // clipURL: construct NSURL of form: http://www.youtube.com/watch?v=G-pz8Wp9l48 where v=[key:videoId]
        NSDictionary *idDict = [item objectForKey: @"id"];
        strURL = [NSString stringWithFormat: @"http://www.youtube.com/watch?v=%@", [idDict valueForKey: @"videoId"]];
        [clipDetail setValue: [NSURL URLWithString:strURL] forKey:@"clipUrl"];
        
        // Call to load image, which will add to array after image load
        [self loadClipThumbnail: clipDetail];
    }
}

/*!
 * The thumbnail for a given YouTube clip finished loading, update the data source array
 */
-(void)clipThumbnailDidLoad:(NSMutableDictionary*)clipDetails {
	[self.clipsArray addObject:clipDetails];
	
	if (20 == [self.clipsArray count]) {
		// All loaded, update the UI
		[self.tableView reloadData];
	}
}

/*!
 * Release allocated resources
 */
- (void)dealloc {
	[[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

- (void)updateTableWithSearchTerm:(NSString *)strSearch {
    [self doYouTubeSearch:strSearch];
}

/*!
 * Search YouTube for clips matching the user's search keyword(s)
 */
-(void)doYouTubeSearch:(NSString*)searchText {
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	@try {
		//
		// Paste Library code snippet here!
		// Instantiate the Choreo, using a previously instantiated TembooSession object, eg:
        TMBTembooSession *session = [[TMBTembooSession alloc] initWithAccount:@"magicwave"
                                                                   appKeyName:@"myFirstApp"
                                                               andAppKeyValue:@"04b49de1-0456-41d7-8"];
        TMBYouTube_Search_ListSearchResults *listSearchResultsChoreo = [[TMBYouTube_Search_ListSearchResults alloc] initWithSession:session];
        
        // Get an InputSet object for the choreo
        TMBYouTube_Search_ListSearchResults_Inputs *listSearchResultsInputs = [listSearchResultsChoreo newInputSet];
		
        // Set inputs
        [listSearchResultsInputs setQuery: searchText];
        
        // Execute choreo -- implement methods below to be notified of result/error
        [listSearchResultsChoreo executeWithInputs:listSearchResultsInputs delegate:self];

		[session release];
	}
	@catch (TMBHTTPException *e) {
		NSLog(@"Caught exception: %@", e);
	}
	
	[pool drain];
}

/*!
 * Load the thumbnail for the specified YouTube clip.  This is a blocking call that must
 * be handled asynchronously
 */
-(void)loadClipThumbnail:(NSMutableDictionary*)clipDetails {
	// Grab the image data based on the clip's URL
	NSData *imageData = [NSData dataWithContentsOfURL:[clipDetails objectForKey:@"thumbUrl"]];
	// Create the image
	UIImage *thumb = [UIImage imageWithData:imageData];
	// Add the image itself to the data for the clip 
	[clipDetails setValue:thumb forKey:@"thumbnail"];
	// Notify the main thread that the clip has finished loading
	[self performSelectorOnMainThread:@selector(clipThumbnailDidLoad:) withObject:clipDetails waitUntilDone:NO];
}

/*!
 * The user has entered new search text, handle accordingly
 */
-(void)searchTextDidChange:(NSNotification *)notification {
	// Grab the search text from the notification
	NSString *searchText = [notification.object stringByReplacingOccurrencesOfString:@" " withString:@","];
	// Kick off the search
	[self doYouTubeSearch:searchText];
}

/*!
 * Specify the number of rows in the table
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 20;
}

/*!
 * Customize the appearance of table view cells
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
	static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) {
		// Note this cell style is required for the image to be able to be added, below
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
//        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
		cell.textLabel.font = [UIFont systemFontOfSize:14];
    }
    
    // Configure the cell...
	if(indexPath.row < [self.clipsArray count]){
		NSDictionary *clipDetails	= [self.clipsArray objectAtIndex: indexPath.row];
		cell.imageView.image		= [clipDetails objectForKey: @"thumbnail"];
		cell.textLabel.text			= [clipDetails objectForKey: @"title"];
//        cell.detailTextLabel.text   = [clipDetails objectForKey: @"description"];
	}
    
    return cell;
}

/*!
 * Handle user click on table row - open the YouTube clip
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSURL *clipUrl = [[self.clipsArray objectAtIndex: indexPath.row] objectForKey: @"clipUrl"];
    [[UIApplication sharedApplication] openURL: clipUrl];
    [tableView deselectRowAtIndexPath: indexPath animated: YES];
}

@end


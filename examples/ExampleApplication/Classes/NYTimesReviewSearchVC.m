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

#import "NYTimesReviewSearchVC.h"
#import "TMBTembooSession.h"
#import "TMBNYTimes.h"
#import "TMBException.h"
#import "JSONKit.h"

@interface NYTimesReviewSearchVC ()
- (void)updateReviewWithResults:(NSMutableDictionary *)resultsDict;
@end

/*!
 * This class is the controller for the first tab of the application's tab view
 * which displays a short version of the NYTimes movie review for the movie matching
 * the user's search keywords, as well as a clickable link to the full review
 */
@implementation NYTimesReviewSearchVC

@synthesize review;
@synthesize searchBar;
@synthesize spinner;

/*!
 * TMBChoreographyDelegate protocol method implementation - choreography error
 */
-(void)choreographyDidFailWithError:(NSError*)error {
	// Hide spinner
	[self.spinner stopAnimating];
	// Update UI to indicate an error occurred
	self.review.text = @"An error occurred";
}

/*!
 * TMBChoreographyDelegate protocol method implementation - choreography execution completed
 */
//-(void)choreographyDidFinishExecuting:(TMBNYTimes_MovieReviews_GetReviewsByKeyword_ResultSet*)result {
// 07/25/13 ET fix: result param wrong type
-(void)choreographyDidFinishExecuting:(TMBNYTimes_MovieReviews_SearchByKeyword_ResultSet *)result {
	NSString *response = [result getResponse];
    NSLog(@"%s search json response:\n%@",__PRETTY_FUNCTION__, response);
    NSMutableDictionary *dict = [response objectFromJSONString];
    NSLog(@"%s dict from json:\n%@",__PRETTY_FUNCTION__, dict);
    
    [self.spinner stopAnimating];
    [self updateReviewWithResults: dict];
}

/*!
 * seeker12: A quick hack to output returned results: assembles a mutable string of some of the returned search results.
 */
- (void)updateReviewWithResults:(NSMutableDictionary *)resultsDict {
    // handle no NYTimes search results.
    NSArray *results = [resultsDict objectForKey: @"results"];
    if (nil == results || results.count == 0) {
        self.review.text = @"No reviews found.";
        return;
    }
    
    NSDictionary *parseDict = results[0];
    NSMutableString *mStr = [NSMutableString string];
    // title
    [mStr appendFormat:@"%@\n\n", [parseDict valueForKey: @"display_title"]];
    for (NSDictionary *dict in [parseDict valueForKey: @"related_urls"]) {
        NSString *linkText = [dict valueForKey: @"suggested_link_text"];
        NSString *url = [dict valueForKey: @"url"];
        [mStr appendFormat: @"%@\n%@\n\n", linkText, url];
    }
    // update the textView with the assembled string
    self.review.text = [NSString stringWithString:mStr];
}

/*!
 * Search for movie reviews by keyword(s)
 */
-(void)doNYTimesKeywordSearch:(NSString*)searchText {
	
    // Stop the spinner
    [self.spinner stopAnimating];
    
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	@try {
		//
		// Paste Library code snippet here! (https://www.temboo.com/library/Library/NYTimes/MovieReviews/SearchByKeyword/)
		// Instantiate the Choreo, using a previously instantiated TembooSession object, eg:
        // Replace session string parameters with your Temboo account attributes
        TMBTembooSession *session = [[TMBTembooSession alloc] initWithAccount:@"[ACCOUNT NAME]"
                                                                   appKeyName:@"[APP KEY]"
                                                               andAppKeyValue:@"xxxxxxxx-xxxx-xxxx-x"];
        
        TMBNYTimes_MovieReviews_SearchByKeyword *searchByKeywordChoreo = [[TMBNYTimes_MovieReviews_SearchByKeyword alloc] initWithSession:session];
        
        // Get an InputSet object for the choreo
        TMBNYTimes_MovieReviews_SearchByKeyword_Inputs *searchByKeywordInputs = [searchByKeywordChoreo newInputSet];
        
        // Set inputs
//        [searchByKeywordInputs setQuery:@"Casablanca"];
        [searchByKeywordInputs setQuery: searchText];
        [searchByKeywordInputs setResponseFormat:@"json"];
        
        // Execute choreo -- implement methods below to be notified of result/error
        [searchByKeywordChoreo executeWithInputs:searchByKeywordInputs delegate:self];		
		
		[session release];
	}
	@catch (TMBHTTPException *e) {
		NSLog(@"Caught exception: %@", e);
	}
	
	[pool drain];
}

/*!
 * Handle user search bar "Search" button click
 */
- (void)searchBarSearchButtonClicked:(UISearchBar *)bar {
	// Notify listeners that the search text was changed (2nd tab of tab view)
	[[NSNotificationCenter defaultCenter] postNotificationName:@"onSearchTextChanged" object:self.searchBar.text];
	// Dismiss the keyboard
	[self.searchBar resignFirstResponder];
	// Show the "spinner"
	[self.spinner startAnimating];
	// Clear any existing review text
	self.review.text = @"";	
	// Kick off the search
	[self doNYTimesKeywordSearch:self.searchBar.text];
}

@end

/*!
 * @TMBNPR.m
 *
 * Execute Choreographies from the Temboo NPR bundle.
 *
 * iOS version 10.6.8
 *
 * LICENSE: Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * @category   Services
 * @author     Reid Simonton, Temboo, Inc.
 * @copyright  2013 Temboo, Inc.
 * @license    http://www.apache.org/licenses/LICENSE-2.0 Apache License 2.0
 * @version    1.7
 */

#import "TMBNPR.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the MusicGenres Choreo.
 */
@implementation TMBNPR_StoryFinder_MusicGenres_Inputs

	/*!
	 * Set the value of the MusicGenre input for this Choreo.
	*(optional, string) The specific music genre title to return. Multiple genre titles can be specified separated by commas (i.e. Blues,Classical). Genre IDs are returned when this input is used.
	 */
	-(void)setMusicGenre:(NSString*)MusicGenre {
		[super setInput:@"MusicGenre" toValue:MusicGenre];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying MusicGenre, only xml is returned.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MusicGenres Choreo.
 */
@implementation TMBNPR_StoryFinder_MusicGenres_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Id" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID of the music genre. This is only returned when the MusicGenre input is specified. When multiple genres are specified, this will be a list of IDs separated by commas.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getId {
		return [super getOutputByName:@"Id"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR music genres and corresponding IDs. Also used to look up the IDs of specific NPR music genres by specifying those as an optional parameter.
 */
@implementation TMBNPR_StoryFinder_MusicGenres

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_MusicGenres Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/MusicGenres"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_MusicGenres_ResultSet *results = [[[TMBNPR_StoryFinder_MusicGenres_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MusicGenres Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_MusicGenres_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_MusicGenres_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByID Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NPR.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The unique ID that NPR asociates with the organization.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByID Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves local NPR member stations based on their unique ID.
 */
@implementation TMBNPR_StationFinder_SearchByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StationFinder_SearchByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StationFinder/SearchByID"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StationFinder_SearchByID_ResultSet *results = [[[TMBNPR_StationFinder_SearchByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StationFinder_SearchByID_Inputs*)newInputSet {
		return [[[TMBNPR_StationFinder_SearchByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Series Choreo.
 */
@implementation TMBNPR_StoryFinder_Series_Inputs

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Series, only xml is returned.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Series input for this Choreo.
	*(optional, string) The specific series title to return. Multiple titles can be specified separated by commas (i.e. Life in Berlin,Climate Connections). Series IDs are returned when this input is used.
	 */
	-(void)setSeries:(NSString*)Series {
		[super setInput:@"Series" toValue:Series];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Series Choreo.
 */
@implementation TMBNPR_StoryFinder_Series_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Id" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID of the series. This is only returned when the Series input is specified. When multiple series are specified, this will be a list of IDs separated by commas.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getId {
		return [super getOutputByName:@"Id"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR series titles and corresponding IDs. Also used to look up the IDs of specific NPR series by specifying those as an optional parameter.
 */
@implementation TMBNPR_StoryFinder_Series

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_Series Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/Series"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_Series_ResultSet *results = [[[TMBNPR_StoryFinder_Series_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Series Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_Series_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_Series_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Blogs Choreo.
 */
@implementation TMBNPR_StoryFinder_Blogs_Inputs

	/*!
	 * Set the value of the Blog input for this Choreo.
	*(optional, string) The specific blog title to return. Multiple blog titles can be specified separated by commas (i.e. Soapbox,Planet Money). Blog IDs are returned when this input is used.
	 */
	-(void)setBlog:(NSString*)Blog {
		[super setInput:@"Blog" toValue:Blog];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Blog, only xml is returned.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Blogs Choreo.
 */
@implementation TMBNPR_StoryFinder_Blogs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Id" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID of the blog. This is only returned when the Blog input is specified. When multiple blogs are specified, this will be a list of IDs separated by commas.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getId {
		return [super getOutputByName:@"Id"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR blogs and corresponding IDs. Also used to look up the IDs of specific NPR blog by specifying those as an optional parameter.
 */
@implementation TMBNPR_StoryFinder_Blogs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_Blogs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/Blogs"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_Blogs_ResultSet *results = [[[TMBNPR_StoryFinder_Blogs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Blogs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_Blogs_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_Blogs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCallLetters Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByCallLetters_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NPR.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Band input for this Choreo.
	*(optional, string) Enter AM or FM.
	 */
	-(void)setBand:(NSString*)Band {
		[super setInput:@"Band" toValue:Band];
	}

	/*!
	 * Set the value of the CallLetters input for this Choreo.
	*(required, string) Enter the unique identifier associated with a station.
	 */
	-(void)setCallLetters:(NSString*)CallLetters {
		[super setInput:@"CallLetters" toValue:CallLetters];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCallLetters Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByCallLetters_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves local NPR member stations based on uniquely identifying call letters.
 */
@implementation TMBNPR_StationFinder_SearchByCallLetters

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StationFinder_SearchByCallLetters Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StationFinder/SearchByCallLetters"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StationFinder_SearchByCallLetters_ResultSet *results = [[[TMBNPR_StationFinder_SearchByCallLetters_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByCallLetters Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StationFinder_SearchByCallLetters_Inputs*)newInputSet {
		return [[[TMBNPR_StationFinder_SearchByCallLetters_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBNPR_StoryFinder_Query_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, multiline) The API Key provided by NPR.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DateType input for this Choreo.
	*(optional, string) Controls the meaning of StartDate and EndDate. Values can be story or correction.
	 */
	-(void)setDateType:(NSString*)DateType {
		[super setInput:@"DateType" toValue:DateType];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The exact date for which stories will be returned. Format: YYYY-MM-DD The special value current is also allowed. Cannot be used with StartDate or EndDate.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The end date for which stories will be returned. Format: YYYY-MM-DD Can be used with StartDate to search a range. Cannot be used with Date. The meaning of this parameter can be modified with DateType.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Comma-delimited list of fields to be returned in the output for the results. List of fields can be made up of selectable fields or compilation fields. Defaults to all available fields.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the IDBoolean input for this Choreo.
	*(optional, string) Describes how IDs are searched. Allowed values: and, or, union.
	 */
	-(void)setIDBoolean:(NSString*)IDBoolean {
		[super setInput:@"IDBoolean" toValue:IDBoolean];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(optional, string) Comma-delimited list of ID numbers corresponding to topics, music genres, programs, blogs, bios, music artists, and series.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the NumResults input for this Choreo.
	*(optional, integer) The number of stories to be returned up to 20 maximum.
	 */
	-(void)setNumResults:(NSString*)NumResults {
		[super setInput:@"NumResults" toValue:NumResults];
	}

	/*!
	 * Set the value of the OrgID input for this Choreo.
	*(optional, string) Comma-delimited list of ID numbers of local stations.
	 */
	-(void)setOrgID:(NSString*)OrgID {
		[super setInput:@"OrgID" toValue:OrgID];
	}

	/*!
	 * Set the value of the RequiredAssets input for this Choreo.
	*(optional, string) Comma-delimited list that limits the resulting set to contain only stories with a particular type of asset. Allowed values: audio, image, text, and correction.
	 */
	-(void)setRequiredAssets:(NSString*)RequiredAssets {
		[super setInput:@"RequiredAssets" toValue:RequiredAssets];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter output format. Values accepted: NPRML, RSS, MediaRSS, Podcast, ATOM, JSON, HTML WIdget, Javascript Widget. Default is JSON.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SearchTerm input for this Choreo.
	*(optional, string) Term to search in NPR's search engine. Can be used with SearchType to specify which fields should be searched.
	 */
	-(void)setSearchTerm:(NSString*)SearchTerm {
		[super setInput:@"SearchTerm" toValue:SearchTerm];
	}

	/*!
	 * Set the value of the SearchType input for this Choreo.
	*(optional, string) Used with SearchTerm to specify which fields should be searched. Default searches all fields. Allowed values: main and full.
	 */
	-(void)setSearchType:(NSString*)SearchType {
		[super setInput:@"SearchType" toValue:SearchType];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Determines the order in which the stories will be returned. Default is date descending. Other allowed values: date ascending, editor assigned, and featured.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start date for which stories will be returned. Format: YYYY-MM-DD Can be used with EndDate to search a range. Cannot be used with Date. The meaning of this parameter can be modified with DateType.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the StartNum input for this Choreo.
	*(optional, integer) Determines where in the result set to start returning stories.
	 */
	-(void)setStartNum:(NSString*)StartNum {
		[super setInput:@"StartNum" toValue:StartNum];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBNPR_StoryFinder_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Queries the Story API for stories across all NPR media, including audio, text, images, and web-only content.
 */
@implementation TMBNPR_StoryFinder_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/Query"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_Query_ResultSet *results = [[[TMBNPR_StoryFinder_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_Query_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_Query_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Topics Choreo.
 */
@implementation TMBNPR_StoryFinder_Topics_Inputs

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Topic, only xml is returned.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}

	/*!
	 * Set the value of the Topic input for this Choreo.
	*(optional, string) The specific topic title to return. Multiple topics can be specified separated by commas (i.e. Energy,Europe). Topic IDs are returned when this input is used.
	 */
	-(void)setTopic:(NSString*)Topic {
		[super setInput:@"Topic" toValue:Topic];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Topics Choreo.
 */
@implementation TMBNPR_StoryFinder_Topics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Id" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID of the topic. This is only returned when the Topic input is specified. When topics are specified, this will be a list of IDs separated by commas.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getId {
		return [super getOutputByName:@"Id"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR topics and corresponding IDs. Also used to look up the IDs of specific NPR topics by specifying them as an optional parameter.
 */
@implementation TMBNPR_StoryFinder_Topics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_Topics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/Topics"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_Topics_ResultSet *results = [[[TMBNPR_StoryFinder_Topics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Topics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_Topics_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_Topics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCity Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByCity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NPR.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) Enter the city name. When searching by city, the state parameter must also be specified.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) Enter the state. The city parameter must also be specified.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCity Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByCity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves local NPR member stations based on zip code.
 */
@implementation TMBNPR_StationFinder_SearchByCity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StationFinder_SearchByCity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StationFinder/SearchByCity"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StationFinder_SearchByCity_ResultSet *results = [[[TMBNPR_StationFinder_SearchByCity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByCity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StationFinder_SearchByCity_Inputs*)newInputSet {
		return [[[TMBNPR_StationFinder_SearchByCity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Columns Choreo.
 */
@implementation TMBNPR_StoryFinder_Columns_Inputs

	/*!
	 * Set the value of the Column input for this Choreo.
	*(optional, string) The specific column title to return. Multiple column titles can be specified separated by commas (i.e. Book Reviews,My Guilty Pleasure). Column IDs are returned when this input is used.
	 */
	-(void)setColumn:(NSString*)Column {
		[super setInput:@"Column" toValue:Column];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Column, only xml is returned.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Columns Choreo.
 */
@implementation TMBNPR_StoryFinder_Columns_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Id" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID of the column. This is only returned when the Column input is specified. When columns are specified, this will be a list of IDs separated by commas.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getId {
		return [super getOutputByName:@"Id"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR column titles and corresponding IDs. Also used to look up the IDs of specific NPR columns by specifying the title as an optional parameter.
 */
@implementation TMBNPR_StoryFinder_Columns

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_Columns Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/Columns"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_Columns_ResultSet *results = [[[TMBNPR_StoryFinder_Columns_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Columns Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_Columns_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_Columns_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MusicArtists Choreo.
 */
@implementation TMBNPR_StoryFinder_MusicArtists_Inputs

	/*!
	 * Set the value of the MusicArtist input for this Choreo.
	*(optional, string) The specific name or an NPR music artist to return. Multiple names can be specified separated by commas (i.e. Thom Yorke,Yo La Tengo). Music artist IDs are returned when this input is used.
	 */
	-(void)setMusicArtist:(NSString*)MusicArtist {
		[super setInput:@"MusicArtist" toValue:MusicArtist];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying MusicArtist, only xml is returned.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MusicArtists Choreo.
 */
@implementation TMBNPR_StoryFinder_MusicArtists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Id" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID of the music artist. This is only returned when the MusicArtist input is specified. When multiple artist names are specified, this will be a list of IDs separated by commas.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getId {
		return [super getOutputByName:@"Id"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR music artists and corresponding IDs. Also used to look up the IDs of specific NPR music artists by specifying them as an optional parameter.
 */
@implementation TMBNPR_StoryFinder_MusicArtists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_MusicArtists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/MusicArtists"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_MusicArtists_ResultSet *results = [[[TMBNPR_StoryFinder_MusicArtists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MusicArtists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_MusicArtists_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_MusicArtists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TranscriptSearch Choreo.
 */
@implementation TMBNPR_Transcripts_TranscriptSearch_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NPR.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The story ID for which you want a transcript. You can find the story ID by first running an aprropriate StoryFinder Choreo.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TranscriptSearch Choreo.
 */
@implementation TMBNPR_Transcripts_TranscriptSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves transcripts of NPR stories based on their unique story IDs.
 */
@implementation TMBNPR_Transcripts_TranscriptSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_Transcripts_TranscriptSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/Transcripts/TranscriptSearch"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_Transcripts_TranscriptSearch_ResultSet *results = [[[TMBNPR_Transcripts_TranscriptSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TranscriptSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_Transcripts_TranscriptSearch_Inputs*)newInputSet {
		return [[[TMBNPR_Transcripts_TranscriptSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetListByID Choreo.
 */
@implementation TMBNPR_StoryFinder_GetListByID_Inputs

	/*!
	 * Set the value of the ChildrenOf input for this Choreo.
	*(optional, integer) Returns only items which are assigned to the given topic ID. For example, if Id=3006 and ChildrenOf=1008 only recent series which are assigned to "Arts & Life" are returned.
	 */
	-(void)setChildrenOf:(NSString*)ChildrenOf {
		[super setInput:@"ChildrenOf" toValue:ChildrenOf];
	}

	/*!
	 * Set the value of the HideChildren input for this Choreo.
	*(optional, boolean) If set to "1", returns only topics which are not subtopics of another topic.
	 */
	-(void)setHideChildren:(NSString*)HideChildren {
		[super setInput:@"HideChildren" toValue:HideChildren];
	}

	/*!
	 * Set the value of the Id input for this Choreo.
	*(required, integer) The id of the list type you want to retrieve. For example, the list type id for Music Genres is 3218).
	 */
	-(void)setId:(NSString*)Id {
		[super setInput:@"Id" toValue:Id];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListByID Choreo.
 */
@implementation TMBNPR_StoryFinder_GetListByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR categories from a specified list type ID.
 */
@implementation TMBNPR_StoryFinder_GetListByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_GetListByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/GetListByID"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_GetListByID_ResultSet *results = [[[TMBNPR_StoryFinder_GetListByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetListByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_GetListByID_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_GetListByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByLocation Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByLocation_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NPR.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Lattitude input for this Choreo.
	*(required, decimal) The lattitude point of a station's location. Must be used together with the longitude parameter. This must be a positive value.
	 */
	-(void)setLattitude:(NSString*)Lattitude {
		[super setInput:@"Lattitude" toValue:Lattitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude point of a station's location. Must be used together with the lattitude parameter. This must be a positive value.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByLocation Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves local NPR member stations near the specified lattitude and longitude location coordinates.
 */
@implementation TMBNPR_StationFinder_SearchByLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StationFinder_SearchByLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StationFinder/SearchByLocation"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StationFinder_SearchByLocation_ResultSet *results = [[[TMBNPR_StationFinder_SearchByLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StationFinder_SearchByLocation_Inputs*)newInputSet {
		return [[[TMBNPR_StationFinder_SearchByLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Programs Choreo.
 */
@implementation TMBNPR_StoryFinder_Programs_Inputs

	/*!
	 * Set the value of the Program input for this Choreo.
	*(optional, string) The specific program title to return. Multiple prorgam titles can be specified separated by commas (i.e. All Things Considered,Tell Me More). Program IDs are returned when this input is used.
	 */
	-(void)setProgram:(NSString*)Program {
		[super setInput:@"Program" toValue:Program];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Program, only xml is returned.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Programs Choreo.
 */
@implementation TMBNPR_StoryFinder_Programs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Id" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID of the program. This is only returned when the Program input is specified. When multiple programs are specified, this will be a list of IDs separated by commas.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getId {
		return [super getOutputByName:@"Id"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR programs and corresponding IDs. Also used to look up the IDs of specific NPR programs by specifying them as an optional parameter.
 */
@implementation TMBNPR_StoryFinder_Programs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_Programs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/Programs"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_Programs_ResultSet *results = [[[TMBNPR_StoryFinder_Programs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Programs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_Programs_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_Programs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Bios Choreo.
 */
@implementation TMBNPR_StoryFinder_Bios_Inputs

	/*!
	 * Set the value of the Personality input for this Choreo.
	*(optional, string) The specific name or an NPR personality to return. Multiple names can be specified separated by commas (i.e. Andrei Codrescu,Allison Keyes). Personality IDs are returned when this input is used.
	 */
	-(void)setPersonality:(NSString*)Personality {
		[super setInput:@"Personality" toValue:Personality];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Personality, only xml is returned.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StoryCountAll input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories.
	 */
	-(void)setStoryCountAll:(NSString*)StoryCountAll {
		[super setInput:@"StoryCountAll" toValue:StoryCountAll];
	}

	/*!
	 * Set the value of the StoryCountMonth input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published in the last month.
	 */
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth {
		[super setInput:@"StoryCountMonth" toValue:StoryCountMonth];
	}

	/*!
	 * Set the value of the StoryCountToday input for this Choreo.
	*(optional, integer) Returns only items with at least this number of associated stories published today.
	 */
	-(void)setStoryCountToday:(NSString*)StoryCountToday {
		[super setInput:@"StoryCountToday" toValue:StoryCountToday];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Bios Choreo.
 */
@implementation TMBNPR_StoryFinder_Bios_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Id" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID of the personality specified. This is only returned when the Personality input is specified. When personalities are specified, this will be a list of IDs separated by commas.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getId {
		return [super getOutputByName:@"Id"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from NPR.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of NPR personalities and corresponding IDs. Also used to look up the IDs of specific NPR personalities by specifying them as an optional parameter.
 */
@implementation TMBNPR_StoryFinder_Bios

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StoryFinder_Bios Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StoryFinder/Bios"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StoryFinder_Bios_ResultSet *results = [[[TMBNPR_StoryFinder_Bios_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Bios Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StoryFinder_Bios_Inputs*)newInputSet {
		return [[[TMBNPR_StoryFinder_Bios_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByZipCode Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByZipCode_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NPR.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(required, string) Enter a five-digit zip code.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByZipCode Choreo.
 */
@implementation TMBNPR_StationFinder_SearchByZipCode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves local NPR member stations based on zip code.
 */
@implementation TMBNPR_StationFinder_SearchByZipCode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNPR_StationFinder_SearchByZipCode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NPR/StationFinder/SearchByZipCode"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBNPR_StationFinder_SearchByZipCode_ResultSet *results = [[[TMBNPR_StationFinder_SearchByZipCode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByZipCode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNPR_StationFinder_SearchByZipCode_Inputs*)newInputSet {
		return [[[TMBNPR_StationFinder_SearchByZipCode_Inputs alloc] init] autorelease];
	}
@end
	
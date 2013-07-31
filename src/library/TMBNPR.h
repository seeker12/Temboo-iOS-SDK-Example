/*!
 * @header Temboo iOS SDK NPR classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBNPR.StoryFinder.MusicGenres Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MusicGenres Choreo.
 */
@interface TMBNPR_StoryFinder_MusicGenres_Inputs : TMBChoreographyInputSet
	-(void)setMusicGenre:(NSString*)MusicGenre;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MusicGenres Choreo.
 */
@interface TMBNPR_StoryFinder_MusicGenres_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getId;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR music genres and corresponding IDs. Also used to look up the IDs of specific NPR music genres by specifying those as an optional parameter.
 */
@interface TMBNPR_StoryFinder_MusicGenres : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_MusicGenres_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_MusicGenres Choreo */


/*! group TMBNPR.StationFinder.SearchByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByID Choreo.
 */
@interface TMBNPR_StationFinder_SearchByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByID Choreo.
 */
@interface TMBNPR_StationFinder_SearchByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves local NPR member stations based on their unique ID.
 */
@interface TMBNPR_StationFinder_SearchByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StationFinder_SearchByID_Inputs*)newInputSet;
@end

/*! group TMBNPR.StationFinder_SearchByID Choreo */


/*! group TMBNPR.StoryFinder.Series Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Series Choreo.
 */
@interface TMBNPR_StoryFinder_Series_Inputs : TMBChoreographyInputSet
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSeries:(NSString*)Series;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Series Choreo.
 */
@interface TMBNPR_StoryFinder_Series_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getId;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR series titles and corresponding IDs. Also used to look up the IDs of specific NPR series by specifying those as an optional parameter.
 */
@interface TMBNPR_StoryFinder_Series : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_Series_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_Series Choreo */


/*! group TMBNPR.StoryFinder.Blogs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Blogs Choreo.
 */
@interface TMBNPR_StoryFinder_Blogs_Inputs : TMBChoreographyInputSet
	-(void)setBlog:(NSString*)Blog;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Blogs Choreo.
 */
@interface TMBNPR_StoryFinder_Blogs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getId;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR blogs and corresponding IDs. Also used to look up the IDs of specific NPR blog by specifying those as an optional parameter.
 */
@interface TMBNPR_StoryFinder_Blogs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_Blogs_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_Blogs Choreo */


/*! group TMBNPR.StationFinder.SearchByCallLetters Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCallLetters Choreo.
 */
@interface TMBNPR_StationFinder_SearchByCallLetters_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBand:(NSString*)Band;
	-(void)setCallLetters:(NSString*)CallLetters;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCallLetters Choreo.
 */
@interface TMBNPR_StationFinder_SearchByCallLetters_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves local NPR member stations based on uniquely identifying call letters.
 */
@interface TMBNPR_StationFinder_SearchByCallLetters : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StationFinder_SearchByCallLetters_Inputs*)newInputSet;
@end

/*! group TMBNPR.StationFinder_SearchByCallLetters Choreo */


/*! group TMBNPR.StoryFinder.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBNPR_StoryFinder_Query_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDateType:(NSString*)DateType;
	-(void)setDate:(NSString*)Date;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setFields:(NSString*)Fields;
	-(void)setIDBoolean:(NSString*)IDBoolean;
	-(void)setID:(NSString*)ID;
	-(void)setNumResults:(NSString*)NumResults;
	-(void)setOrgID:(NSString*)OrgID;
	-(void)setRequiredAssets:(NSString*)RequiredAssets;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSearchTerm:(NSString*)SearchTerm;
	-(void)setSearchType:(NSString*)SearchType;
	-(void)setSort:(NSString*)Sort;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setStartNum:(NSString*)StartNum;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBNPR_StoryFinder_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Queries the Story API for stories across all NPR media, including audio, text, images, and web-only content.
 */
@interface TMBNPR_StoryFinder_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_Query_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_Query Choreo */


/*! group TMBNPR.StoryFinder.Topics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Topics Choreo.
 */
@interface TMBNPR_StoryFinder_Topics_Inputs : TMBChoreographyInputSet
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
	-(void)setTopic:(NSString*)Topic;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Topics Choreo.
 */
@interface TMBNPR_StoryFinder_Topics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getId;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR topics and corresponding IDs. Also used to look up the IDs of specific NPR topics by specifying them as an optional parameter.
 */
@interface TMBNPR_StoryFinder_Topics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_Topics_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_Topics Choreo */


/*! group TMBNPR.StationFinder.SearchByCity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCity Choreo.
 */
@interface TMBNPR_StationFinder_SearchByCity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCity:(NSString*)City;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCity Choreo.
 */
@interface TMBNPR_StationFinder_SearchByCity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves local NPR member stations based on zip code.
 */
@interface TMBNPR_StationFinder_SearchByCity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StationFinder_SearchByCity_Inputs*)newInputSet;
@end

/*! group TMBNPR.StationFinder_SearchByCity Choreo */


/*! group TMBNPR.StoryFinder.Columns Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Columns Choreo.
 */
@interface TMBNPR_StoryFinder_Columns_Inputs : TMBChoreographyInputSet
	-(void)setColumn:(NSString*)Column;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Columns Choreo.
 */
@interface TMBNPR_StoryFinder_Columns_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getId;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR column titles and corresponding IDs. Also used to look up the IDs of specific NPR columns by specifying the title as an optional parameter.
 */
@interface TMBNPR_StoryFinder_Columns : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_Columns_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_Columns Choreo */


/*! group TMBNPR.StoryFinder.MusicArtists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MusicArtists Choreo.
 */
@interface TMBNPR_StoryFinder_MusicArtists_Inputs : TMBChoreographyInputSet
	-(void)setMusicArtist:(NSString*)MusicArtist;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MusicArtists Choreo.
 */
@interface TMBNPR_StoryFinder_MusicArtists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getId;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR music artists and corresponding IDs. Also used to look up the IDs of specific NPR music artists by specifying them as an optional parameter.
 */
@interface TMBNPR_StoryFinder_MusicArtists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_MusicArtists_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_MusicArtists Choreo */


/*! group TMBNPR.Transcripts.TranscriptSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TranscriptSearch Choreo.
 */
@interface TMBNPR_Transcripts_TranscriptSearch_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TranscriptSearch Choreo.
 */
@interface TMBNPR_Transcripts_TranscriptSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves transcripts of NPR stories based on their unique story IDs.
 */
@interface TMBNPR_Transcripts_TranscriptSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_Transcripts_TranscriptSearch_Inputs*)newInputSet;
@end

/*! group TMBNPR.Transcripts_TranscriptSearch Choreo */


/*! group TMBNPR.StoryFinder.GetListByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetListByID Choreo.
 */
@interface TMBNPR_StoryFinder_GetListByID_Inputs : TMBChoreographyInputSet
	-(void)setChildrenOf:(NSString*)ChildrenOf;
	-(void)setHideChildren:(NSString*)HideChildren;
	-(void)setId:(NSString*)Id;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListByID Choreo.
 */
@interface TMBNPR_StoryFinder_GetListByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR categories from a specified list type ID.
 */
@interface TMBNPR_StoryFinder_GetListByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_GetListByID_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_GetListByID Choreo */


/*! group TMBNPR.StationFinder.SearchByLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByLocation Choreo.
 */
@interface TMBNPR_StationFinder_SearchByLocation_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLattitude:(NSString*)Lattitude;
	-(void)setLongitude:(NSString*)Longitude;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByLocation Choreo.
 */
@interface TMBNPR_StationFinder_SearchByLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves local NPR member stations near the specified lattitude and longitude location coordinates.
 */
@interface TMBNPR_StationFinder_SearchByLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StationFinder_SearchByLocation_Inputs*)newInputSet;
@end

/*! group TMBNPR.StationFinder_SearchByLocation Choreo */


/*! group TMBNPR.StoryFinder.Programs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Programs Choreo.
 */
@interface TMBNPR_StoryFinder_Programs_Inputs : TMBChoreographyInputSet
	-(void)setProgram:(NSString*)Program;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Programs Choreo.
 */
@interface TMBNPR_StoryFinder_Programs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getId;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR programs and corresponding IDs. Also used to look up the IDs of specific NPR programs by specifying them as an optional parameter.
 */
@interface TMBNPR_StoryFinder_Programs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_Programs_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_Programs Choreo */


/*! group TMBNPR.StoryFinder.Bios Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Bios Choreo.
 */
@interface TMBNPR_StoryFinder_Bios_Inputs : TMBChoreographyInputSet
	-(void)setPersonality:(NSString*)Personality;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStoryCountAll:(NSString*)StoryCountAll;
	-(void)setStoryCountMonth:(NSString*)StoryCountMonth;
	-(void)setStoryCountToday:(NSString*)StoryCountToday;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Bios Choreo.
 */
@interface TMBNPR_StoryFinder_Bios_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getId;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of NPR personalities and corresponding IDs. Also used to look up the IDs of specific NPR personalities by specifying them as an optional parameter.
 */
@interface TMBNPR_StoryFinder_Bios : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StoryFinder_Bios_Inputs*)newInputSet;
@end

/*! group TMBNPR.StoryFinder_Bios Choreo */


/*! group TMBNPR.StationFinder.SearchByZipCode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByZipCode Choreo.
 */
@interface TMBNPR_StationFinder_SearchByZipCode_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByZipCode Choreo.
 */
@interface TMBNPR_StationFinder_SearchByZipCode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves local NPR member stations based on zip code.
 */
@interface TMBNPR_StationFinder_SearchByZipCode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNPR_StationFinder_SearchByZipCode_Inputs*)newInputSet;
@end

/*! group TMBNPR.StationFinder_SearchByZipCode Choreo */

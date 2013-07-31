/*!
 * @header Temboo iOS SDK Delicious classes
 *
 * Execute Choreographies from the Temboo Delicious bundle.
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

/*! group TMBDelicious.DeleteBookmark Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBookmark Choreo.
 */
@interface TMBDelicious_DeleteBookmark_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBookmark Choreo.
 */
@interface TMBDelicious_DeleteBookmark_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a bookmarked link from a Delicious account.
 */
@interface TMBDelicious_DeleteBookmark : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_DeleteBookmark_Inputs*)newInputSet;
@end

/*! group TMBDelicious_DeleteBookmark Choreo */


/*! group TMBDelicious.SuggestTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SuggestTags Choreo.
 */
@interface TMBDelicious_SuggestTags_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SuggestTags Choreo.
 */
@interface TMBDelicious_SuggestTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of suggested tags for a specifed URL.
 */
@interface TMBDelicious_SuggestTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_SuggestTags_Inputs*)newInputSet;
@end

/*! group TMBDelicious_SuggestTags Choreo */


/*! group TMBDelicious.GetTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTags Choreo.
 */
@interface TMBDelicious_GetTags_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTags Choreo.
 */
@interface TMBDelicious_GetTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all tags and the number of bookmarks that use them.
 */
@interface TMBDelicious_GetTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_GetTags_Inputs*)newInputSet;
@end

/*! group TMBDelicious_GetTags Choreo */


/*! group TMBDelicious.DeleteTag Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTag Choreo.
 */
@interface TMBDelicious_DeleteTag_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setTag:(NSString*)Tag;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTag Choreo.
 */
@interface TMBDelicious_DeleteTag_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified tag.
 */
@interface TMBDelicious_DeleteTag : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_DeleteTag_Inputs*)newInputSet;
@end

/*! group TMBDelicious_DeleteTag Choreo */


/*! group TMBDelicious.GetAllBookmarks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllBookmarks Choreo.
 */
@interface TMBDelicious_GetAllBookmarks_Inputs : TMBChoreographyInputSet
	-(void)setCount:(NSString*)Count;
	-(void)setFromDate:(NSString*)FromDate;
	-(void)setMeta:(NSString*)Meta;
	-(void)setPassword:(NSString*)Password;
	-(void)setTag:(NSString*)Tag;
	-(void)setToDate:(NSString*)ToDate;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllBookmarks Choreo.
 */
@interface TMBDelicious_GetAllBookmarks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns all links posted to a Delicious account.
 */
@interface TMBDelicious_GetAllBookmarks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_GetAllBookmarks_Inputs*)newInputSet;
@end

/*! group TMBDelicious_GetAllBookmarks Choreo */


/*! group TMBDelicious.GetChangeSignatures Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetChangeSignatures Choreo.
 */
@interface TMBDelicious_GetChangeSignatures_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetChangeSignatures Choreo.
 */
@interface TMBDelicious_GetChangeSignatures_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all bookmarks' change detection signatures.
 */
@interface TMBDelicious_GetChangeSignatures : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_GetChangeSignatures_Inputs*)newInputSet;
@end

/*! group TMBDelicious_GetChangeSignatures Choreo */


/*! group TMBDelicious.AddBookmark Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddBookmark Choreo.
 */
@interface TMBDelicious_AddBookmark_Inputs : TMBChoreographyInputSet
	-(void)setDescription:(NSString*)Description;
	-(void)setNotes:(NSString*)Notes;
	-(void)setPassword:(NSString*)Password;
	-(void)setReplace:(NSString*)Replace;
	-(void)setShared:(NSString*)Shared;
	-(void)setTags:(NSString*)Tags;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddBookmark Choreo.
 */
@interface TMBDelicious_AddBookmark_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a link bookmark to a Delicious account.
 */
@interface TMBDelicious_AddBookmark : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_AddBookmark_Inputs*)newInputSet;
@end

/*! group TMBDelicious_AddBookmark Choreo */


/*! group TMBDelicious.GetRecentBookmarks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentBookmarks Choreo.
 */
@interface TMBDelicious_GetRecentBookmarks_Inputs : TMBChoreographyInputSet
	-(void)setCount:(NSString*)Count;
	-(void)setPassword:(NSString*)Password;
	-(void)setTags:(NSString*)Tags;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentBookmarks Choreo.
 */
@interface TMBDelicious_GetRecentBookmarks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of the most recently posted bookmarks.
 */
@interface TMBDelicious_GetRecentBookmarks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_GetRecentBookmarks_Inputs*)newInputSet;
@end

/*! group TMBDelicious_GetRecentBookmarks Choreo */


/*! group TMBDelicious.RenameTag Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RenameTag Choreo.
 */
@interface TMBDelicious_RenameTag_Inputs : TMBChoreographyInputSet
	-(void)setNewTag:(NSString*)NewTag;
	-(void)setOldTag:(NSString*)OldTag;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameTag Choreo.
 */
@interface TMBDelicious_RenameTag_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Renames a specified tag.
 */
@interface TMBDelicious_RenameTag : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_RenameTag_Inputs*)newInputSet;
@end

/*! group TMBDelicious_RenameTag Choreo */


/*! group TMBDelicious.GetBookmarkDates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBookmarkDates Choreo.
 */
@interface TMBDelicious_GetBookmarkDates_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setTags:(NSString*)Tags;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBookmarkDates Choreo.
 */
@interface TMBDelicious_GetBookmarkDates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of dates, with the number of bookmarks posted for each date.
 */
@interface TMBDelicious_GetBookmarkDates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_GetBookmarkDates_Inputs*)newInputSet;
@end

/*! group TMBDelicious_GetBookmarkDates Choreo */


/*! group TMBDelicious.GetBookmark Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBookmark Choreo.
 */
@interface TMBDelicious_GetBookmark_Inputs : TMBChoreographyInputSet
	-(void)setChangeSignature:(NSString*)ChangeSignature;
	-(void)setDate:(NSString*)Date;
	-(void)setMeta:(NSString*)Meta;
	-(void)setPassword:(NSString*)Password;
	-(void)setTag:(NSString*)Tag;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBookmark Choreo.
 */
@interface TMBDelicious_GetBookmark_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more bookmarked links posted on a single day.
 */
@interface TMBDelicious_GetBookmark : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDelicious_GetBookmark_Inputs*)newInputSet;
@end

/*! group TMBDelicious_GetBookmark Choreo */

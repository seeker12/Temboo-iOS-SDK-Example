/*!
 * @header Temboo iOS SDK Bugzilla classes
 *
 * Execute Choreographies from the Temboo Bugzilla bundle.
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

/*! group TMBBugzilla.ListAttachmentsForBug Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAttachmentsForBug Choreo.
 */
@interface TMBBugzilla_ListAttachmentsForBug_Inputs : TMBChoreographyInputSet
	-(void)setAttachmentsWithData:(NSString*)AttachmentsWithData;
	-(void)setBugID:(NSString*)BugID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAttachmentsForBug Choreo.
 */
@interface TMBBugzilla_ListAttachmentsForBug_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * List attachments associated with a specifig Bug ID.
 */
@interface TMBBugzilla_ListAttachmentsForBug : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBugzilla_ListAttachmentsForBug_Inputs*)newInputSet;
@end

/*! group TMBBugzilla_ListAttachmentsForBug Choreo */


/*! group TMBBugzilla.RetrieveBug Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveBug Choreo.
 */
@interface TMBBugzilla_RetrieveBug_Inputs : TMBChoreographyInputSet
	-(void)setBugID:(NSString*)BugID;
	-(void)setIncludeFields:(NSString*)IncludeFields;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveBug Choreo.
 */
@interface TMBBugzilla_RetrieveBug_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve detailed information for a specifed Bug ID.
 */
@interface TMBBugzilla_RetrieveBug : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBugzilla_RetrieveBug_Inputs*)newInputSet;
@end

/*! group TMBBugzilla_RetrieveBug Choreo */


/*! group TMBBugzilla.RetrieveAttachment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveAttachment Choreo.
 */
@interface TMBBugzilla_RetrieveAttachment_Inputs : TMBChoreographyInputSet
	-(void)setAttachmentID:(NSString*)AttachmentID;
	-(void)setAttachmentsWithData:(NSString*)AttachmentsWithData;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveAttachment Choreo.
 */
@interface TMBBugzilla_RetrieveAttachment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve attachments associated with a specifig Bug ID.
 */
@interface TMBBugzilla_RetrieveAttachment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBugzilla_RetrieveAttachment_Inputs*)newInputSet;
@end

/*! group TMBBugzilla_RetrieveAttachment Choreo */


/*! group TMBBugzilla.ListBugHistory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListBugHistory Choreo.
 */
@interface TMBBugzilla_ListBugHistory_Inputs : TMBChoreographyInputSet
	-(void)setBugID:(NSString*)BugID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBugHistory Choreo.
 */
@interface TMBBugzilla_ListBugHistory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve detailed bug history.
 */
@interface TMBBugzilla_ListBugHistory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBugzilla_ListBugHistory_Inputs*)newInputSet;
@end

/*! group TMBBugzilla_ListBugHistory Choreo */


/*! group TMBBugzilla.SearchForBugs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchForBugs Choreo.
 */
@interface TMBBugzilla_SearchForBugs_Inputs : TMBChoreographyInputSet
	-(void)setBugChangeDate:(NSString*)BugChangeDate;
	-(void)setPassword:(NSString*)Password;
	-(void)setPriority:(NSString*)Priority;
	-(void)setProduct:(NSString*)Product;
	-(void)setServer:(NSString*)Server;
	-(void)setSeverity:(NSString*)Severity;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForBugs Choreo.
 */
@interface TMBBugzilla_SearchForBugs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search for bugs listed by Mozilla product name.
 */
@interface TMBBugzilla_SearchForBugs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBugzilla_SearchForBugs_Inputs*)newInputSet;
@end

/*! group TMBBugzilla_SearchForBugs Choreo */


/*! group TMBBugzilla.SearchForUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchForUsers Choreo.
 */
@interface TMBBugzilla_SearchForUsers_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSearchForUser:(NSString*)SearchForUser;
	-(void)setServer:(NSString*)Server;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForUsers Choreo.
 */
@interface TMBBugzilla_SearchForUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search for a specified Bugzilla user.
 */
@interface TMBBugzilla_SearchForUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBugzilla_SearchForUsers_Inputs*)newInputSet;
@end

/*! group TMBBugzilla_SearchForUsers Choreo */


/*! group TMBBugzilla.ListBugComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListBugComments Choreo.
 */
@interface TMBBugzilla_ListBugComments_Inputs : TMBChoreographyInputSet
	-(void)setBugID:(NSString*)BugID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBugComments Choreo.
 */
@interface TMBBugzilla_ListBugComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve comments for a specifed Bug ID.
 */
@interface TMBBugzilla_ListBugComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBugzilla_ListBugComments_Inputs*)newInputSet;
@end

/*! group TMBBugzilla_ListBugComments Choreo */


/*! group TMBBugzilla.RetrieveUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUser Choreo.
 */
@interface TMBBugzilla_RetrieveUser_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setQueryUserID:(NSString*)QueryUserID;
	-(void)setServer:(NSString*)Server;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUser Choreo.
 */
@interface TMBBugzilla_RetrieveUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve user info.
 */
@interface TMBBugzilla_RetrieveUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBugzilla_RetrieveUser_Inputs*)newInputSet;
@end

/*! group TMBBugzilla_RetrieveUser Choreo */

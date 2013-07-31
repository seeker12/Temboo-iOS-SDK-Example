/*!
 * @TMBBugzilla.m
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

#import "TMBBugzilla.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListAttachmentsForBug Choreo.
 */
@implementation TMBBugzilla_ListAttachmentsForBug_Inputs

	/*!
	 * Set the value of the AttachmentsWithData input for this Choreo.
	*(optional, integer) Enter 1 to obtain full bug attachments data.  If null, only attachments fields will be returned with no associated data.
	 */
	-(void)setAttachmentsWithData:(NSString*)AttachmentsWithData {
		[super setInput:@"AttachmentsWithData" toValue:AttachmentsWithData];
	}

	/*!
	 * Set the value of the BugID input for this Choreo.
	*(required, integer) Enter a Bug ID, for which information will be retrieved.
	 */
	-(void)setBugID:(NSString*)BugID {
		[super setInput:@"BugID" toValue:BugID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, password) Your Bugzilla password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) Your Bugzilla username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAttachmentsForBug Choreo.
 */
@implementation TMBBugzilla_ListAttachmentsForBug_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Bugzilla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * List attachments associated with a specifig Bug ID.
 */
@implementation TMBBugzilla_ListAttachmentsForBug

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBugzilla_ListAttachmentsForBug Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bugzilla/ListAttachmentsForBug"] autorelease];
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
		TMBBugzilla_ListAttachmentsForBug_ResultSet *results = [[[TMBBugzilla_ListAttachmentsForBug_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAttachmentsForBug Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBugzilla_ListAttachmentsForBug_Inputs*)newInputSet {
		return [[[TMBBugzilla_ListAttachmentsForBug_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveBug Choreo.
 */
@implementation TMBBugzilla_RetrieveBug_Inputs

	/*!
	 * Set the value of the BugID input for this Choreo.
	*(required, integer) Enter a Bug ID, for which information will be retrieved.
	 */
	-(void)setBugID:(NSString*)BugID {
		[super setInput:@"BugID" toValue:BugID];
	}

	/*!
	 * Set the value of the IncludeFields input for this Choreo.
	*(optional, string) Enter additional parameters to expand the scope of information returned.  For full bug fetch: _all; Or, a comma-separated list: _default, comments, history, attachments.data
	 */
	-(void)setIncludeFields:(NSString*)IncludeFields {
		[super setInput:@"IncludeFields" toValue:IncludeFields];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, password) Your Bugzilla password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) Your Bugzilla username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveBug Choreo.
 */
@implementation TMBBugzilla_RetrieveBug_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Bugzilla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve detailed information for a specifed Bug ID.
 */
@implementation TMBBugzilla_RetrieveBug

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBugzilla_RetrieveBug Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bugzilla/RetrieveBug"] autorelease];
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
		TMBBugzilla_RetrieveBug_ResultSet *results = [[[TMBBugzilla_RetrieveBug_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveBug Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBugzilla_RetrieveBug_Inputs*)newInputSet {
		return [[[TMBBugzilla_RetrieveBug_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveAttachment Choreo.
 */
@implementation TMBBugzilla_RetrieveAttachment_Inputs

	/*!
	 * Set the value of the AttachmentID input for this Choreo.
	*(required, integer) Enter an attachment ID, for which information will be retrieved.
	 */
	-(void)setAttachmentID:(NSString*)AttachmentID {
		[super setInput:@"AttachmentID" toValue:AttachmentID];
	}

	/*!
	 * Set the value of the AttachmentsWithData input for this Choreo.
	*(optional, integer) Enter 1 to obtain full bug attachments data.  If null, only attachments fields will be returned with no associated data.
	 */
	-(void)setAttachmentsWithData:(NSString*)AttachmentsWithData {
		[super setInput:@"AttachmentsWithData" toValue:AttachmentsWithData];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, password) Your Bugzilla password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) Your Bugzilla username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveAttachment Choreo.
 */
@implementation TMBBugzilla_RetrieveAttachment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Bugzilla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve attachments associated with a specifig Bug ID.
 */
@implementation TMBBugzilla_RetrieveAttachment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBugzilla_RetrieveAttachment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bugzilla/RetrieveAttachment"] autorelease];
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
		TMBBugzilla_RetrieveAttachment_ResultSet *results = [[[TMBBugzilla_RetrieveAttachment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveAttachment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBugzilla_RetrieveAttachment_Inputs*)newInputSet {
		return [[[TMBBugzilla_RetrieveAttachment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListBugHistory Choreo.
 */
@implementation TMBBugzilla_ListBugHistory_Inputs

	/*!
	 * Set the value of the BugID input for this Choreo.
	*(required, integer) Enter a Bug ID, for which information will be retrieved.
	 */
	-(void)setBugID:(NSString*)BugID {
		[super setInput:@"BugID" toValue:BugID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, password) Your Bugzilla password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) Your Bugzilla username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBugHistory Choreo.
 */
@implementation TMBBugzilla_ListBugHistory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Bugzilla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve detailed bug history.
 */
@implementation TMBBugzilla_ListBugHistory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBugzilla_ListBugHistory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bugzilla/ListBugHistory"] autorelease];
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
		TMBBugzilla_ListBugHistory_ResultSet *results = [[[TMBBugzilla_ListBugHistory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListBugHistory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBugzilla_ListBugHistory_Inputs*)newInputSet {
		return [[[TMBBugzilla_ListBugHistory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchForBugs Choreo.
 */
@implementation TMBBugzilla_SearchForBugs_Inputs

	/*!
	 * Set the value of the BugChangeDate input for this Choreo.
	*(optional, string) Retrieve bugs that were changed within a certain date range. For example: 25d will return all bugs changed from 25 days ago untill today.  Or: 3h, to return all bugs entered with 3 hours.
	 */
	-(void)setBugChangeDate:(NSString*)BugChangeDate {
		[super setInput:@"BugChangeDate" toValue:BugChangeDate];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, password) Your Bugzilla password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Priority input for this Choreo.
	*(optional, integer) Filter results by priority: For example: enter P1, to get Priority 1 bugs assoicated with a Product.
	 */
	-(void)setPriority:(NSString*)Priority {
		[super setInput:@"Priority" toValue:Priority];
	}

	/*!
	 * Set the value of the Product input for this Choreo.
	*(required, string) Enter the Mozilla product for which bugs will be retrieved. For example: Bugzilla
	 */
	-(void)setProduct:(NSString*)Product {
		[super setInput:@"Product" toValue:Product];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Severity input for this Choreo.
	*(optional, string) Filter results by severity. For example: blocker
	 */
	-(void)setSeverity:(NSString*)Severity {
		[super setInput:@"Severity" toValue:Severity];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Bugzilla username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForBugs Choreo.
 */
@implementation TMBBugzilla_SearchForBugs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Bugzilla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search for bugs listed by Mozilla product name.
 */
@implementation TMBBugzilla_SearchForBugs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBugzilla_SearchForBugs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bugzilla/SearchForBugs"] autorelease];
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
		TMBBugzilla_SearchForBugs_ResultSet *results = [[[TMBBugzilla_SearchForBugs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchForBugs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBugzilla_SearchForBugs_Inputs*)newInputSet {
		return [[[TMBBugzilla_SearchForBugs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchForUsers Choreo.
 */
@implementation TMBBugzilla_SearchForUsers_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Bugzilla password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SearchForUser input for this Choreo.
	*(required, string) Enter the usename to be querried.
	 */
	-(void)setSearchForUser:(NSString*)SearchForUser {
		[super setInput:@"SearchForUser" toValue:SearchForUser];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Bugzilla username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForUsers Choreo.
 */
@implementation TMBBugzilla_SearchForUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Bugzilla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search for a specified Bugzilla user.
 */
@implementation TMBBugzilla_SearchForUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBugzilla_SearchForUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bugzilla/SearchForUsers"] autorelease];
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
		TMBBugzilla_SearchForUsers_ResultSet *results = [[[TMBBugzilla_SearchForUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchForUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBugzilla_SearchForUsers_Inputs*)newInputSet {
		return [[[TMBBugzilla_SearchForUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListBugComments Choreo.
 */
@implementation TMBBugzilla_ListBugComments_Inputs

	/*!
	 * Set the value of the BugID input for this Choreo.
	*(required, integer) Enter a Bug ID, for which information will be retrieved.
	 */
	-(void)setBugID:(NSString*)BugID {
		[super setInput:@"BugID" toValue:BugID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, password) Your Bugzilla password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) Your Bugzilla username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBugComments Choreo.
 */
@implementation TMBBugzilla_ListBugComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Bugzilla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve comments for a specifed Bug ID.
 */
@implementation TMBBugzilla_ListBugComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBugzilla_ListBugComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bugzilla/ListBugComments"] autorelease];
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
		TMBBugzilla_ListBugComments_ResultSet *results = [[[TMBBugzilla_ListBugComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListBugComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBugzilla_ListBugComments_Inputs*)newInputSet {
		return [[[TMBBugzilla_ListBugComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUser Choreo.
 */
@implementation TMBBugzilla_RetrieveUser_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, password) Your Bugzilla password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the QueryUserID input for this Choreo.
	*(required, string) Enter the user ID for which information is to be returned. Valid input formats include: email address, or numeric user ID.  If searching by numeric ID, authentication is requred.
	 */
	-(void)setQueryUserID:(NSString*)QueryUserID {
		[super setInput:@"QueryUserID" toValue:QueryUserID];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) Your Bugzilla username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUser Choreo.
 */
@implementation TMBBugzilla_RetrieveUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Bugzilla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve user info.
 */
@implementation TMBBugzilla_RetrieveUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBugzilla_RetrieveUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bugzilla/RetrieveUser"] autorelease];
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
		TMBBugzilla_RetrieveUser_ResultSet *results = [[[TMBBugzilla_RetrieveUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBugzilla_RetrieveUser_Inputs*)newInputSet {
		return [[[TMBBugzilla_RetrieveUser_Inputs alloc] init] autorelease];
	}
@end
	
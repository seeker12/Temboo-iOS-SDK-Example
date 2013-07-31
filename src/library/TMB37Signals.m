/*!
 * @TMB37Signals.m
 *
 * Execute Choreographies from the Temboo 37Signals bundle.
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

#import "TMB37Signals.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateEntry_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) The date the entry ends, in YYYY-MM-DD format. This is the same as StartDate for one-day entries.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project in which to create the new entry.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the ResponsibleParty input for this Choreo.
	*(optional, any) The user ID or company ID (preceded by a “c”, as in "c1234") to assign the entry to. Applies only to "Milestone" entry types.
	 */
	-(void)setResponsibleParty:(NSString*)ResponsibleParty {
		[super setInput:@"ResponsibleParty" toValue:ResponsibleParty];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) The date the entry starts, in YYYY-MM-DD format.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title for the calendar entry to create.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) The type of calendar entry to create, either "Milestone" or "CalendarEvent" (the default).
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new calendar entry in a specified project.
 */
@implementation TMB_37Signals_Basecamp_CreateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_CreateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/CreateEntry"] autorelease];
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
		TMB_37Signals_Basecamp_CreateEntry_ResultSet *results = [[[TMB_37Signals_Basecamp_CreateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_CreateEntry_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_CreateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UncompleteEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_UncompleteEntry_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, integer) The ID for the calendar entry to mark as uncompleted.
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project with the calendar entry to mark as uncompleted.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UncompleteEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_UncompleteEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Marks a specific calendar entry as uncompleted.
 */
@implementation TMB_37Signals_Basecamp_UncompleteEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_UncompleteEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/UncompleteEntry"] autorelease];
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
		TMB_37Signals_Basecamp_UncompleteEntry_ResultSet *results = [[[TMB_37Signals_Basecamp_UncompleteEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UncompleteEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_UncompleteEntry_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_UncompleteEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ProjectCounts Choreo.
 */
@implementation TMB_37Signals_Basecamp_ProjectCounts_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ProjectCounts Choreo.
 */
@implementation TMB_37Signals_Basecamp_ProjectCounts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a count of all projects sorted by project status.
 */
@implementation TMB_37Signals_Basecamp_ProjectCounts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_ProjectCounts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/ProjectCounts"] autorelease];
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
		TMB_37Signals_Basecamp_ProjectCounts_ResultSet *results = [[[TMB_37Signals_Basecamp_ProjectCounts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ProjectCounts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_ProjectCounts_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_ProjectCounts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetList_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, integer) The ID for the To-Do list to return.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a single To-do list specified by its ID.
 */
@implementation TMB_37Signals_Basecamp_GetList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetList"] autorelease];
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
		TMB_37Signals_Basecamp_GetList_ResultSet *results = [[[TMB_37Signals_Basecamp_GetList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetList_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPeopleWithinProject Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetPeopleWithinProject_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectId input for this Choreo.
	*(required, integer) The ID for the project associated with the people you want to retrieve.
	 */
	-(void)setProjectId:(NSString*)ProjectId {
		[super setInput:@"ProjectId" toValue:ProjectId];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPeopleWithinProject Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetPeopleWithinProject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all people that have access to a specified project.
 */
@implementation TMB_37Signals_Basecamp_GetPeopleWithinProject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetPeopleWithinProject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetPeopleWithinProject"] autorelease];
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
		TMB_37Signals_Basecamp_GetPeopleWithinProject_ResultSet *results = [[[TMB_37Signals_Basecamp_GetPeopleWithinProject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPeopleWithinProject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetPeopleWithinProject_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetPeopleWithinProject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetListsInProject Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetListsInProject_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Filter input for this Choreo.
	*(optional, string) Specify “pending” to return To-Dos with uncompleted items, or “finished” to return To-Dos with no uncompleted items. Defaults to all lists.
	 */
	-(void)setFilter:(NSString*)Filter {
		[super setInput:@"Filter" toValue:Filter];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project that contains the To-Dos to retrieve.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListsInProject Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetListsInProject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of To-do records that are in the given project.
 */
@implementation TMB_37Signals_Basecamp_GetListsInProject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetListsInProject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetListsInProject"] autorelease];
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
		TMB_37Signals_Basecamp_GetListsInProject_ResultSet *results = [[[TMB_37Signals_Basecamp_GetListsInProject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetListsInProject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetListsInProject_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetListsInProject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_UpdateItem_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Content input for this Choreo.
	*(required, string) The text of the updated item.
	 */
	-(void)setContent:(NSString*)Content {
		[super setInput:@"Content" toValue:Content];
	}

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(required, integer) The ID for the item to update.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponsibleParty input for this Choreo.
	*(optional, integer) The user ID or company ID  (preceded by a “c”, as in "c1234") to re-assign the item to when updated. Defaults to unassigned If left blank.
	 */
	-(void)setResponsibleParty:(NSString*)ResponsibleParty {
		[super setInput:@"ResponsibleParty" toValue:ResponsibleParty];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_UpdateItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No structured response is returned from Basecamp for new item requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new item for a specified To-do list.
 */
@implementation TMB_37Signals_Basecamp_UpdateItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_UpdateItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/UpdateItem"] autorelease];
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
		TMB_37Signals_Basecamp_UpdateItem_ResultSet *results = [[[TMB_37Signals_Basecamp_UpdateItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_UpdateItem_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_UpdateItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetProjects Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetProjects_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetProjects Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetProjects_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves active, inactive, and archived projects.
 */
@implementation TMB_37Signals_Basecamp_GetProjects

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetProjects Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetProjects"] autorelease];
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
		TMB_37Signals_Basecamp_GetProjects_ResultSet *results = [[[TMB_37Signals_Basecamp_GetProjects_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetProjects Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetProjects_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetProjects_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UncompleteItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_UncompleteItem_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(required, integer) The ID of the item to mark as complete.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UncompleteItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_UncompleteItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* There is no structrued response from uncomplete item requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Marks a single, specified item in a To-do list as incomplete.
 */
@implementation TMB_37Signals_Basecamp_UncompleteItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_UncompleteItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/UncompleteItem"] autorelease];
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
		TMB_37Signals_Basecamp_UncompleteItem_ResultSet *results = [[[TMB_37Signals_Basecamp_UncompleteItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UncompleteItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_UncompleteItem_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_UncompleteItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreatePeople Choreo.
 */
@implementation TMB_37Signals_Highrise_CreatePeople_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Highrise account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Background input for this Choreo.
	*(optional, string) Corresponds to the background field in Highrise
	 */
	-(void)setBackground:(NSString*)Background {
		[super setInput:@"Background" toValue:Background];
	}

	/*!
	 * Set the value of the CompanyName input for this Choreo.
	*(optional, string) Corresponds to the company name field in Highrise.
	 */
	-(void)setCompanyName:(NSString*)CompanyName {
		[super setInput:@"CompanyName" toValue:CompanyName];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(optional, string) Corresponds to the email address field in Highrise.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(required, string) Corresponds to the first name field in Highrise.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the HomePhone input for this Choreo.
	*(optional, string) Corresponds to the home phone field in Highrise.
	 */
	-(void)setHomePhone:(NSString*)HomePhone {
		[super setInput:@"HomePhone" toValue:HomePhone];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(optional, string) Corresponds to the last name field in Highrise.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) Corresponds to the title field in Highrise.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Highrise account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorkPhone input for this Choreo.
	*(optional, string) Corresponds to the work phone field in Highrise.
	 */
	-(void)setWorkPhone:(NSString*)WorkPhone {
		[super setInput:@"WorkPhone" toValue:WorkPhone];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePeople Choreo.
 */
@implementation TMB_37Signals_Highrise_CreatePeople_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Highrise.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new contact record in your Highrise CRM.
 */
@implementation TMB_37Signals_Highrise_CreatePeople

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Highrise_CreatePeople Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Highrise/CreatePeople"] autorelease];
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
		TMB_37Signals_Highrise_CreatePeople_ResultSet *results = [[[TMB_37Signals_Highrise_CreatePeople_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreatePeople Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Highrise_CreatePeople_Inputs*)newInputSet {
		return [[[TMB_37Signals_Highrise_CreatePeople_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_DeleteEntry_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, integer) The ID for the calendar entry to delete.
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project from which to delete the calendar entry.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_DeleteEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Basecamp returns no content for delete entry requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specific calendar entry in a project you specify.
 */
@implementation TMB_37Signals_Basecamp_DeleteEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_DeleteEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/DeleteEntry"] autorelease];
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
		TMB_37Signals_Basecamp_DeleteEntry_ResultSet *results = [[[TMB_37Signals_Basecamp_DeleteEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_DeleteEntry_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_DeleteEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateProject Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateProject_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password. You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectName input for this Choreo.
	*(required, string) The name for the project you want to create.
	 */
	-(void)setProjectName:(NSString*)ProjectName {
		[super setInput:@"ProjectName" toValue:ProjectName];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateProject Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateProject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Basecamp. Note that a successful request returns a null result in this output variable.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new Basecamp project.
 */
@implementation TMB_37Signals_Basecamp_CreateProject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_CreateProject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/CreateProject"] autorelease];
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
		TMB_37Signals_Basecamp_CreateProject_ResultSet *results = [[[TMB_37Signals_Basecamp_CreateProject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateProject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_CreateProject_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_CreateProject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllEvents Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllEvents_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project from which to retrieve all calendar events.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllEvents Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all calendar events from a specified project.
 */
@implementation TMB_37Signals_Basecamp_GetAllEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetAllEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetAllEvents"] autorelease];
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
		TMB_37Signals_Basecamp_GetAllEvents_ResultSet *results = [[[TMB_37Signals_Basecamp_GetAllEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetAllEvents_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetAllEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateList Choreo.
 */
@implementation TMB_37Signals_Basecamp_UpdateList_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The new description for the list.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, integer) The ID for the list to update.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the MilestoneID input for this Choreo.
	*(optional, integer) The ID of an existing milestone to add to the To-Do list.
	 */
	-(void)setMilestoneID:(NSString*)MilestoneID {
		[super setInput:@"MilestoneID" toValue:MilestoneID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) The new name for the list.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateList Choreo.
 */
@implementation TMB_37Signals_Basecamp_UpdateList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No response is returned from Basecamp for update requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified To-do list record 
 */
@implementation TMB_37Signals_Basecamp_UpdateList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_UpdateList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/UpdateList"] autorelease];
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
		TMB_37Signals_Basecamp_UpdateList_ResultSet *results = [[[TMB_37Signals_Basecamp_UpdateList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_UpdateList_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_UpdateList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateMessage Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateMessage_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, string) The body of the message you're creating.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectId input for this Choreo.
	*(required, integer) The ID of the project that the message will be created under.
	 */
	-(void)setProjectId:(NSString*)ProjectId {
		[super setInput:@"ProjectId" toValue:ProjectId];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the message you'e creating.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateMessage Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateMessage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Basecamp. Note that a successful request returns a null result in this output variable.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new message under a specified project.
 */
@implementation TMB_37Signals_Basecamp_CreateMessage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_CreateMessage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/CreateMessage"] autorelease];
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
		TMB_37Signals_Basecamp_CreateMessage_ResultSet *results = [[[TMB_37Signals_Basecamp_CreateMessage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateMessage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_CreateMessage_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_CreateMessage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllLists Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllLists_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponsibleParty input for this Choreo.
	*(optional, integer) The user ID or company ID  (preceded by a “c”, as in "c1234") the To-Do lists are assigned to. Defaults to unassigned To-Dos If left blank.
	 */
	-(void)setResponsibleParty:(NSString*)ResponsibleParty {
		[super setInput:@"ResponsibleParty" toValue:ResponsibleParty];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllLists Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllLists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all To-do lists assigned to a specified user or company.
 */
@implementation TMB_37Signals_Basecamp_GetAllLists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetAllLists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetAllLists"] autorelease];
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
		TMB_37Signals_Basecamp_GetAllLists_ResultSet *results = [[[TMB_37Signals_Basecamp_GetAllLists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllLists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetAllLists_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetAllLists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetItem_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(required, integer) The ID of the item to return.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a single, specified item in a To-do list.
 */
@implementation TMB_37Signals_Basecamp_GetItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetItem"] autorelease];
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
		TMB_37Signals_Basecamp_GetItem_ResultSet *results = [[[TMB_37Signals_Basecamp_GetItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetItem_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CompleteItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_CompleteItem_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(required, integer) The ID of the item to mark as complete.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompleteItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_CompleteItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* There is no structrued response from complete item requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Marks a single, specified item in a To-do list as complete.
 */
@implementation TMB_37Signals_Basecamp_CompleteItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_CompleteItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/CompleteItem"] autorelease];
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
		TMB_37Signals_Basecamp_CompleteItem_ResultSet *results = [[[TMB_37Signals_Basecamp_CompleteItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompleteItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_CompleteItem_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_CompleteItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CurrentPerson Choreo.
 */
@implementation TMB_37Signals_Basecamp_CurrentPerson_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CurrentPerson Choreo.
 */
@implementation TMB_37Signals_Basecamp_CurrentPerson_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information on the person who's credentials are specified.
 */
@implementation TMB_37Signals_Basecamp_CurrentPerson

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_CurrentPerson Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/CurrentPerson"] autorelease];
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
		TMB_37Signals_Basecamp_CurrentPerson_ResultSet *results = [[[TMB_37Signals_Basecamp_CurrentPerson_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CurrentPerson Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_CurrentPerson_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_CurrentPerson_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllMilestones Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllMilestones_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project from which to retrieve all milestones.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllMilestones Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllMilestones_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all milestones for a specified project.
 */
@implementation TMB_37Signals_Basecamp_GetAllMilestones

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetAllMilestones Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetAllMilestones"] autorelease];
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
		TMB_37Signals_Basecamp_GetAllMilestones_ResultSet *results = [[[TMB_37Signals_Basecamp_GetAllMilestones_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllMilestones Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetAllMilestones_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetAllMilestones_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteList Choreo.
 */
@implementation TMB_37Signals_Basecamp_DeleteList_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, integer) The ID for the To-Do list to delete.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteList Choreo.
 */
@implementation TMB_37Signals_Basecamp_DeleteList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No structured response is returned for delete list requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified To-do list from a project
 */
@implementation TMB_37Signals_Basecamp_DeleteList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_DeleteList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/DeleteList"] autorelease];
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
		TMB_37Signals_Basecamp_DeleteList_ResultSet *results = [[[TMB_37Signals_Basecamp_DeleteList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_DeleteList_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_DeleteList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllPeople Choreo.
 */
@implementation TMB_37Signals_Highrise_ListAllPeople_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Highrise account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Highrise account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllPeople Choreo.
 */
@implementation TMB_37Signals_Highrise_ListAllPeople_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Highrise.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves contacts from your Highrise CRM.
 */
@implementation TMB_37Signals_Highrise_ListAllPeople

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Highrise_ListAllPeople Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Highrise/ListAllPeople"] autorelease];
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
		TMB_37Signals_Highrise_ListAllPeople_ResultSet *results = [[[TMB_37Signals_Highrise_ListAllPeople_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllPeople Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Highrise_ListAllPeople_Inputs*)newInputSet {
		return [[[TMB_37Signals_Highrise_ListAllPeople_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetEntry_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, integer) The ID for the calendar entry to retrieve.
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project from which to retrieve the calendar entry.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a single calendar entry in a specified project.
 */
@implementation TMB_37Signals_Basecamp_GetEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetEntry"] autorelease];
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
		TMB_37Signals_Basecamp_GetEntry_ResultSet *results = [[[TMB_37Signals_Basecamp_GetEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetEntry_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMessages Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetMessages_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project associated with the messages you want to retrieve.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMessages Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetMessages_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of messages associated with a specified project.
 */
@implementation TMB_37Signals_Basecamp_GetMessages

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetMessages Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetMessages"] autorelease];
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
		TMB_37Signals_Basecamp_GetMessages_ResultSet *results = [[[TMB_37Signals_Basecamp_GetMessages_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMessages Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetMessages_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetMessages_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePeople Choreo.
 */
@implementation TMB_37Signals_Highrise_DeletePeople_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Highrise account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ContactID input for this Choreo.
	*(required, string) The ID number of the contact you want to delete. This is used to contruct the URL for the request.
	 */
	-(void)setContactID:(NSString*)ContactID {
		[super setInput:@"ContactID" toValue:ContactID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Highrise account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePeople Choreo.
 */
@implementation TMB_37Signals_Highrise_DeletePeople_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Highrise. The delete people API method returns no XML, so this variable will contain no data.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified contact from your Highrise CRM.
 */
@implementation TMB_37Signals_Highrise_DeletePeople

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Highrise_DeletePeople Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Highrise/DeletePeople"] autorelease];
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
		TMB_37Signals_Highrise_DeletePeople_ResultSet *results = [[[TMB_37Signals_Highrise_DeletePeople_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePeople Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Highrise_DeletePeople_Inputs*)newInputSet {
		return [[[TMB_37Signals_Highrise_DeletePeople_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_UpdateEntry_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) The new end date for the updated entry, in the format YYYY-MM-DD.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, integer) The ID for the calendar entry to update.
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID of the project with the calendar entry to update.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the ResponsibleParty input for this Choreo.
	*(optional, any) The user ID or company ID (preceded by a “c”, as in "c1234") to reassign the entry to. Applies only to "Milestone" entry types.
	 */
	-(void)setResponsibleParty:(NSString*)ResponsibleParty {
		[super setInput:@"ResponsibleParty" toValue:ResponsibleParty];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) The new start date for the updated entry, in the format YYYY-MM-DD.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The new title for the updated entry.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The new type for the updated entry, either "CalendarEvent" (the default) or "Milestone".
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_UpdateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "TemplateOutput" output from an execution of this Choreo.
	 * @return - NSString* The request created from the input template.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTemplateOutput {
		return [super getOutputByName:@"TemplateOutput"];
	}
	
@end

/*!
 * Updates a calendar event or milestone in a project you specify. 
 */
@implementation TMB_37Signals_Basecamp_UpdateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_UpdateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/UpdateEntry"] autorelease];
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
		TMB_37Signals_Basecamp_UpdateEntry_ResultSet *results = [[[TMB_37Signals_Basecamp_UpdateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_UpdateEntry_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_UpdateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchPeople Choreo.
 */
@implementation TMB_37Signals_Highrise_SearchPeople_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Highrise account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) Allows you to search by the city field in Highrise.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) Allows you to search by the country field in Highrise.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(optional, string) Allows you to search by the email address field in Highrise.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(optional, string) Allows you to search by the phone field in Highrise.
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Allows you to search by the state field in Highrise.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Highrise account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, string) Allows you to search by the ZIP field in Highrise.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchPeople Choreo.
 */
@implementation TMB_37Signals_Highrise_SearchPeople_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Highrise.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lets you search your Highrise CRM by specifying an email search criteria.
 */
@implementation TMB_37Signals_Highrise_SearchPeople

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Highrise_SearchPeople Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Highrise/SearchPeople"] autorelease];
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
		TMB_37Signals_Highrise_SearchPeople_ResultSet *results = [[[TMB_37Signals_Highrise_SearchPeople_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchPeople Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Highrise_SearchPeople_Inputs*)newInputSet {
		return [[[TMB_37Signals_Highrise_SearchPeople_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReorderItems Choreo.
 */
@implementation TMB_37Signals_Basecamp_ReorderItems_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the FirstItemID input for this Choreo.
	*(required, integer) The ID number for the first item in the list.
	 */
	-(void)setFirstItemID:(NSString*)FirstItemID {
		[super setInput:@"FirstItemID" toValue:FirstItemID];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, integer) The ID for the To-do list the items of which you're reordering.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SecondItemID input for this Choreo.
	*(optional, integer) The ID number for the second item in the list.
	 */
	-(void)setSecondItemID:(NSString*)SecondItemID {
		[super setInput:@"SecondItemID" toValue:SecondItemID];
	}

	/*!
	 * Set the value of the ThirdItemID input for this Choreo.
	*(optional, integer) The ID number for the third item in the list.
	 */
	-(void)setThirdItemID:(NSString*)ThirdItemID {
		[super setInput:@"ThirdItemID" toValue:ThirdItemID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReorderItems Choreo.
 */
@implementation TMB_37Signals_Basecamp_ReorderItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No response is returned from Basecamp for reorder items requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Reorders the items in a specified To-do list.
 */
@implementation TMB_37Signals_Basecamp_ReorderItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_ReorderItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/ReorderItems"] autorelease];
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
		TMB_37Signals_Basecamp_ReorderItems_ResultSet *results = [[[TMB_37Signals_Basecamp_ReorderItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReorderItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_ReorderItems_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_ReorderItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateItem_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Content input for this Choreo.
	*(required, string) The text of the item to create.
	 */
	-(void)setContent:(NSString*)Content {
		[super setInput:@"Content" toValue:Content];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, integer) The ID for the list in which to create the new item.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponsibleParty input for this Choreo.
	*(optional, integer) The user ID or company ID  (preceded by a “c”, as in "c1234") to assign the item to. Defaults to unassigned If left blank.
	 */
	-(void)setResponsibleParty:(NSString*)ResponsibleParty {
		[super setInput:@"ResponsibleParty" toValue:ResponsibleParty];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No structured response is returned from Basecamp for new item requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new item for a specified To-do list.
 */
@implementation TMB_37Signals_Basecamp_CreateItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_CreateItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/CreateItem"] autorelease];
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
		TMB_37Signals_Basecamp_CreateItem_ResultSet *results = [[[TMB_37Signals_Basecamp_CreateItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_CreateItem_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_CreateItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPeopleAcrossProjects Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetPeopleAcrossProjects_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPeopleAcrossProjects Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetPeopleAcrossProjects_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all people that the logged in user has permission to see.
 */
@implementation TMB_37Signals_Basecamp_GetPeopleAcrossProjects

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetPeopleAcrossProjects Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetPeopleAcrossProjects"] autorelease];
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
		TMB_37Signals_Basecamp_GetPeopleAcrossProjects_ResultSet *results = [[[TMB_37Signals_Basecamp_GetPeopleAcrossProjects_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPeopleAcrossProjects Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetPeopleAcrossProjects_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetPeopleAcrossProjects_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFiles Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetFiles_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project that contains the attachments to retrieve.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFiles Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetFiles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of files (attachments) in a specified project.
 */
@implementation TMB_37Signals_Basecamp_GetFiles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetFiles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetFiles"] autorelease];
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
		TMB_37Signals_Basecamp_GetFiles_ResultSet *results = [[[TMB_37Signals_Basecamp_GetFiles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFiles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetFiles_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetFiles_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_DeleteItem_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(required, integer) The ID for the list item to delete.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteItem Choreo.
 */
@implementation TMB_37Signals_Basecamp_DeleteItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No structured response is returned for delete item requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified item from a To-do list.
 */
@implementation TMB_37Signals_Basecamp_DeleteItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_DeleteItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/DeleteItem"] autorelease];
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
		TMB_37Signals_Basecamp_DeleteItem_ResultSet *results = [[[TMB_37Signals_Basecamp_DeleteItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_DeleteItem_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_DeleteItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllEntries Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllEntries_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project from which to retrieve all calendar entries.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllEntries Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllEntries_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all calendar entries from a specified project.
 */
@implementation TMB_37Signals_Basecamp_GetAllEntries

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetAllEntries Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetAllEntries"] autorelease];
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
		TMB_37Signals_Basecamp_GetAllEntries_ResultSet *results = [[[TMB_37Signals_Basecamp_GetAllEntries_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllEntries Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetAllEntries_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetAllEntries_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReorderLists Choreo.
 */
@implementation TMB_37Signals_Basecamp_ReorderLists_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the FirstListID input for this Choreo.
	*(required, integer) The ID number for the project's first To-Do list.
	 */
	-(void)setFirstListID:(NSString*)FirstListID {
		[super setInput:@"FirstListID" toValue:FirstListID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project associated with the to-do lists that you are reordering.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the SecondListID input for this Choreo.
	*(optional, integer) The ID number for the project's second To-Do list.
	 */
	-(void)setSecondListID:(NSString*)SecondListID {
		[super setInput:@"SecondListID" toValue:SecondListID];
	}

	/*!
	 * Set the value of the ThirdListID input for this Choreo.
	*(optional, integer) The ID number for the project's third To-Do list.
	 */
	-(void)setThirdListID:(NSString*)ThirdListID {
		[super setInput:@"ThirdListID" toValue:ThirdListID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReorderLists Choreo.
 */
@implementation TMB_37Signals_Basecamp_ReorderLists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No response is returned from Basecamp for update requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to reorder To-do lists in a specified project.
 */
@implementation TMB_37Signals_Basecamp_ReorderLists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_ReorderLists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/ReorderLists"] autorelease];
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
		TMB_37Signals_Basecamp_ReorderLists_ResultSet *results = [[[TMB_37Signals_Basecamp_ReorderLists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReorderLists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_ReorderLists_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_ReorderLists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllListItems Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllListItems_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, integer) The ID of the list for which you're returning items.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllListItems Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetAllListItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all items in a specified To-do list.
 */
@implementation TMB_37Signals_Basecamp_GetAllListItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetAllListItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetAllListItems"] autorelease];
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
		TMB_37Signals_Basecamp_GetAllListItems_ResultSet *results = [[[TMB_37Signals_Basecamp_GetAllListItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllListItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetAllListItems_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetAllListItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetProject Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetProject_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectId input for this Choreo.
	*(required, integer) The ID for the project you want to retrieve.
	 */
	-(void)setProjectId:(NSString*)ProjectId {
		[super setInput:@"ProjectId" toValue:ProjectId];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Basecamp username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetProject Choreo.
 */
@implementation TMB_37Signals_Basecamp_GetProject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an individual project using a project id that you specify.
 */
@implementation TMB_37Signals_Basecamp_GetProject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_GetProject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/GetProject"] autorelease];
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
		TMB_37Signals_Basecamp_GetProject_ResultSet *results = [[[TMB_37Signals_Basecamp_GetProject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetProject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_GetProject_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_GetProject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CompleteEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_CompleteEntry_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, integer) The ID for the calendar entry to mark as completed.
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project with the calendar entry to mark as completed.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompleteEntry Choreo.
 */
@implementation TMB_37Signals_Basecamp_CompleteEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Basecamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Marks a specific calendar entry as completed.
 */
@implementation TMB_37Signals_Basecamp_CompleteEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_CompleteEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/CompleteEntry"] autorelease];
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
		TMB_37Signals_Basecamp_CompleteEntry_ResultSet *results = [[[TMB_37Signals_Basecamp_CompleteEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompleteEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_CompleteEntry_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_CompleteEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateList Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateList_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A valid Basecamp account name. This is the first part of the account's URL.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The description of the list to create.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the MilestoneID input for this Choreo.
	*(optional, integer) The ID of an existing milestone to include with the new list.
	 */
	-(void)setMilestoneID:(NSString*)MilestoneID {
		[super setInput:@"MilestoneID" toValue:MilestoneID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) The name of the list to create.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProjectID input for this Choreo.
	*(required, integer) The ID for the project in which you're creating the new list.
	 */
	-(void)setProjectID:(NSString*)ProjectID {
		[super setInput:@"ProjectID" toValue:ProjectID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Basecamp account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateList Choreo.
 */
@implementation TMB_37Signals_Basecamp_CreateList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No response is returned from Basecamp for update requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new To-do list for a specified project.
 */
@implementation TMB_37Signals_Basecamp_CreateList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Basecamp_CreateList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Basecamp/CreateList"] autorelease];
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
		TMB_37Signals_Basecamp_CreateList_ResultSet *results = [[[TMB_37Signals_Basecamp_CreateList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Basecamp_CreateList_Inputs*)newInputSet {
		return [[[TMB_37Signals_Basecamp_CreateList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowPeople Choreo.
 */
@implementation TMB_37Signals_Highrise_ShowPeople_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A Highrise account username or API Key.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the ConactID input for this Choreo.
	*(required, integer) The ID of the contact you want to retrieve. This is used to construct the URL for the request.
	 */
	-(void)setConactID:(NSString*)ConactID {
		[super setInput:@"ConactID" toValue:ConactID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A Highrise account username or API Key.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowPeople Choreo.
 */
@implementation TMB_37Signals_Highrise_ShowPeople_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Highrise.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves contacts from your Highrise CRM.
 */
@implementation TMB_37Signals_Highrise_ShowPeople

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMB_37Signals_Highrise_ShowPeople Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/37Signals/Highrise/ShowPeople"] autorelease];
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
		TMB_37Signals_Highrise_ShowPeople_ResultSet *results = [[[TMB_37Signals_Highrise_ShowPeople_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowPeople Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMB_37Signals_Highrise_ShowPeople_Inputs*)newInputSet {
		return [[[TMB_37Signals_Highrise_ShowPeople_Inputs alloc] init] autorelease];
	}
@end
	
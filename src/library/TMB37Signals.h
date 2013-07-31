/*!
 * @header Temboo iOS SDK 37Signals classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMB_37Signals.Basecamp.CreateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setResponsibleParty:(NSString*)ResponsibleParty;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTitle:(NSString*)Title;
	-(void)setType:(NSString*)Type;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new calendar entry in a specified project.
 */
@interface TMB_37Signals_Basecamp_CreateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_CreateEntry_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_CreateEntry Choreo */


/*! group TMB_37Signals.Basecamp.UncompleteEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UncompleteEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_UncompleteEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setEntryID:(NSString*)EntryID;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UncompleteEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_UncompleteEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Marks a specific calendar entry as uncompleted.
 */
@interface TMB_37Signals_Basecamp_UncompleteEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_UncompleteEntry_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_UncompleteEntry Choreo */


/*! group TMB_37Signals.Basecamp.ProjectCounts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ProjectCounts Choreo.
 */
@interface TMB_37Signals_Basecamp_ProjectCounts_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ProjectCounts Choreo.
 */
@interface TMB_37Signals_Basecamp_ProjectCounts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a count of all projects sorted by project status.
 */
@interface TMB_37Signals_Basecamp_ProjectCounts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_ProjectCounts_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_ProjectCounts Choreo */


/*! group TMB_37Signals.Basecamp.GetList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@interface TMB_37Signals_Basecamp_GetList_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setListID:(NSString*)ListID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@interface TMB_37Signals_Basecamp_GetList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a single To-do list specified by its ID.
 */
@interface TMB_37Signals_Basecamp_GetList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetList_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetList Choreo */


/*! group TMB_37Signals.Basecamp.GetPeopleWithinProject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPeopleWithinProject Choreo.
 */
@interface TMB_37Signals_Basecamp_GetPeopleWithinProject_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectId:(NSString*)ProjectId;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPeopleWithinProject Choreo.
 */
@interface TMB_37Signals_Basecamp_GetPeopleWithinProject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all people that have access to a specified project.
 */
@interface TMB_37Signals_Basecamp_GetPeopleWithinProject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetPeopleWithinProject_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetPeopleWithinProject Choreo */


/*! group TMB_37Signals.Basecamp.GetListsInProject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetListsInProject Choreo.
 */
@interface TMB_37Signals_Basecamp_GetListsInProject_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setFilter:(NSString*)Filter;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListsInProject Choreo.
 */
@interface TMB_37Signals_Basecamp_GetListsInProject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of To-do records that are in the given project.
 */
@interface TMB_37Signals_Basecamp_GetListsInProject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetListsInProject_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetListsInProject Choreo */


/*! group TMB_37Signals.Basecamp.UpdateItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateItem Choreo.
 */
@interface TMB_37Signals_Basecamp_UpdateItem_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setContent:(NSString*)Content;
	-(void)setItemID:(NSString*)ItemID;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponsibleParty:(NSString*)ResponsibleParty;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateItem Choreo.
 */
@interface TMB_37Signals_Basecamp_UpdateItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new item for a specified To-do list.
 */
@interface TMB_37Signals_Basecamp_UpdateItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_UpdateItem_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_UpdateItem Choreo */


/*! group TMB_37Signals.Basecamp.GetProjects Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetProjects Choreo.
 */
@interface TMB_37Signals_Basecamp_GetProjects_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetProjects Choreo.
 */
@interface TMB_37Signals_Basecamp_GetProjects_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves active, inactive, and archived projects.
 */
@interface TMB_37Signals_Basecamp_GetProjects : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetProjects_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetProjects Choreo */


/*! group TMB_37Signals.Basecamp.UncompleteItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UncompleteItem Choreo.
 */
@interface TMB_37Signals_Basecamp_UncompleteItem_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setItemID:(NSString*)ItemID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UncompleteItem Choreo.
 */
@interface TMB_37Signals_Basecamp_UncompleteItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Marks a single, specified item in a To-do list as incomplete.
 */
@interface TMB_37Signals_Basecamp_UncompleteItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_UncompleteItem_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_UncompleteItem Choreo */


/*! group TMB_37Signals.Highrise.CreatePeople Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreatePeople Choreo.
 */
@interface TMB_37Signals_Highrise_CreatePeople_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setBackground:(NSString*)Background;
	-(void)setCompanyName:(NSString*)CompanyName;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setHomePhone:(NSString*)HomePhone;
	-(void)setLastName:(NSString*)LastName;
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorkPhone:(NSString*)WorkPhone;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePeople Choreo.
 */
@interface TMB_37Signals_Highrise_CreatePeople_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new contact record in your Highrise CRM.
 */
@interface TMB_37Signals_Highrise_CreatePeople : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Highrise_CreatePeople_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Highrise_CreatePeople Choreo */


/*! group TMB_37Signals.Basecamp.DeleteEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_DeleteEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setEntryID:(NSString*)EntryID;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_DeleteEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specific calendar entry in a project you specify.
 */
@interface TMB_37Signals_Basecamp_DeleteEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_DeleteEntry_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_DeleteEntry Choreo */


/*! group TMB_37Signals.Basecamp.CreateProject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateProject Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateProject_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectName:(NSString*)ProjectName;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateProject Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateProject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new Basecamp project.
 */
@interface TMB_37Signals_Basecamp_CreateProject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_CreateProject_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_CreateProject Choreo */


/*! group TMB_37Signals.Basecamp.GetAllEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllEvents Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllEvents_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllEvents Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all calendar events from a specified project.
 */
@interface TMB_37Signals_Basecamp_GetAllEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetAllEvents_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetAllEvents Choreo */


/*! group TMB_37Signals.Basecamp.UpdateList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateList Choreo.
 */
@interface TMB_37Signals_Basecamp_UpdateList_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setDescription:(NSString*)Description;
	-(void)setListID:(NSString*)ListID;
	-(void)setMilestoneID:(NSString*)MilestoneID;
	-(void)setName:(NSString*)Name;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateList Choreo.
 */
@interface TMB_37Signals_Basecamp_UpdateList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified To-do list record 
 */
@interface TMB_37Signals_Basecamp_UpdateList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_UpdateList_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_UpdateList Choreo */


/*! group TMB_37Signals.Basecamp.CreateMessage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateMessage Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateMessage_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setBody:(NSString*)Body;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectId:(NSString*)ProjectId;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateMessage Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateMessage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new message under a specified project.
 */
@interface TMB_37Signals_Basecamp_CreateMessage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_CreateMessage_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_CreateMessage Choreo */


/*! group TMB_37Signals.Basecamp.GetAllLists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllLists Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllLists_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponsibleParty:(NSString*)ResponsibleParty;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllLists Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllLists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all To-do lists assigned to a specified user or company.
 */
@interface TMB_37Signals_Basecamp_GetAllLists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetAllLists_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetAllLists Choreo */


/*! group TMB_37Signals.Basecamp.GetItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetItem Choreo.
 */
@interface TMB_37Signals_Basecamp_GetItem_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setItemID:(NSString*)ItemID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetItem Choreo.
 */
@interface TMB_37Signals_Basecamp_GetItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a single, specified item in a To-do list.
 */
@interface TMB_37Signals_Basecamp_GetItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetItem_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetItem Choreo */


/*! group TMB_37Signals.Basecamp.CompleteItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompleteItem Choreo.
 */
@interface TMB_37Signals_Basecamp_CompleteItem_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setItemID:(NSString*)ItemID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompleteItem Choreo.
 */
@interface TMB_37Signals_Basecamp_CompleteItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Marks a single, specified item in a To-do list as complete.
 */
@interface TMB_37Signals_Basecamp_CompleteItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_CompleteItem_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_CompleteItem Choreo */


/*! group TMB_37Signals.Basecamp.CurrentPerson Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CurrentPerson Choreo.
 */
@interface TMB_37Signals_Basecamp_CurrentPerson_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CurrentPerson Choreo.
 */
@interface TMB_37Signals_Basecamp_CurrentPerson_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information on the person who's credentials are specified.
 */
@interface TMB_37Signals_Basecamp_CurrentPerson : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_CurrentPerson_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_CurrentPerson Choreo */


/*! group TMB_37Signals.Basecamp.GetAllMilestones Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllMilestones Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllMilestones_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllMilestones Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllMilestones_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all milestones for a specified project.
 */
@interface TMB_37Signals_Basecamp_GetAllMilestones : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetAllMilestones_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetAllMilestones Choreo */


/*! group TMB_37Signals.Basecamp.DeleteList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteList Choreo.
 */
@interface TMB_37Signals_Basecamp_DeleteList_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setListID:(NSString*)ListID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteList Choreo.
 */
@interface TMB_37Signals_Basecamp_DeleteList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified To-do list from a project
 */
@interface TMB_37Signals_Basecamp_DeleteList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_DeleteList_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_DeleteList Choreo */


/*! group TMB_37Signals.Highrise.ListAllPeople Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllPeople Choreo.
 */
@interface TMB_37Signals_Highrise_ListAllPeople_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllPeople Choreo.
 */
@interface TMB_37Signals_Highrise_ListAllPeople_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves contacts from your Highrise CRM.
 */
@interface TMB_37Signals_Highrise_ListAllPeople : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Highrise_ListAllPeople_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Highrise_ListAllPeople Choreo */


/*! group TMB_37Signals.Basecamp.GetEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_GetEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setEntryID:(NSString*)EntryID;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_GetEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a single calendar entry in a specified project.
 */
@interface TMB_37Signals_Basecamp_GetEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetEntry_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetEntry Choreo */


/*! group TMB_37Signals.Basecamp.GetMessages Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMessages Choreo.
 */
@interface TMB_37Signals_Basecamp_GetMessages_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMessages Choreo.
 */
@interface TMB_37Signals_Basecamp_GetMessages_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of messages associated with a specified project.
 */
@interface TMB_37Signals_Basecamp_GetMessages : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetMessages_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetMessages Choreo */


/*! group TMB_37Signals.Highrise.DeletePeople Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePeople Choreo.
 */
@interface TMB_37Signals_Highrise_DeletePeople_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setContactID:(NSString*)ContactID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePeople Choreo.
 */
@interface TMB_37Signals_Highrise_DeletePeople_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified contact from your Highrise CRM.
 */
@interface TMB_37Signals_Highrise_DeletePeople : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Highrise_DeletePeople_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Highrise_DeletePeople Choreo */


/*! group TMB_37Signals.Basecamp.UpdateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_UpdateEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setEntryID:(NSString*)EntryID;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setResponsibleParty:(NSString*)ResponsibleParty;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTitle:(NSString*)Title;
	-(void)setType:(NSString*)Type;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_UpdateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getTemplateOutput;	
@end

/*!
 * Updates a calendar event or milestone in a project you specify. 
 */
@interface TMB_37Signals_Basecamp_UpdateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_UpdateEntry_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_UpdateEntry Choreo */


/*! group TMB_37Signals.Highrise.SearchPeople Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchPeople Choreo.
 */
@interface TMB_37Signals_Highrise_SearchPeople_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setCity:(NSString*)City;
	-(void)setCountry:(NSString*)Country;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setPassword:(NSString*)Password;
	-(void)setPhone:(NSString*)Phone;
	-(void)setState:(NSString*)State;
	-(void)setUsername:(NSString*)Username;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchPeople Choreo.
 */
@interface TMB_37Signals_Highrise_SearchPeople_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lets you search your Highrise CRM by specifying an email search criteria.
 */
@interface TMB_37Signals_Highrise_SearchPeople : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Highrise_SearchPeople_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Highrise_SearchPeople Choreo */


/*! group TMB_37Signals.Basecamp.ReorderItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReorderItems Choreo.
 */
@interface TMB_37Signals_Basecamp_ReorderItems_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setFirstItemID:(NSString*)FirstItemID;
	-(void)setListID:(NSString*)ListID;
	-(void)setPassword:(NSString*)Password;
	-(void)setSecondItemID:(NSString*)SecondItemID;
	-(void)setThirdItemID:(NSString*)ThirdItemID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReorderItems Choreo.
 */
@interface TMB_37Signals_Basecamp_ReorderItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Reorders the items in a specified To-do list.
 */
@interface TMB_37Signals_Basecamp_ReorderItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_ReorderItems_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_ReorderItems Choreo */


/*! group TMB_37Signals.Basecamp.CreateItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateItem Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateItem_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setContent:(NSString*)Content;
	-(void)setListID:(NSString*)ListID;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponsibleParty:(NSString*)ResponsibleParty;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateItem Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new item for a specified To-do list.
 */
@interface TMB_37Signals_Basecamp_CreateItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_CreateItem_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_CreateItem Choreo */


/*! group TMB_37Signals.Basecamp.GetPeopleAcrossProjects Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPeopleAcrossProjects Choreo.
 */
@interface TMB_37Signals_Basecamp_GetPeopleAcrossProjects_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPeopleAcrossProjects Choreo.
 */
@interface TMB_37Signals_Basecamp_GetPeopleAcrossProjects_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all people that the logged in user has permission to see.
 */
@interface TMB_37Signals_Basecamp_GetPeopleAcrossProjects : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetPeopleAcrossProjects_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetPeopleAcrossProjects Choreo */


/*! group TMB_37Signals.Basecamp.GetFiles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFiles Choreo.
 */
@interface TMB_37Signals_Basecamp_GetFiles_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFiles Choreo.
 */
@interface TMB_37Signals_Basecamp_GetFiles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of files (attachments) in a specified project.
 */
@interface TMB_37Signals_Basecamp_GetFiles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetFiles_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetFiles Choreo */


/*! group TMB_37Signals.Basecamp.DeleteItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteItem Choreo.
 */
@interface TMB_37Signals_Basecamp_DeleteItem_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setItemID:(NSString*)ItemID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteItem Choreo.
 */
@interface TMB_37Signals_Basecamp_DeleteItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified item from a To-do list.
 */
@interface TMB_37Signals_Basecamp_DeleteItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_DeleteItem_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_DeleteItem Choreo */


/*! group TMB_37Signals.Basecamp.GetAllEntries Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllEntries Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllEntries_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllEntries Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllEntries_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all calendar entries from a specified project.
 */
@interface TMB_37Signals_Basecamp_GetAllEntries : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetAllEntries_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetAllEntries Choreo */


/*! group TMB_37Signals.Basecamp.ReorderLists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReorderLists Choreo.
 */
@interface TMB_37Signals_Basecamp_ReorderLists_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setFirstListID:(NSString*)FirstListID;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setSecondListID:(NSString*)SecondListID;
	-(void)setThirdListID:(NSString*)ThirdListID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReorderLists Choreo.
 */
@interface TMB_37Signals_Basecamp_ReorderLists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to reorder To-do lists in a specified project.
 */
@interface TMB_37Signals_Basecamp_ReorderLists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_ReorderLists_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_ReorderLists Choreo */


/*! group TMB_37Signals.Basecamp.GetAllListItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllListItems Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllListItems_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setListID:(NSString*)ListID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllListItems Choreo.
 */
@interface TMB_37Signals_Basecamp_GetAllListItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all items in a specified To-do list.
 */
@interface TMB_37Signals_Basecamp_GetAllListItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetAllListItems_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetAllListItems Choreo */


/*! group TMB_37Signals.Basecamp.GetProject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetProject Choreo.
 */
@interface TMB_37Signals_Basecamp_GetProject_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectId:(NSString*)ProjectId;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetProject Choreo.
 */
@interface TMB_37Signals_Basecamp_GetProject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an individual project using a project id that you specify.
 */
@interface TMB_37Signals_Basecamp_GetProject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_GetProject_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_GetProject Choreo */


/*! group TMB_37Signals.Basecamp.CompleteEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompleteEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_CompleteEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setEntryID:(NSString*)EntryID;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompleteEntry Choreo.
 */
@interface TMB_37Signals_Basecamp_CompleteEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Marks a specific calendar entry as completed.
 */
@interface TMB_37Signals_Basecamp_CompleteEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_CompleteEntry_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_CompleteEntry Choreo */


/*! group TMB_37Signals.Basecamp.CreateList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateList Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateList_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setDescription:(NSString*)Description;
	-(void)setMilestoneID:(NSString*)MilestoneID;
	-(void)setName:(NSString*)Name;
	-(void)setPassword:(NSString*)Password;
	-(void)setProjectID:(NSString*)ProjectID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateList Choreo.
 */
@interface TMB_37Signals_Basecamp_CreateList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new To-do list for a specified project.
 */
@interface TMB_37Signals_Basecamp_CreateList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Basecamp_CreateList_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Basecamp_CreateList Choreo */


/*! group TMB_37Signals.Highrise.ShowPeople Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowPeople Choreo.
 */
@interface TMB_37Signals_Highrise_ShowPeople_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setConactID:(NSString*)ConactID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowPeople Choreo.
 */
@interface TMB_37Signals_Highrise_ShowPeople_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves contacts from your Highrise CRM.
 */
@interface TMB_37Signals_Highrise_ShowPeople : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_37Signals_Highrise_ShowPeople_Inputs*)newInputSet;
@end

/*! group TMB_37Signals.Highrise_ShowPeople Choreo */

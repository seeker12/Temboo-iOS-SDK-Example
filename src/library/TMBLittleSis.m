/*!
 * @TMBLittleSis.m
 *
 * Execute Choreographies from the Temboo LittleSis bundle.
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

#import "TMBLittleSis.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetSubOrganizations Choreo.
 */
@implementation TMBLittleSis_Entity_GetSubOrganizations_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The ID of the organization.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSubOrganizations Choreo.
 */
@implementation TMBLittleSis_Entity_GetSubOrganizations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of suborganizations of a given organization.
 */
@implementation TMBLittleSis_Entity_GetSubOrganizations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetSubOrganizations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetSubOrganizations"] autorelease];
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
		TMBLittleSis_Entity_GetSubOrganizations_ResultSet *results = [[[TMBLittleSis_Entity_GetSubOrganizations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSubOrganizations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetSubOrganizations_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetSubOrganizations_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLeadershipByPerson Choreo.
 */
@implementation TMBLittleSis_Entity_GetLeadershipByPerson_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Current input for this Choreo.
	*(optional, integer) Set to 1 to limit the relationships returned to only past relationships. Set to 0 to limit relationships returned to only current relationships. Defaults to all.
	 */
	-(void)setCurrent:(NSString*)Current {
		[super setInput:@"Current" toValue:Current];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The ID of the person.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Limits results to organizations of the specified type, e.g. "PublicCompany."
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLeadershipByPerson Choreo.
 */
@implementation TMBLittleSis_Entity_GetLeadershipByPerson_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of organizations of which a given person is an executive or board member.
 */
@implementation TMBLittleSis_Entity_GetLeadershipByPerson

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetLeadershipByPerson Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetLeadershipByPerson"] autorelease];
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
		TMBLittleSis_Entity_GetLeadershipByPerson_ResultSet *results = [[[TMBLittleSis_Entity_GetLeadershipByPerson_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLeadershipByPerson Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetLeadershipByPerson_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetLeadershipByPerson_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRelationships Choreo.
 */
@implementation TMBLittleSis_Relationship_GetRelationships_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Details input for this Choreo.
	*(optional, string) Indicate "details" to retrieve detailed information associated with this record, including fields associated with the specific relationship type. Otherwise, only a basic record will be returned.
	 */
	-(void)setDetails:(NSString*)Details {
		[super setInput:@"Details" toValue:Details];
	}

	/*!
	 * Set the value of the RelationshipID input for this Choreo.
	*(required, integer) The ID of the relationship record to be returned.
	 */
	-(void)setRelationshipID:(NSString*)RelationshipID {
		[super setInput:@"RelationshipID" toValue:RelationshipID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRelationships Choreo.
 */
@implementation TMBLittleSis_Relationship_GetRelationships_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a specific relationship documented in LittleSis according to its Relationship ID.
 */
@implementation TMBLittleSis_Relationship_GetRelationships

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Relationship_GetRelationships Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Relationship/GetRelationships"] autorelease];
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
		TMBLittleSis_Relationship_GetRelationships_ResultSet *results = [[[TMBLittleSis_Relationship_GetRelationships_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRelationships Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Relationship_GetRelationships_Inputs*)newInputSet {
		return [[[TMBLittleSis_Relationship_GetRelationships_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@implementation TMBLittleSis_List_GetList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Entities input for this Choreo.
	*(optional, string) Indicate "entities" to retrieve records of the entities that belong to the list. Otherwise, only a basic record about the list will be returned.
	 */
	-(void)setEntities:(NSString*)Entities {
		[super setInput:@"Entities" toValue:Entities];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, integer) The ID of the list record to be returned.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Nnumber of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TypeID input for this Choreo.
	*(optional, integer) When the Entities parameter is activated, you can specify type IDs limiting the entities returned to those having the specified types (as a comma-delimited list).
	 */
	-(void)setTypeID:(NSString*)TypeID {
		[super setInput:@"TypeID" toValue:TypeID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@implementation TMBLittleSis_List_GetList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a List in LittleSis according to its ID.
 */
@implementation TMBLittleSis_List_GetList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_List_GetList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/List/GetList"] autorelease];
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
		TMBLittleSis_List_GetList_ResultSet *results = [[[TMBLittleSis_List_GetList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_List_GetList_Inputs*)newInputSet {
		return [[[TMBLittleSis_List_GetList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetChainsByEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetChainsByEntity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CategoryID input for this Choreo.
	*(optional, integer) Limit the relationships to specific categories by specifying the category number.
	 */
	-(void)setCategoryID:(NSString*)CategoryID {
		[super setInput:@"CategoryID" toValue:CategoryID];
	}

	/*!
	 * Set the value of the EntityIDs input for this Choreo.
	*(required, integer) The EntityIDs of the two entities for which a relationship chain is to be returned, separated by a semicolon (e.g. 14629;2 ).
	 */
	-(void)setEntityIDs:(NSString*)EntityIDs {
		[super setInput:@"EntityIDs" toValue:EntityIDs];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, string) Specifies which of the found chain to expand in detail. Default is 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetChainsByEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetChainsByEntity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a chain of connections between two Entities (person or organization) in LittleSis.
 */
@implementation TMBLittleSis_Entity_GetChainsByEntity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetChainsByEntity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetChainsByEntity"] autorelease];
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
		TMBLittleSis_Entity_GetChainsByEntity_ResultSet *results = [[[TMBLittleSis_Entity_GetChainsByEntity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetChainsByEntity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetChainsByEntity_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetChainsByEntity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Categories Choreo.
 */
@implementation TMBLittleSis_Entity_Categories_Inputs

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from LittleSis.org. Acceptable inputs: xml or json. Defautls to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Categories Choreo.
 */
@implementation TMBLittleSis_Entity_Categories_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all the Relationships possible among people and organizations in LittleSis.
 */
@implementation TMBLittleSis_Entity_Categories

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_Categories Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/Categories"] autorelease];
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
		TMBLittleSis_Entity_Categories_ResultSet *results = [[[TMBLittleSis_Entity_Categories_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Categories Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_Categories_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_Categories_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEntitiesWithRelationship Choreo.
 */
@implementation TMBLittleSis_Entity_GetEntitiesWithRelationship_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CategoryIDs input for this Choreo.
	*(optional, string) Comma delimited list of category IDs of the categories to which the resulting Entities should belong.
	 */
	-(void)setCategoryIDs:(NSString*)CategoryIDs {
		[super setInput:@"CategoryIDs" toValue:CategoryIDs];
	}

	/*!
	 * Set the value of the Current input for this Choreo.
	*(optional, integer) Set to 1 to limit the relationships returned to only past relationships. Set to 0 to limit relationships returned to only current relationships. Defaults to all.
	 */
	-(void)setCurrent:(NSString*)Current {
		[super setInput:@"Current" toValue:Current];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The ID of the person or organization fro which a record is to be returned.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, integer) Specifies what order the given entity must have in the relationship.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Defaults to sorting by entity, which returns a list of relationships grouped by related entity. Specify another sort order for the results. Acceptable inputs: category or relationship.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEntitiesWithRelationship Choreo.
 */
@implementation TMBLittleSis_Entity_GetEntitiesWithRelationship_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of Entities (person or organization) to which a known relationship exists in LittleSis for any Entity.
 */
@implementation TMBLittleSis_Entity_GetEntitiesWithRelationship

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetEntitiesWithRelationship Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetEntitiesWithRelationship"] autorelease];
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
		TMBLittleSis_Entity_GetEntitiesWithRelationship_ResultSet *results = [[[TMBLittleSis_Entity_GetEntitiesWithRelationship_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEntitiesWithRelationship Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetEntitiesWithRelationship_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetEntitiesWithRelationship_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRelationshipsByEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetRelationshipsByEntity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CategoryIDs input for this Choreo.
	*(optional, string) Comma delimited list of category IDs the resulting Relationships must have.
	 */
	-(void)setCategoryIDs:(NSString*)CategoryIDs {
		[super setInput:@"CategoryIDs" toValue:CategoryIDs];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The ID of the person or organization fro which a record is to be returned.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, integer) Specifies what order the given entity must have in the relationship.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRelationshipsByEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetRelationshipsByEntity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of Relationships (to a person or to an organization) of a given Entity known in LittleSis.
 */
@implementation TMBLittleSis_Entity_GetRelationshipsByEntity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetRelationshipsByEntity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetRelationshipsByEntity"] autorelease];
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
		TMBLittleSis_Entity_GetRelationshipsByEntity_ResultSet *results = [[[TMBLittleSis_Entity_GetRelationshipsByEntity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRelationshipsByEntity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetRelationshipsByEntity_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetRelationshipsByEntity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReferences Choreo.
 */
@implementation TMBLittleSis_Reference_GetReferences_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, decimal) The ID of the record for which you want references. This can be either an entity or a relationship ID.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the RecordType input for this Choreo.
	*(required, string) Specify type of record for which you want to obtain references: entity (for a person or an institution record) or relationship (for a relationship record).
	 */
	-(void)setRecordType:(NSString*)RecordType {
		[super setInput:@"RecordType" toValue:RecordType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReferences Choreo.
 */
@implementation TMBLittleSis_Reference_GetReferences_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves references for the data included in any record obtained from LittleSis.
 */
@implementation TMBLittleSis_Reference_GetReferences

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Reference_GetReferences Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Reference/GetReferences"] autorelease];
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
		TMBLittleSis_Reference_GetReferences_ResultSet *results = [[[TMBLittleSis_Reference_GetReferences_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReferences Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Reference_GetReferences_Inputs*)newInputSet {
		return [[[TMBLittleSis_Reference_GetReferences_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEntityByOutsideID Choreo.
 */
@implementation TMBLittleSis_Entity_GetEntityByOutsideID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the IDType input for this Choreo.
	*(required, string) You can search for a record by the IDs of other third-party services. Acceptable inputs: ticker, sec_cik, fec_id, bioguide_id, govtrack_id, crp_id, watchdog_id. See documentation for more information.
	 */
	-(void)setIDType:(NSString*)IDType {
		[super setInput:@"IDType" toValue:IDType];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the record to be returned.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEntityByOutsideID Choreo.
 */
@implementation TMBLittleSis_Entity_GetEntityByOutsideID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the record for an Entity in LittleSis using the ID of a number of third-party organizations such as the SEC or GovTrack.
 */
@implementation TMBLittleSis_Entity_GetEntityByOutsideID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetEntityByOutsideID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetEntityByOutsideID"] autorelease];
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
		TMBLittleSis_Entity_GetEntityByOutsideID_ResultSet *results = [[[TMBLittleSis_Entity_GetEntityByOutsideID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEntityByOutsideID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetEntityByOutsideID_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetEntityByOutsideID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetOneRelationship Choreo.
 */
@implementation TMBLittleSis_Relationship_GetOneRelationship_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityIDs input for this Choreo.
	*(required, string) The IDs of the entities between which you want to find relationships. Format is a semicolon delimited string (e.g. 1026;1)
	 */
	-(void)setEntityIDs:(NSString*)EntityIDs {
		[super setInput:@"EntityIDs" toValue:EntityIDs];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetOneRelationship Choreo.
 */
@implementation TMBLittleSis_Relationship_GetOneRelationship_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about any known relationship between two entities in LittleSis according their IDs.
 */
@implementation TMBLittleSis_Relationship_GetOneRelationship

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Relationship_GetOneRelationship Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Relationship/GetOneRelationship"] autorelease];
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
		TMBLittleSis_Relationship_GetOneRelationship_ResultSet *results = [[[TMBLittleSis_Relationship_GetOneRelationship_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetOneRelationship Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Relationship_GetOneRelationship_Inputs*)newInputSet {
		return [[[TMBLittleSis_Relationship_GetOneRelationship_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBatchRelationships Choreo.
 */
@implementation TMBLittleSis_Relationship_GetBatchRelationships_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Details input for this Choreo.
	*(optional, integer) Indicate 1 to include details for each relationship record returned. Otherwise, only a basic record will be returned.
	 */
	-(void)setDetails:(NSString*)Details {
		[super setInput:@"Details" toValue:Details];
	}

	/*!
	 * Set the value of the RelationshipIDs input for this Choreo.
	*(required, string) The IDs of the relationship records to be returned as a comma delimited string.
	 */
	-(void)setRelationshipIDs:(NSString*)RelationshipIDs {
		[super setInput:@"RelationshipIDs" toValue:RelationshipIDs];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBatchRelationships Choreo.
 */
@implementation TMBLittleSis_Relationship_GetBatchRelationships_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a batch of relationships in LittleSis according to the relationship IDs provided.
 */
@implementation TMBLittleSis_Relationship_GetBatchRelationships

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Relationship_GetBatchRelationships Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Relationship/GetBatchRelationships"] autorelease];
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
		TMBLittleSis_Relationship_GetBatchRelationships_ResultSet *results = [[[TMBLittleSis_Relationship_GetBatchRelationships_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBatchRelationships Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Relationship_GetBatchRelationships_Inputs*)newInputSet {
		return [[[TMBLittleSis_Relationship_GetBatchRelationships_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSearchByKeyword Choreo.
 */
@implementation TMBLittleSis_List_ListSearchByKeyword_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Keywords input for this Choreo.
	*(required, string) Enter search text.
	 */
	-(void)setKeywords:(NSString*)Keywords {
		[super setInput:@"Keywords" toValue:Keywords];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSearchByKeyword Choreo.
 */
@implementation TMBLittleSis_List_ListSearchByKeyword_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the name and description fields of Lists available in LittleSis that match a keyword search.
 */
@implementation TMBLittleSis_List_ListSearchByKeyword

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_List_ListSearchByKeyword Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/List/ListSearchByKeyword"] autorelease];
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
		TMBLittleSis_List_ListSearchByKeyword_ResultSet *results = [[[TMBLittleSis_List_ListSearchByKeyword_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSearchByKeyword Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_List_ListSearchByKeyword_Inputs*)newInputSet {
		return [[[TMBLittleSis_List_ListSearchByKeyword_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EntityTypes Choreo.
 */
@implementation TMBLittleSis_Entity_EntityTypes_Inputs

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from LittleSis.org. Acceptable inputs: xml or json. Defautls to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EntityTypes Choreo.
 */
@implementation TMBLittleSis_Entity_EntityTypes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the types of Entities (people or organizations) in LittleSis, along with TypeIDs.
 */
@implementation TMBLittleSis_Entity_EntityTypes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_EntityTypes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/EntityTypes"] autorelease];
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
		TMBLittleSis_Entity_EntityTypes_ResultSet *results = [[[TMBLittleSis_Entity_EntityTypes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EntityTypes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_EntityTypes_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_EntityTypes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLeadershipByOrganization Choreo.
 */
@implementation TMBLittleSis_Entity_GetLeadershipByOrganization_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Current input for this Choreo.
	*(optional, integer) Set to 1 to limit the relationships returned to only past relationships. Set to 0 to limit relationships returned to only current relationships. Defaults to all.
	 */
	-(void)setCurrent:(NSString*)Current {
		[super setInput:@"Current" toValue:Current];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The ID of the organization.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLeadershipByOrganization Choreo.
 */
@implementation TMBLittleSis_Entity_GetLeadershipByOrganization_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of board members and executives for a given organization.
 */
@implementation TMBLittleSis_Entity_GetLeadershipByOrganization

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetLeadershipByOrganization Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetLeadershipByOrganization"] autorelease];
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
		TMBLittleSis_Entity_GetLeadershipByOrganization_ResultSet *results = [[[TMBLittleSis_Entity_GetLeadershipByOrganization_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLeadershipByOrganization Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetLeadershipByOrganization_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetLeadershipByOrganization_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EntitySearchByKeyword Choreo.
 */
@implementation TMBLittleSis_Entity_EntitySearchByKeyword_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Keywords input for this Choreo.
	*(required, string) Enter search text.
	 */
	-(void)setKeywords:(NSString*)Keywords {
		[super setInput:@"Keywords" toValue:Keywords];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SearchAll input for this Choreo.
	*(optional, integer) Enter 1 to search a record's description and summary fields. When not specified, only the name and aliases fields of each record will be searched.
	 */
	-(void)setSearchAll:(NSString*)SearchAll {
		[super setInput:@"SearchAll" toValue:SearchAll];
	}

	/*!
	 * Set the value of the TypeIDs input for this Choreo.
	*(optional, string) You can specify a TypeIDs value to limit the search results to only those of a given type. Obtain all possible types and type ID's by first running the GetTypes Choreo.
	 */
	-(void)setTypeIDs:(NSString*)TypeIDs {
		[super setInput:@"TypeIDs" toValue:TypeIDs];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EntitySearchByKeyword Choreo.
 */
@implementation TMBLittleSis_Entity_EntitySearchByKeyword_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves Entities (people or organizations) in LittleSis that match a given keyword search.
 */
@implementation TMBLittleSis_Entity_EntitySearchByKeyword

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_EntitySearchByKeyword Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/EntitySearchByKeyword"] autorelease];
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
		TMBLittleSis_Entity_EntitySearchByKeyword_ResultSet *results = [[[TMBLittleSis_Entity_EntitySearchByKeyword_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EntitySearchByKeyword Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_EntitySearchByKeyword_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_EntitySearchByKeyword_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetEntity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Details input for this Choreo.
	*(optional, string) Indicate "details" to retrieve detailed information associated with this record, including aliases. Otherwise, only a basic record will be returned.
	 */
	-(void)setDetails:(NSString*)Details {
		[super setInput:@"Details" toValue:Details];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The EntityID of the person or organization record to be returned.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetEntity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the LittleSis record for a given Entity (person or organization) by its ID.
 */
@implementation TMBLittleSis_Entity_GetEntity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetEntity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetEntity"] autorelease];
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
		TMBLittleSis_Entity_GetEntity_ResultSet *results = [[[TMBLittleSis_Entity_GetEntity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEntity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetEntity_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetEntity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRelationshipReferences Choreo.
 */
@implementation TMBLittleSis_Reference_GetRelationshipReferences_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CategoryID input for this Choreo.
	*(optional, string) Comma delimited list of category IDs.
	 */
	-(void)setCategoryID:(NSString*)CategoryID {
		[super setInput:@"CategoryID" toValue:CategoryID];
	}

	/*!
	 * Set the value of the Current input for this Choreo.
	*(optional, integer) Set to 1 to limit the relationships returned to only past relationships. Set to 0 to limit relationships returned to only current relationships. Defaults to all.
	 */
	-(void)setCurrent:(NSString*)Current {
		[super setInput:@"Current" toValue:Current];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, decimal) The ID of the record for which you want relationship references.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, integer) Specifies what order the given entity must have in the relationship.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Defaults to sorting by entity, which returns a list of relationships grouped by related entity. Specify another sort order for the results. Acceptable inputs: category or relationship.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRelationshipReferences Choreo.
 */
@implementation TMBLittleSis_Reference_GetRelationshipReferences_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of relationships for any entity in LittleSis along with references for the relationship data obtained.
 */
@implementation TMBLittleSis_Reference_GetRelationshipReferences

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Reference_GetRelationshipReferences Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Reference/GetRelationshipReferences"] autorelease];
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
		TMBLittleSis_Reference_GetRelationshipReferences_ResultSet *results = [[[TMBLittleSis_Reference_GetRelationshipReferences_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRelationshipReferences Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Reference_GetRelationshipReferences_Inputs*)newInputSet {
		return [[[TMBLittleSis_Reference_GetRelationshipReferences_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSecondDegreeRelationships Choreo.
 */
@implementation TMBLittleSis_Entity_GetSecondDegreeRelationships_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Category1 input for this Choreo.
	*(optional, string) Comma delimited list of Category IDs. Restricts the categories of Relationships that the given Entity and all first degree Entities returned should be connected through.
	 */
	-(void)setCategory1:(NSString*)Category1 {
		[super setInput:@"Category1" toValue:Category1];
	}

	/*!
	 * Set the value of the Category2 input for this Choreo.
	*(optional, string) Comma delimited list of Category IDs. Restricts the categories of Relationships that the given Entity and all second degree Entities returned should be connected through.
	 */
	-(void)setCategory2:(NSString*)Category2 {
		[super setInput:@"Category2" toValue:Category2];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The ID of the person or organization for which records are to be returned.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120. Defaults to 20.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Order1 input for this Choreo.
	*(optional, integer) Specifies the order of the Entities returned in the first degree Relationship. Acceptable values: 1 or 2. See documentation for more on Relationship order.
	 */
	-(void)setOrder1:(NSString*)Order1 {
		[super setInput:@"Order1" toValue:Order1];
	}

	/*!
	 * Set the value of the Order2 input for this Choreo.
	*(optional, integer) Specifies the order of the first degree Entity in the second degree Relationship. Acceptable values: 1 or 2. See documentation for more on Relationship order.
	 */
	-(void)setOrder2:(NSString*)Order2 {
		[super setInput:@"Order2" toValue:Order2];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSecondDegreeRelationships Choreo.
 */
@implementation TMBLittleSis_Entity_GetSecondDegreeRelationships_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all the Entities (people or organizations) that are two-degrees removed by Relationships from the given Entity.
 */
@implementation TMBLittleSis_Entity_GetSecondDegreeRelationships

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetSecondDegreeRelationships Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetSecondDegreeRelationships"] autorelease];
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
		TMBLittleSis_Entity_GetSecondDegreeRelationships_ResultSet *results = [[[TMBLittleSis_Entity_GetSecondDegreeRelationships_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSecondDegreeRelationships Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetSecondDegreeRelationships_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetSecondDegreeRelationships_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetListsByEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetListsByEntity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The ID of the record to be returned.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListsByEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetListsByEntity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of Lists in LittleSis the given Entity (person or organization) belongs to.
 */
@implementation TMBLittleSis_Entity_GetListsByEntity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetListsByEntity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetListsByEntity"] autorelease];
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
		TMBLittleSis_Entity_GetListsByEntity_ResultSet *results = [[[TMBLittleSis_Entity_GetListsByEntity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetListsByEntity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetListsByEntity_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetListsByEntity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAliasesByEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetAliasesByEntity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, integer) The ID of the Entity (person or organization) for which aliases are to be retrieved.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAliasesByEntity Choreo.
 */
@implementation TMBLittleSis_Entity_GetAliasesByEntity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the aliases associated with each LittleSis Entity (person or organization).
 */
@implementation TMBLittleSis_Entity_GetAliasesByEntity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetAliasesByEntity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetAliasesByEntity"] autorelease];
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
		TMBLittleSis_Entity_GetAliasesByEntity_ResultSet *results = [[[TMBLittleSis_Entity_GetAliasesByEntity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAliasesByEntity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetAliasesByEntity_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetAliasesByEntity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBatchEntities Choreo.
 */
@implementation TMBLittleSis_Entity_GetBatchEntities_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from LittleSis.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Details input for this Choreo.
	*(optional, integer) Indicate 1 to retrieve detailed information associated with each record retrieved Otherwise, only a basic record will be returned.
	 */
	-(void)setDetails:(NSString*)Details {
		[super setInput:@"Details" toValue:Details];
	}

	/*!
	 * Set the value of the EntityIDs input for this Choreo.
	*(required, string) A comma delimited string of the IDs of the Entities to retrieve.
	 */
	-(void)setEntityIDs:(NSString*)EntityIDs {
		[super setInput:@"EntityIDs" toValue:EntityIDs];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBatchEntities Choreo.
 */
@implementation TMBLittleSis_Entity_GetBatchEntities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LittleSis.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the LittleSis record for a given Entity (person or organization) by its ID.
 */
@implementation TMBLittleSis_Entity_GetBatchEntities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLittleSis_Entity_GetBatchEntities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LittleSis/Entity/GetBatchEntities"] autorelease];
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
		TMBLittleSis_Entity_GetBatchEntities_ResultSet *results = [[[TMBLittleSis_Entity_GetBatchEntities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBatchEntities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLittleSis_Entity_GetBatchEntities_Inputs*)newInputSet {
		return [[[TMBLittleSis_Entity_GetBatchEntities_Inputs alloc] init] autorelease];
	}
@end
	
/*!
 * @header Temboo iOS SDK LittleSis classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBLittleSis.Entity.GetSubOrganizations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSubOrganizations Choreo.
 */
@interface TMBLittleSis_Entity_GetSubOrganizations_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSubOrganizations Choreo.
 */
@interface TMBLittleSis_Entity_GetSubOrganizations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of suborganizations of a given organization.
 */
@interface TMBLittleSis_Entity_GetSubOrganizations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetSubOrganizations_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetSubOrganizations Choreo */


/*! group TMBLittleSis.Entity.GetLeadershipByPerson Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLeadershipByPerson Choreo.
 */
@interface TMBLittleSis_Entity_GetLeadershipByPerson_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCurrent:(NSString*)Current;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLeadershipByPerson Choreo.
 */
@interface TMBLittleSis_Entity_GetLeadershipByPerson_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of organizations of which a given person is an executive or board member.
 */
@interface TMBLittleSis_Entity_GetLeadershipByPerson : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetLeadershipByPerson_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetLeadershipByPerson Choreo */


/*! group TMBLittleSis.Relationship.GetRelationships Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRelationships Choreo.
 */
@interface TMBLittleSis_Relationship_GetRelationships_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDetails:(NSString*)Details;
	-(void)setRelationshipID:(NSString*)RelationshipID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRelationships Choreo.
 */
@interface TMBLittleSis_Relationship_GetRelationships_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a specific relationship documented in LittleSis according to its Relationship ID.
 */
@interface TMBLittleSis_Relationship_GetRelationships : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Relationship_GetRelationships_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Relationship_GetRelationships Choreo */


/*! group TMBLittleSis.List.GetList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@interface TMBLittleSis_List_GetList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntities:(NSString*)Entities;
	-(void)setListID:(NSString*)ListID;
	-(void)setNumber:(NSString*)Number;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTypeID:(NSString*)TypeID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@interface TMBLittleSis_List_GetList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a List in LittleSis according to its ID.
 */
@interface TMBLittleSis_List_GetList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_List_GetList_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.List_GetList Choreo */


/*! group TMBLittleSis.Entity.GetChainsByEntity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetChainsByEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetChainsByEntity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCategoryID:(NSString*)CategoryID;
	-(void)setEntityIDs:(NSString*)EntityIDs;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetChainsByEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetChainsByEntity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a chain of connections between two Entities (person or organization) in LittleSis.
 */
@interface TMBLittleSis_Entity_GetChainsByEntity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetChainsByEntity_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetChainsByEntity Choreo */


/*! group TMBLittleSis.Entity.Categories Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Categories Choreo.
 */
@interface TMBLittleSis_Entity_Categories_Inputs : TMBChoreographyInputSet
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Categories Choreo.
 */
@interface TMBLittleSis_Entity_Categories_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all the Relationships possible among people and organizations in LittleSis.
 */
@interface TMBLittleSis_Entity_Categories : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_Categories_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_Categories Choreo */


/*! group TMBLittleSis.Entity.GetEntitiesWithRelationship Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEntitiesWithRelationship Choreo.
 */
@interface TMBLittleSis_Entity_GetEntitiesWithRelationship_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCategoryIDs:(NSString*)CategoryIDs;
	-(void)setCurrent:(NSString*)Current;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setNumber:(NSString*)Number;
	-(void)setOrder:(NSString*)Order;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortBy:(NSString*)SortBy;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEntitiesWithRelationship Choreo.
 */
@interface TMBLittleSis_Entity_GetEntitiesWithRelationship_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of Entities (person or organization) to which a known relationship exists in LittleSis for any Entity.
 */
@interface TMBLittleSis_Entity_GetEntitiesWithRelationship : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetEntitiesWithRelationship_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetEntitiesWithRelationship Choreo */


/*! group TMBLittleSis.Entity.GetRelationshipsByEntity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRelationshipsByEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetRelationshipsByEntity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCategoryIDs:(NSString*)CategoryIDs;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setNumber:(NSString*)Number;
	-(void)setOrder:(NSString*)Order;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRelationshipsByEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetRelationshipsByEntity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of Relationships (to a person or to an organization) of a given Entity known in LittleSis.
 */
@interface TMBLittleSis_Entity_GetRelationshipsByEntity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetRelationshipsByEntity_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetRelationshipsByEntity Choreo */


/*! group TMBLittleSis.Reference.GetReferences Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReferences Choreo.
 */
@interface TMBLittleSis_Reference_GetReferences_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
	-(void)setRecordType:(NSString*)RecordType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReferences Choreo.
 */
@interface TMBLittleSis_Reference_GetReferences_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves references for the data included in any record obtained from LittleSis.
 */
@interface TMBLittleSis_Reference_GetReferences : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Reference_GetReferences_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Reference_GetReferences Choreo */


/*! group TMBLittleSis.Entity.GetEntityByOutsideID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEntityByOutsideID Choreo.
 */
@interface TMBLittleSis_Entity_GetEntityByOutsideID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIDType:(NSString*)IDType;
	-(void)setID:(NSString*)ID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEntityByOutsideID Choreo.
 */
@interface TMBLittleSis_Entity_GetEntityByOutsideID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the record for an Entity in LittleSis using the ID of a number of third-party organizations such as the SEC or GovTrack.
 */
@interface TMBLittleSis_Entity_GetEntityByOutsideID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetEntityByOutsideID_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetEntityByOutsideID Choreo */


/*! group TMBLittleSis.Relationship.GetOneRelationship Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetOneRelationship Choreo.
 */
@interface TMBLittleSis_Relationship_GetOneRelationship_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityIDs:(NSString*)EntityIDs;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetOneRelationship Choreo.
 */
@interface TMBLittleSis_Relationship_GetOneRelationship_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about any known relationship between two entities in LittleSis according their IDs.
 */
@interface TMBLittleSis_Relationship_GetOneRelationship : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Relationship_GetOneRelationship_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Relationship_GetOneRelationship Choreo */


/*! group TMBLittleSis.Relationship.GetBatchRelationships Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBatchRelationships Choreo.
 */
@interface TMBLittleSis_Relationship_GetBatchRelationships_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDetails:(NSString*)Details;
	-(void)setRelationshipIDs:(NSString*)RelationshipIDs;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBatchRelationships Choreo.
 */
@interface TMBLittleSis_Relationship_GetBatchRelationships_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a batch of relationships in LittleSis according to the relationship IDs provided.
 */
@interface TMBLittleSis_Relationship_GetBatchRelationships : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Relationship_GetBatchRelationships_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Relationship_GetBatchRelationships Choreo */


/*! group TMBLittleSis.List.ListSearchByKeyword Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSearchByKeyword Choreo.
 */
@interface TMBLittleSis_List_ListSearchByKeyword_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setKeywords:(NSString*)Keywords;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSearchByKeyword Choreo.
 */
@interface TMBLittleSis_List_ListSearchByKeyword_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the name and description fields of Lists available in LittleSis that match a keyword search.
 */
@interface TMBLittleSis_List_ListSearchByKeyword : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_List_ListSearchByKeyword_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.List_ListSearchByKeyword Choreo */


/*! group TMBLittleSis.Entity.EntityTypes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EntityTypes Choreo.
 */
@interface TMBLittleSis_Entity_EntityTypes_Inputs : TMBChoreographyInputSet
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EntityTypes Choreo.
 */
@interface TMBLittleSis_Entity_EntityTypes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the types of Entities (people or organizations) in LittleSis, along with TypeIDs.
 */
@interface TMBLittleSis_Entity_EntityTypes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_EntityTypes_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_EntityTypes Choreo */


/*! group TMBLittleSis.Entity.GetLeadershipByOrganization Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLeadershipByOrganization Choreo.
 */
@interface TMBLittleSis_Entity_GetLeadershipByOrganization_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCurrent:(NSString*)Current;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLeadershipByOrganization Choreo.
 */
@interface TMBLittleSis_Entity_GetLeadershipByOrganization_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of board members and executives for a given organization.
 */
@interface TMBLittleSis_Entity_GetLeadershipByOrganization : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetLeadershipByOrganization_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetLeadershipByOrganization Choreo */


/*! group TMBLittleSis.Entity.EntitySearchByKeyword Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EntitySearchByKeyword Choreo.
 */
@interface TMBLittleSis_Entity_EntitySearchByKeyword_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setKeywords:(NSString*)Keywords;
	-(void)setNumber:(NSString*)Number;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSearchAll:(NSString*)SearchAll;
	-(void)setTypeIDs:(NSString*)TypeIDs;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EntitySearchByKeyword Choreo.
 */
@interface TMBLittleSis_Entity_EntitySearchByKeyword_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves Entities (people or organizations) in LittleSis that match a given keyword search.
 */
@interface TMBLittleSis_Entity_EntitySearchByKeyword : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_EntitySearchByKeyword_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_EntitySearchByKeyword Choreo */


/*! group TMBLittleSis.Entity.GetEntity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetEntity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDetails:(NSString*)Details;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetEntity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the LittleSis record for a given Entity (person or organization) by its ID.
 */
@interface TMBLittleSis_Entity_GetEntity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetEntity_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetEntity Choreo */


/*! group TMBLittleSis.Reference.GetRelationshipReferences Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRelationshipReferences Choreo.
 */
@interface TMBLittleSis_Reference_GetRelationshipReferences_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCategoryID:(NSString*)CategoryID;
	-(void)setCurrent:(NSString*)Current;
	-(void)setID:(NSString*)ID;
	-(void)setNumber:(NSString*)Number;
	-(void)setOrder:(NSString*)Order;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortBy:(NSString*)SortBy;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRelationshipReferences Choreo.
 */
@interface TMBLittleSis_Reference_GetRelationshipReferences_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of relationships for any entity in LittleSis along with references for the relationship data obtained.
 */
@interface TMBLittleSis_Reference_GetRelationshipReferences : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Reference_GetRelationshipReferences_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Reference_GetRelationshipReferences Choreo */


/*! group TMBLittleSis.Entity.GetSecondDegreeRelationships Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSecondDegreeRelationships Choreo.
 */
@interface TMBLittleSis_Entity_GetSecondDegreeRelationships_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCategory1:(NSString*)Category1;
	-(void)setCategory2:(NSString*)Category2;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setNumber:(NSString*)Number;
	-(void)setOrder1:(NSString*)Order1;
	-(void)setOrder2:(NSString*)Order2;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSecondDegreeRelationships Choreo.
 */
@interface TMBLittleSis_Entity_GetSecondDegreeRelationships_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all the Entities (people or organizations) that are two-degrees removed by Relationships from the given Entity.
 */
@interface TMBLittleSis_Entity_GetSecondDegreeRelationships : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetSecondDegreeRelationships_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetSecondDegreeRelationships Choreo */


/*! group TMBLittleSis.Entity.GetListsByEntity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetListsByEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetListsByEntity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListsByEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetListsByEntity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of Lists in LittleSis the given Entity (person or organization) belongs to.
 */
@interface TMBLittleSis_Entity_GetListsByEntity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetListsByEntity_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetListsByEntity Choreo */


/*! group TMBLittleSis.Entity.GetAliasesByEntity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAliasesByEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetAliasesByEntity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAliasesByEntity Choreo.
 */
@interface TMBLittleSis_Entity_GetAliasesByEntity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the aliases associated with each LittleSis Entity (person or organization).
 */
@interface TMBLittleSis_Entity_GetAliasesByEntity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetAliasesByEntity_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetAliasesByEntity Choreo */


/*! group TMBLittleSis.Entity.GetBatchEntities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBatchEntities Choreo.
 */
@interface TMBLittleSis_Entity_GetBatchEntities_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDetails:(NSString*)Details;
	-(void)setEntityIDs:(NSString*)EntityIDs;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBatchEntities Choreo.
 */
@interface TMBLittleSis_Entity_GetBatchEntities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the LittleSis record for a given Entity (person or organization) by its ID.
 */
@interface TMBLittleSis_Entity_GetBatchEntities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLittleSis_Entity_GetBatchEntities_Inputs*)newInputSet;
@end

/*! group TMBLittleSis.Entity_GetBatchEntities Choreo */

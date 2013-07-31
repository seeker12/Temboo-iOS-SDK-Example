/*!
 * @header Temboo iOS SDK InfluenceExplorer classes
 *
 * Execute Choreographies from the Temboo InfluenceExplorer bundle.
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

/*! group TMBInfluenceExplorer.LocalBreakdown Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LocalBreakdown Choreo.
 */
@interface TMBInfluenceExplorer_LocalBreakdown_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LocalBreakdown Choreo.
 */
@interface TMBInfluenceExplorer_LocalBreakdown_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a breakdown of how much of the money raised was from contributors in the politician's state versus outside the politician's state.
 */
@interface TMBInfluenceExplorer_LocalBreakdown : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_LocalBreakdown_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_LocalBreakdown Choreo */


/*! group TMBInfluenceExplorer.TopSectors Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopSectors Choreo.
 */
@interface TMBInfluenceExplorer_TopSectors_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopSectors Choreo.
 */
@interface TMBInfluenceExplorer_TopSectors_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the contribution amounts that each sector gave to the politician.
 */
@interface TMBInfluenceExplorer_TopSectors : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_TopSectors_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_TopSectors Choreo */


/*! group TMBInfluenceExplorer.FederalGrants Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FederalGrants Choreo.
 */
@interface TMBInfluenceExplorer_FederalGrants_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAgencyName:(NSString*)AgencyName;
	-(void)setAmount:(NSString*)Amount;
	-(void)setAssistanceType:(NSString*)AssistanceType;
	-(void)setFiscalYear:(NSString*)FiscalYear;
	-(void)setRecipientName:(NSString*)RecipientName;
	-(void)setRecipientState:(NSString*)RecipientState;
	-(void)setRecipientType:(NSString*)RecipientType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FederalGrants Choreo.
 */
@interface TMBInfluenceExplorer_FederalGrants_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about federal grants awarded.
 */
@interface TMBInfluenceExplorer_FederalGrants : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_FederalGrants_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_FederalGrants Choreo */


/*! group TMBInfluenceExplorer.StateFederalBreakdown Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StateFederalBreakdown Choreo.
 */
@interface TMBInfluenceExplorer_StateFederalBreakdown_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StateFederalBreakdown Choreo.
 */
@interface TMBInfluenceExplorer_StateFederalBreakdown_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the portion of contribution given by an individual or organization that went to state versus federal candidates.
 */
@interface TMBInfluenceExplorer_StateFederalBreakdown : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_StateFederalBreakdown_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_StateFederalBreakdown Choreo */


/*! group TMBInfluenceExplorer.TopRecipientPoliticians Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopRecipientPoliticians Choreo.
 */
@interface TMBInfluenceExplorer_TopRecipientPoliticians_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setLimit:(NSString*)Limit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopRecipientPoliticians Choreo.
 */
@interface TMBInfluenceExplorer_TopRecipientPoliticians_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the top politicians to which this individual has given money.
 */
@interface TMBInfluenceExplorer_TopRecipientPoliticians : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_TopRecipientPoliticians_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_TopRecipientPoliticians Choreo */


/*! group TMBInfluenceExplorer.FederalLobbying Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FederalLobbying Choreo.
 */
@interface TMBInfluenceExplorer_FederalLobbying_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAmount:(NSString*)Amount;
	-(void)setClientParentOrganization:(NSString*)ClientParentOrganization;
	-(void)setClientSearch:(NSString*)ClientSearch;
	-(void)setFilingType:(NSString*)FilingType;
	-(void)setLobbyistSearch:(NSString*)LobbyistSearch;
	-(void)setRegistrantSearch:(NSString*)RegistrantSearch;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTransactionID:(NSString*)TransactionID;
	-(void)setTransactionType:(NSString*)TransactionType;
	-(void)setYearFiled:(NSString*)YearFiled;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FederalLobbying Choreo.
 */
@interface TMBInfluenceExplorer_FederalLobbying_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain detailed lobbying information.
 */
@interface TMBInfluenceExplorer_FederalLobbying : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_FederalLobbying_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_FederalLobbying Choreo */


/*! group TMBInfluenceExplorer.SearchByName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByName Choreo.
 */
@interface TMBInfluenceExplorer_SearchByName_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setSearch:(NSString*)Search;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByName Choreo.
 */
@interface TMBInfluenceExplorer_SearchByName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for politicians, individuals, or organizations with the given name. Returns basic information about the the contributions to and from the entity that is specified.
 */
@interface TMBInfluenceExplorer_SearchByName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_SearchByName_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_SearchByName Choreo */


/*! group TMBInfluenceExplorer.TopContributors Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopContributors Choreo.
 */
@interface TMBInfluenceExplorer_TopContributors_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopContributors Choreo.
 */
@interface TMBInfluenceExplorer_TopContributors_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the top contributing organizations for a particular politician, ranked by total dollars given.
 */
@interface TMBInfluenceExplorer_TopContributors : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_TopContributors_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_TopContributors Choreo */


/*! group TMBInfluenceExplorer.IDLookup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the IDLookup Choreo.
 */
@interface TMBInfluenceExplorer_IDLookup_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
	-(void)setNamespace:(NSString*)Namespace;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the IDLookup Choreo.
 */
@interface TMBInfluenceExplorer_IDLookup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Looks up the entity ID based on an ID from a different data set. Currently Influence Explorer provides a mapping from the ID schemes used by Center for Reponsive Politics (CRP) and the National Institute for Money in State Politics (NIMSP).
 */
@interface TMBInfluenceExplorer_IDLookup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_IDLookup_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_IDLookup Choreo */


/*! group TMBInfluenceExplorer.PartyBreakdown Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PartyBreakdown Choreo.
 */
@interface TMBInfluenceExplorer_PartyBreakdown_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setContributorType:(NSString*)ContributorType;
	-(void)setEntityID:(NSString*)EntityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PartyBreakdown Choreo.
 */
@interface TMBInfluenceExplorer_PartyBreakdown_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns how much an individual or organization gave to each party.
 */
@interface TMBInfluenceExplorer_PartyBreakdown : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_PartyBreakdown_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_PartyBreakdown Choreo */


/*! group TMBInfluenceExplorer.ContributorTypeBreakdown Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ContributorTypeBreakdown Choreo.
 */
@interface TMBInfluenceExplorer_ContributorTypeBreakdown_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ContributorTypeBreakdown Choreo.
 */
@interface TMBInfluenceExplorer_ContributorTypeBreakdown_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a breakdown, for a given candidate, of how much of the money raised came from individuals versus organizations (PACs).
 */
@interface TMBInfluenceExplorer_ContributorTypeBreakdown : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_ContributorTypeBreakdown_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_ContributorTypeBreakdown Choreo */


/*! group TMBInfluenceExplorer.EntityOverview Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EntityOverview Choreo.
 */
@interface TMBInfluenceExplorer_EntityOverview_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCycle:(NSString*)Cycle;
	-(void)setEntityID:(NSString*)EntityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EntityOverview Choreo.
 */
@interface TMBInfluenceExplorer_EntityOverview_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns general information about a particular politician, individual, or organization with a given entity id.
 */
@interface TMBInfluenceExplorer_EntityOverview : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_EntityOverview_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_EntityOverview Choreo */


/*! group TMBInfluenceExplorer.TopRecipients Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopRecipients Choreo.
 */
@interface TMBInfluenceExplorer_TopRecipients_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setLimit:(NSString*)Limit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopRecipients Choreo.
 */
@interface TMBInfluenceExplorer_TopRecipients_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the top recipients of money from a specified organization.
 */
@interface TMBInfluenceExplorer_TopRecipients : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_TopRecipients_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_TopRecipients Choreo */


/*! group TMBInfluenceExplorer.CampaignContribution Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CampaignContribution Choreo.
 */
@interface TMBInfluenceExplorer_CampaignContribution_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAmount:(NSString*)Amount;
	-(void)setContributorName:(NSString*)ContributorName;
	-(void)setContributorsByState:(NSString*)ContributorsByState;
	-(void)setCycle:(NSString*)Cycle;
	-(void)setDate:(NSString*)Date;
	-(void)setOrganizationName:(NSString*)OrganizationName;
	-(void)setRecipientName:(NSString*)RecipientName;
	-(void)setRecipientState:(NSString*)RecipientState;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSeat:(NSString*)Seat;
	-(void)setTransactionNamespace:(NSString*)TransactionNamespace;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CampaignContribution Choreo.
 */
@interface TMBInfluenceExplorer_CampaignContribution_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve detailed information on political campaign contributions, filtered by date, contributor, state, employer, campaign, etc.
 */
@interface TMBInfluenceExplorer_CampaignContribution : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_CampaignContribution_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_CampaignContribution Choreo */


/*! group TMBInfluenceExplorer.TopRecipientOrganizations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopRecipientOrganizations Choreo.
 */
@interface TMBInfluenceExplorer_TopRecipientOrganizations_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setLimit:(NSString*)Limit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopRecipientOrganizations Choreo.
 */
@interface TMBInfluenceExplorer_TopRecipientOrganizations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the top organizations to which the specified individual has given money.
 */
@interface TMBInfluenceExplorer_TopRecipientOrganizations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInfluenceExplorer_TopRecipientOrganizations_Inputs*)newInputSet;
@end

/*! group TMBInfluenceExplorer_TopRecipientOrganizations Choreo */

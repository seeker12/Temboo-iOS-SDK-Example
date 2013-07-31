/*!
 * @header Temboo iOS SDK NYTimes classes
 *
 * Execute Choreographies from the Temboo NYTimes bundle.
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

/*! group TMBNYTimes.CampaignFinance.IndependentExpenditures.PresidentialIndependentExpenditures Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PresidentialIndependentExpenditures Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PresidentialIndependentExpenditures Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves 20 of the most recent independent expenditures in support of or opposition to presidential candidates.
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.IndependentExpenditures_PresidentialIndependentExpenditures Choreo */


/*! group TMBNYTimes.TimesNewswire.GetNewsItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNewsItem Choreo.
 */
@interface TMBNYTimes_TimesNewswire_GetNewsItem_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewsItem Choreo.
 */
@interface TMBNYTimes_TimesNewswire_GetNewsItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Queries the Newswire API for a specific news item.
 */
@interface TMBNYTimes_TimesNewswire_GetNewsItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_TimesNewswire_GetNewsItem_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.TimesNewswire_GetNewsItem Choreo */


/*! group TMBNYTimes.CampaignFinance.PresidentialCampaigns.PresidentialStateZipTotals Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PresidentialStateZipTotals Choreo.
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setLocation:(NSString*)Location;
	-(void)setResourceType:(NSString*)ResourceType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PresidentialStateZipTotals Choreo.
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve the total amount of donations aggregated by a specified location (by state and/or zipcode).
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.PresidentialCampaigns_PresidentialStateZipTotals Choreo */


/*! group TMBNYTimes.RealEstate.GetSalesCounts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSalesCounts Choreo.
 */
@interface TMBNYTimes_RealEstate_GetSalesCounts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBedrooms:(NSString*)Bedrooms;
	-(void)setDateRange:(NSString*)DateRange;
	-(void)setGeoExtentLevel:(NSString*)GeoExtentLevel;
	-(void)setGeoExtentValue:(NSString*)GeoExtentValue;
	-(void)setGeoSummaryLevel:(NSString*)GeoSummaryLevel;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSalesCounts Choreo.
 */
@interface TMBNYTimes_RealEstate_GetSalesCounts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves counts of real estate sales from New York Times Web Service.
 */
@interface TMBNYTimes_RealEstate_GetSalesCounts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_RealEstate_GetSalesCounts_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.RealEstate_GetSalesCounts Choreo */


/*! group TMBNYTimes.CampaignFinance.IndependentExpenditures.CommitteeIndependentExpenditures Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeIndependentExpenditures Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setFECID:(NSString*)FECID;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeIndependentExpenditures Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve the 20 most recent independent expenditures by a given committee, also known as "Super PACs."
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.IndependentExpenditures_CommitteeIndependentExpenditures Choreo */


/*! group TMBNYTimes.CampaignFinance.Candidates.CandidateDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CandidateDetails Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setFECID:(NSString*)FECID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CandidateDetails Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain finance details for a Presidential or Congressional candidate.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Candidates_CandidateDetails Choreo */


/*! group TMBNYTimes.CampaignFinance.PresidentialCampaigns.PresidentialDonorInformation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PresidentialDonorInformation Choreo.
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setLastName:(NSString*)LastName;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PresidentialDonorInformation Choreo.
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve details about individual donors, or a summary of donors from a particular location to a presidential election campaign.
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.PresidentialCampaigns_PresidentialDonorInformation Choreo */


/*! group TMBNYTimes.CampaignFinance.Committees.CommitteeFilings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeFilings Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setCommitteeFECID:(NSString*)CommitteeFECID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeFilings Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain a specific Political Action Committee's electronic filings.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeFilings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Committees_CommitteeFilings Choreo */


/*! group TMBNYTimes.MovieReviews.SearchByReviewer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByReviewer Choreo.
 */
@interface TMBNYTimes_MovieReviews_SearchByReviewer_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCriticsPick:(NSString*)CriticsPick;
	-(void)setOffset:(NSString*)Offset;
	-(void)setOrder:(NSString*)Order;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setReviewerName:(NSString*)ReviewerName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByReviewer Choreo.
 */
@interface TMBNYTimes_MovieReviews_SearchByReviewer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves reviews by a specific Times reviewer.
 */
@interface TMBNYTimes_MovieReviews_SearchByReviewer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_MovieReviews_SearchByReviewer_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.MovieReviews_SearchByReviewer Choreo */


/*! group TMBNYTimes.CampaignFinance.IndividualContributors.ContributionsByCandidate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ContributionsByCandidate Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setCandidateFECID:(NSString*)CandidateFECID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ContributionsByCandidate Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve contributions made by individuals to a specific presidential candidate. 
 */
@interface TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.IndividualContributors_ContributionsByCandidate Choreo */


/*! group TMBNYTimes.CampaignFinance.IndividualContributors.ContributionsToPresidentialCandidates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ContributionsToPresidentialCandidates Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setCandidateFECID:(NSString*)CandidateFECID;
	-(void)setLastName:(NSString*)LastName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ContributionsToPresidentialCandidates Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve contributions made by individuals to a specific presidential candidate. 
 */
@interface TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.IndividualContributors_ContributionsToPresidentialCandidates Choreo */


/*! group TMBNYTimes.TimesNewswire.GetRecentNewsItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentNewsItems Choreo.
 */
@interface TMBNYTimes_TimesNewswire_GetRecentNewsItems_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSection:(NSString*)Section;
	-(void)setSource:(NSString*)Source;
	-(void)setTimePeriod:(NSString*)TimePeriod;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentNewsItems Choreo.
 */
@interface TMBNYTimes_TimesNewswire_GetRecentNewsItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves recent news items.
 */
@interface TMBNYTimes_TimesNewswire_GetRecentNewsItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_TimesNewswire_GetRecentNewsItems_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.TimesNewswire_GetRecentNewsItems Choreo */


/*! group TMBNYTimes.CampaignFinance.Committees.CommitteeSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeSearch Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeSearch Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search for a political action committee (PACs) by name, or partial name.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Committees_CommitteeSearch Choreo */


/*! group TMBNYTimes.CampaignFinance.Committees.CommitteeDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeDetails Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setCommitteeFECID:(NSString*)CommitteeFECID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeDetails Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain details about a specific Political Action Committee.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Committees_CommitteeDetails Choreo */


/*! group TMBNYTimes.MostPopular.GetMostViewed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMostViewed Choreo.
 */
@interface TMBNYTimes_MostPopular_GetMostViewed_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSection:(NSString*)Section;
	-(void)setTimePeriod:(NSString*)TimePeriod;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMostViewed Choreo.
 */
@interface TMBNYTimes_MostPopular_GetMostViewed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for the blog posts and articles that are most frequently viewed.
 */
@interface TMBNYTimes_MostPopular_GetMostViewed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_MostPopular_GetMostViewed_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.MostPopular_GetMostViewed Choreo */


/*! group TMBNYTimes.CampaignFinance.Candidates.NewCandidates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the NewCandidates Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_NewCandidates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NewCandidates Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_NewCandidates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves 20 of the most recently added political office candidates.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_NewCandidates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Candidates_NewCandidates_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Candidates_NewCandidates Choreo */


/*! group TMBNYTimes.CampaignFinance.Candidates.CandidateLeadersByCategory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CandidateLeadersByCategory Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setCategory:(NSString*)Category;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CandidateLeadersByCategory Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of the 20 top candidates in terms of contributions received.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Candidates_CandidateLeadersByCategory Choreo */


/*! group TMBNYTimes.CampaignFinance.PresidentialCampaigns.PresidentialCandidateTotals Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PresidentialCandidateTotals Choreo.
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PresidentialCandidateTotals Choreo.
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the total receipts and disbursements for all presidential candidates for a particular campaign cycle.
 */
@interface TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.PresidentialCampaigns_PresidentialCandidateTotals Choreo */


/*! group TMBNYTimes.MovieReviews.GetPicks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPicks Choreo.
 */
@interface TMBNYTimes_MovieReviews_GetPicks_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setOrder:(NSString*)Order;
	-(void)setResourceType:(NSString*)ResourceType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPicks Choreo.
 */
@interface TMBNYTimes_MovieReviews_GetPicks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves lists of reviews and NYT Critics' Picks.
 */
@interface TMBNYTimes_MovieReviews_GetPicks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_MovieReviews_GetPicks_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.MovieReviews_GetPicks Choreo */


/*! group TMBNYTimes.CampaignFinance.Committees.LeadershipPACs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LeadershipPACs Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LeadershipPACs Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of PACs that have been designated by the FEC as "leadership PACs".
 */
@interface TMBNYTimes_CampaignFinance_Committees_LeadershipPACs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Committees_LeadershipPACs Choreo */


/*! group TMBNYTimes.MovieReviews.GetReviewer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReviewer Choreo.
 */
@interface TMBNYTimes_MovieReviews_GetReviewer_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResourceType:(NSString*)ResourceType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReviewer Choreo.
 */
@interface TMBNYTimes_MovieReviews_GetReviewer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves biographical information about reviewers.
 */
@interface TMBNYTimes_MovieReviews_GetReviewer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_MovieReviews_GetReviewer_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.MovieReviews_GetReviewer Choreo */


/*! group TMBNYTimes.EventListings.SearchWithinBoundedBox Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchWithinBoundedBox Choreo.
 */
@interface TMBNYTimes_EventListings_SearchWithinBoundedBox_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDateRange:(NSString*)DateRange;
	-(void)setFilters:(NSString*)Filters;
	-(void)setLimit:(NSString*)Limit;
	-(void)setNortheastLatitude:(NSString*)NortheastLatitude;
	-(void)setNortheastLongitude:(NSString*)NortheastLongitude;
	-(void)setOffset:(NSString*)Offset;
	-(void)setQuery:(NSString*)Query;
	-(void)setRadius:(NSString*)Radius;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
	-(void)setSouthwestLatitude:(NSString*)SouthwestLatitude;
	-(void)setSouthwestLongitude:(NSString*)SouthwestLongitude;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchWithinBoundedBox Choreo.
 */
@interface TMBNYTimes_EventListings_SearchWithinBoundedBox_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to do a spatial search for events within a box bounded by specified northeast and southwest points.
 */
@interface TMBNYTimes_EventListings_SearchWithinBoundedBox : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_EventListings_SearchWithinBoundedBox_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.EventListings_SearchWithinBoundedBox Choreo */


/*! group TMBNYTimes.EventListings.SearchListings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchListings Choreo.
 */
@interface TMBNYTimes_EventListings_SearchListings_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDateRange:(NSString*)DateRange;
	-(void)setFilters:(NSString*)Filters;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOffset:(NSString*)Offset;
	-(void)setQuery:(NSString*)Query;
	-(void)setRadius:(NSString*)Radius;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchListings Choreo.
 */
@interface TMBNYTimes_EventListings_SearchListings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches events by location, filters, or full text search.
 */
@interface TMBNYTimes_EventListings_SearchListings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_EventListings_SearchListings_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.EventListings_SearchListings Choreo */


/*! group TMBNYTimes.ArticleSearch.QueryArticles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the QueryArticles Choreo.
 */
@interface TMBNYTimes_ArticleSearch_QueryArticles_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBeginDate:(NSString*)BeginDate;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setFacets:(NSString*)Facets;
	-(void)setFields:(NSString*)Fields;
	-(void)setOffset:(NSString*)Offset;
	-(void)setQuery:(NSString*)Query;
	-(void)setRank:(NSString*)Rank;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the QueryArticles Choreo.
 */
@interface TMBNYTimes_ArticleSearch_QueryArticles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;



	
@end

/*!
 * Lets you query the Article Search API for New York Times articles.
 */
@interface TMBNYTimes_ArticleSearch_QueryArticles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_ArticleSearch_QueryArticles_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.ArticleSearch_QueryArticles Choreo */


/*! group TMBNYTimes.CampaignFinance.Candidates.CandidateSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CandidateSearch Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setLastName:(NSString*)LastName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CandidateSearch Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search for a Presidential or Congressional candidate by last name and election cycle.
 */
@interface TMBNYTimes_CampaignFinance_Candidates_CandidateSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Candidates_CandidateSearch Choreo */


/*! group TMBNYTimes.RealEstate.GetListingsCounts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetListingsCounts Choreo.
 */
@interface TMBNYTimes_RealEstate_GetListingsCounts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBedrooms:(NSString*)Bedrooms;
	-(void)setDateRange:(NSString*)DateRange;
	-(void)setGeoExtentLevel:(NSString*)GeoExtentLevel;
	-(void)setGeoExtentValue:(NSString*)GeoExtentValue;
	-(void)setGeoSummaryLevel:(NSString*)GeoSummaryLevel;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListingsCounts Choreo.
 */
@interface TMBNYTimes_RealEstate_GetListingsCounts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves counts of real estate listings from New York Times Web Service.
 */
@interface TMBNYTimes_RealEstate_GetListingsCounts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_RealEstate_GetListingsCounts_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.RealEstate_GetListingsCounts Choreo */


/*! group TMBNYTimes.RealEstate.GetSalesPercentiles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSalesPercentiles Choreo.
 */
@interface TMBNYTimes_RealEstate_GetSalesPercentiles_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBedrooms:(NSString*)Bedrooms;
	-(void)setDateRange:(NSString*)DateRange;
	-(void)setGeoExtentLevel:(NSString*)GeoExtentLevel;
	-(void)setGeoExtentValue:(NSString*)GeoExtentValue;
	-(void)setGeoSummaryLevel:(NSString*)GeoSummaryLevel;
	-(void)setPercentile:(NSString*)Percentile;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSalesPercentiles Choreo.
 */
@interface TMBNYTimes_RealEstate_GetSalesPercentiles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves percentiles of real estate sales from New York Times Web Service.
 */
@interface TMBNYTimes_RealEstate_GetSalesPercentiles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_RealEstate_GetSalesPercentiles_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.RealEstate_GetSalesPercentiles Choreo */


/*! group TMBNYTimes.CampaignFinance.ElectronicFilings.GetElectronicFilingFormTypes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetElectronicFilingFormTypes Choreo.
 */
@interface TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetElectronicFilingFormTypes Choreo.
 */
@interface TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain a list of available form types used in FEC filings.
 */
@interface TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.ElectronicFilings_GetElectronicFilingFormTypes Choreo */


/*! group TMBNYTimes.MostPopular.GetMostEmailed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMostEmailed Choreo.
 */
@interface TMBNYTimes_MostPopular_GetMostEmailed_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSection:(NSString*)Section;
	-(void)setTimePeriod:(NSString*)TimePeriod;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMostEmailed Choreo.
 */
@interface TMBNYTimes_MostPopular_GetMostEmailed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for the blog posts and articles that are most frequently emailed.
 */
@interface TMBNYTimes_MostPopular_GetMostEmailed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_MostPopular_GetMostEmailed_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.MostPopular_GetMostEmailed Choreo */


/*! group TMBNYTimes.CampaignFinance.IndependentExpenditures.IndependentExpenditureOnlyCommittees Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the IndependentExpenditureOnlyCommittees Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the IndependentExpenditureOnlyCommittees Choreo.
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves 20 of the most recent committees that have registered as independent expenditure-only (commonly known as "Super PACs").
 */
@interface TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.IndependentExpenditures_IndependentExpenditureOnlyCommittees Choreo */


/*! group TMBNYTimes.CampaignFinance.Committees.CommitteeContributions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeContributions Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setCommitteeFECID:(NSString*)CommitteeFECID;
	-(void)setName:(NSString*)Name;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeContributions Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain contributions made by a Political Action Committee (PAC) in an election cycle.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeContributions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Committees_CommitteeContributions Choreo */


/*! group TMBNYTimes.CampaignFinance.Committees.CommitteeContributionsToCandidate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeContributionsToCandidate Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setCandidateFECID:(NSString*)CandidateFECID;
	-(void)setCommitteeFECID:(NSString*)CommitteeFECID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeContributionsToCandidate Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain contributions made by a Political Action Committee (PAC) to a candidate.
 */
@interface TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Committees_CommitteeContributionsToCandidate Choreo */


/*! group TMBNYTimes.RealEstate.GetListingsPercentiles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetListingsPercentiles Choreo.
 */
@interface TMBNYTimes_RealEstate_GetListingsPercentiles_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBedrooms:(NSString*)Bedrooms;
	-(void)setDateRange:(NSString*)DateRange;
	-(void)setGeoExtentLevel:(NSString*)GeoExtentLevel;
	-(void)setGeoExtentValue:(NSString*)GeoExtentValue;
	-(void)setGeoSummaryLevel:(NSString*)GeoSummaryLevel;
	-(void)setPercentile:(NSString*)Percentile;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListingsPercentiles Choreo.
 */
@interface TMBNYTimes_RealEstate_GetListingsPercentiles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves percentiles of real estate listings from New York Times Web Service.
 */
@interface TMBNYTimes_RealEstate_GetListingsPercentiles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_RealEstate_GetListingsPercentiles_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.RealEstate_GetListingsPercentiles Choreo */


/*! group TMBNYTimes.MovieReviews.SearchByKeyword Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByKeyword Choreo.
 */
@interface TMBNYTimes_MovieReviews_SearchByKeyword_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCriticsPick:(NSString*)CriticsPick;
	-(void)setDVD:(NSString*)DVD;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setOpeningDate:(NSString*)OpeningDate;
	-(void)setOrder:(NSString*)Order;
	-(void)setPublicationDate:(NSString*)PublicationDate;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setReviewer:(NSString*)Reviewer;
	-(void)setThousandBest:(NSString*)ThousandBest;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByKeyword Choreo.
 */
@interface TMBNYTimes_MovieReviews_SearchByKeyword_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches movie reviews by keyword and various filter parameters.
 */
@interface TMBNYTimes_MovieReviews_SearchByKeyword : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_MovieReviews_SearchByKeyword_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.MovieReviews_SearchByKeyword Choreo */


/*! group TMBNYTimes.CampaignFinance.Committees.NewCommittees Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the NewCommittees Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_NewCommittees_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignCycle:(NSString*)CampaignCycle;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NewCommittees Choreo.
 */
@interface TMBNYTimes_CampaignFinance_Committees_NewCommittees_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves 20 of the most recently added committees.
 */
@interface TMBNYTimes_CampaignFinance_Committees_NewCommittees : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_CampaignFinance_Committees_NewCommittees_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.CampaignFinance.Committees_NewCommittees Choreo */


/*! group TMBNYTimes.BestSellers.GetBestSellerHistory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBestSellerHistory Choreo.
 */
@interface TMBNYTimes_BestSellers_GetBestSellerHistory_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAgeGroup:(NSString*)AgeGroup;
	-(void)setAuthor:(NSString*)Author;
	-(void)setContributor:(NSString*)Contributor;
	-(void)setISBN:(NSString*)ISBN;
	-(void)setOffset:(NSString*)Offset;
	-(void)setPrice:(NSString*)Price;
	-(void)setPublisher:(NSString*)Publisher;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setTitle:(NSString*)Title;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBestSellerHistory Choreo.
 */
@interface TMBNYTimes_BestSellers_GetBestSellerHistory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about New York Times best-sellers that match a specified search criteria.
 */
@interface TMBNYTimes_BestSellers_GetBestSellerHistory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_BestSellers_GetBestSellerHistory_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.BestSellers_GetBestSellerHistory Choreo */


/*! group TMBNYTimes.MostPopular.GetMostShared Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMostShared Choreo.
 */
@interface TMBNYTimes_MostPopular_GetMostShared_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSection:(NSString*)Section;
	-(void)setShareTypes:(NSString*)ShareTypes;
	-(void)setTimePeriod:(NSString*)TimePeriod;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMostShared Choreo.
 */
@interface TMBNYTimes_MostPopular_GetMostShared_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for the blog posts and articles that are most frequently shared.
 */
@interface TMBNYTimes_MostPopular_GetMostShared : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_MostPopular_GetMostShared_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.MostPopular_GetMostShared Choreo */


/*! group TMBNYTimes.BestSellers.GetBestSellerList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBestSellerList Choreo.
 */
@interface TMBNYTimes_BestSellers_GetBestSellerList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDate:(NSString*)Date;
	-(void)setListName:(NSString*)ListName;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBestSellerList Choreo.
 */
@interface TMBNYTimes_BestSellers_GetBestSellerList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves data from a New York Times best-seller list for a specified date.
 */
@interface TMBNYTimes_BestSellers_GetBestSellerList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNYTimes_BestSellers_GetBestSellerList_Inputs*)newInputSet;
@end

/*! group TMBNYTimes.BestSellers_GetBestSellerList Choreo */

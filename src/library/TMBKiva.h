/*!
 * @header Temboo iOS SDK Kiva classes
 *
 * Execute Choreographies from the Temboo Kiva bundle.
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

/*! group TMBKiva.Loans.GetLenders Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLenders Choreo.
 */
@interface TMBKiva_Loans_GetLenders_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setLoanID:(NSString*)LoanID;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLenders Choreo.
 */
@interface TMBKiva_Loans_GetLenders_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of public lenders to a loan.
 */
@interface TMBKiva_Loans_GetLenders : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Loans_GetLenders_Inputs*)newInputSet;
@end

/*! group TMBKiva.Loans_GetLenders Choreo */


/*! group TMBKiva.Loans.GetLoanDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLoanDetails Choreo.
 */
@interface TMBKiva_Loans_GetLoanDetails_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setLoanID:(NSString*)LoanID;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoanDetails Choreo.
 */
@interface TMBKiva_Loans_GetLoanDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns detailed information for multiple loans.
 */
@interface TMBKiva_Loans_GetLoanDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Loans_GetLoanDetails_Inputs*)newInputSet;
@end

/*! group TMBKiva.Loans_GetLoanDetails Choreo */


/*! group TMBKiva.Lenders.GetLenderLoans Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLenderLoans Choreo.
 */
@interface TMBKiva_Lenders_GetLenderLoans_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setLenderName:(NSString*)LenderName;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSortBy:(NSString*)SortBy;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLenderLoans Choreo.
 */
@interface TMBKiva_Lenders_GetLenderLoans_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns loans belonging to a particular lender.
 */
@interface TMBKiva_Lenders_GetLenderLoans : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Lenders_GetLenderLoans_Inputs*)newInputSet;
@end

/*! group TMBKiva.Lenders_GetLenderLoans Choreo */


/*! group TMBKiva.Teams.GetTeams Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTeams Choreo.
 */
@interface TMBKiva_Teams_GetTeams_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setTeamID:(NSString*)TeamID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeams Choreo.
 */
@interface TMBKiva_Teams_GetTeams_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns detailed information about one or more lending teams.
 */
@interface TMBKiva_Teams_GetTeams : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Teams_GetTeams_Inputs*)newInputSet;
@end

/*! group TMBKiva.Teams_GetTeams Choreo */


/*! group TMBKiva.Partners.GetPartners Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPartners Choreo.
 */
@interface TMBKiva_Partners_GetPartners_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPartners Choreo.
 */
@interface TMBKiva_Partners_GetPartners_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns detailed listings of all Kiva field partners.
 */
@interface TMBKiva_Partners_GetPartners : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Partners_GetPartners_Inputs*)newInputSet;
@end

/*! group TMBKiva.Partners_GetPartners Choreo */


/*! group TMBKiva.Lenders.GetLenderTeams Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLenderTeams Choreo.
 */
@interface TMBKiva_Lenders_GetLenderTeams_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setLenderName:(NSString*)LenderName;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLenderTeams Choreo.
 */
@interface TMBKiva_Lenders_GetLenderTeams_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns teams that a particular lender is part of.
 */
@interface TMBKiva_Lenders_GetLenderTeams : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Lenders_GetLenderTeams_Inputs*)newInputSet;
@end

/*! group TMBKiva.Lenders_GetLenderTeams Choreo */


/*! group TMBKiva.Loans.GetLoanUpdates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLoanUpdates Choreo.
 */
@interface TMBKiva_Loans_GetLoanUpdates_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setLoanID:(NSString*)LoanID;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoanUpdates Choreo.
 */
@interface TMBKiva_Loans_GetLoanUpdates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns all status updates for a loan, newest first.
 */
@interface TMBKiva_Loans_GetLoanUpdates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Loans_GetLoanUpdates_Inputs*)newInputSet;
@end

/*! group TMBKiva.Loans_GetLoanUpdates Choreo */


/*! group TMBKiva.Lenders.GetNewestLenders Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNewestLenders Choreo.
 */
@interface TMBKiva_Lenders_GetNewestLenders_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewestLenders Choreo.
 */
@interface TMBKiva_Lenders_GetNewestLenders_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns listings for the lenders who have most recently joined Kiva.
 */
@interface TMBKiva_Lenders_GetNewestLenders : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Lenders_GetNewestLenders_Inputs*)newInputSet;
@end

/*! group TMBKiva.Lenders_GetNewestLenders Choreo */


/*! group TMBKiva.Loans.SearchLoans Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchLoans Choreo.
 */
@interface TMBKiva_Loans_SearchLoans_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setGender:(NSString*)Gender;
	-(void)setPage:(NSString*)Page;
	-(void)setPartner:(NSString*)Partner;
	-(void)setQuery:(NSString*)Query;
	-(void)setRegion:(NSString*)Region;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSector:(NSString*)Sector;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setStatus:(NSString*)Status;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchLoans Choreo.
 */
@interface TMBKiva_Loans_SearchLoans_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a keyword search for loan listings by multiple criteria.
 */
@interface TMBKiva_Loans_SearchLoans : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Loans_SearchLoans_Inputs*)newInputSet;
@end

/*! group TMBKiva.Loans_SearchLoans Choreo */


/*! group TMBKiva.Teams.GetTeamLenders Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTeamLenders Choreo.
 */
@interface TMBKiva_Teams_GetTeamLenders_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setTeamID:(NSString*)TeamID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeamLenders Choreo.
 */
@interface TMBKiva_Teams_GetTeamLenders_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of public lenders belonging to a specific team.
 */
@interface TMBKiva_Teams_GetTeamLenders : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Teams_GetTeamLenders_Inputs*)newInputSet;
@end

/*! group TMBKiva.Teams_GetTeamLenders Choreo */


/*! group TMBKiva.Teams.GetTeamByShortname Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTeamByShortname Choreo.
 */
@interface TMBKiva_Teams_GetTeamByShortname_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setTeamShortname:(NSString*)TeamShortname;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeamByShortname Choreo.
 */
@interface TMBKiva_Teams_GetTeamByShortname_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns detailed information about one or more teams, using team shortnames.
 */
@interface TMBKiva_Teams_GetTeamByShortname : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Teams_GetTeamByShortname_Inputs*)newInputSet;
@end

/*! group TMBKiva.Teams_GetTeamByShortname Choreo */


/*! group TMBKiva.Lenders.GetLenderDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLenderDetails Choreo.
 */
@interface TMBKiva_Lenders_GetLenderDetails_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setLenderName:(NSString*)LenderName;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLenderDetails Choreo.
 */
@interface TMBKiva_Lenders_GetLenderDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns details for lenders.
 */
@interface TMBKiva_Lenders_GetLenderDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Lenders_GetLenderDetails_Inputs*)newInputSet;
@end

/*! group TMBKiva.Lenders_GetLenderDetails Choreo */


/*! group TMBKiva.JournalEntries.GetComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetComments Choreo.
 */
@interface TMBKiva_JournalEntries_GetComments_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setJournalID:(NSString*)JournalID;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComments Choreo.
 */
@interface TMBKiva_JournalEntries_GetComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns comments for a specified journal entry.
 */
@interface TMBKiva_JournalEntries_GetComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_JournalEntries_GetComments_Inputs*)newInputSet;
@end

/*! group TMBKiva.JournalEntries_GetComments Choreo */


/*! group TMBKiva.Teams.SearchTeams Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchTeams Choreo.
 */
@interface TMBKiva_Teams_SearchTeams_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setMembershipType:(NSString*)MembershipType;
	-(void)setPage:(NSString*)Page;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSortBy:(NSString*)SortBy;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchTeams Choreo.
 */
@interface TMBKiva_Teams_SearchTeams_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a keyword search of all lending teams using multiple criteria.
 */
@interface TMBKiva_Teams_SearchTeams : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Teams_SearchTeams_Inputs*)newInputSet;
@end

/*! group TMBKiva.Teams_SearchTeams Choreo */


/*! group TMBKiva.Lenders.SearchLenders Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchLenders Choreo.
 */
@interface TMBKiva_Lenders_SearchLenders_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setPage:(NSString*)Page;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSortBy:(NSString*)SortBy;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchLenders Choreo.
 */
@interface TMBKiva_Lenders_SearchLenders_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a keyword search for lenders based on multiple criteria.
 */
@interface TMBKiva_Lenders_SearchLenders : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Lenders_SearchLenders_Inputs*)newInputSet;
@end

/*! group TMBKiva.Lenders_SearchLenders Choreo */


/*! group TMBKiva.JournalEntries.SearchJournalEntries Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchJournalEntries Choreo.
 */
@interface TMBKiva_JournalEntries_SearchJournalEntries_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setPage:(NSString*)Page;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSortBy:(NSString*)SortBy;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchJournalEntries Choreo.
 */
@interface TMBKiva_JournalEntries_SearchJournalEntries_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a keyword search of all journal entries.
 */
@interface TMBKiva_JournalEntries_SearchJournalEntries : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_JournalEntries_SearchJournalEntries_Inputs*)newInputSet;
@end

/*! group TMBKiva.JournalEntries_SearchJournalEntries Choreo */


/*! group TMBKiva.Loans.GetNewestLoans Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNewestLoans Choreo.
 */
@interface TMBKiva_Loans_GetNewestLoans_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewestLoans Choreo.
 */
@interface TMBKiva_Loans_GetNewestLoans_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of the most recent fundraising loans.
 */
@interface TMBKiva_Loans_GetNewestLoans : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Loans_GetNewestLoans_Inputs*)newInputSet;
@end

/*! group TMBKiva.Loans_GetNewestLoans Choreo */


/*! group TMBKiva.Teams.GetTeamLoans Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTeamLoans Choreo.
 */
@interface TMBKiva_Teams_GetTeamLoans_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setTeamID:(NSString*)TeamID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeamLoans Choreo.
 */
@interface TMBKiva_Teams_GetTeamLoans_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns loans belonging to a particular team.
 */
@interface TMBKiva_Teams_GetTeamLoans : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_Teams_GetTeamLoans_Inputs*)newInputSet;
@end

/*! group TMBKiva.Teams_GetTeamLoans Choreo */


/*! group TMBKiva.LendingActions.GetRecentLending Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentLending Choreo.
 */
@interface TMBKiva_LendingActions_GetRecentLending_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentLending Choreo.
 */
@interface TMBKiva_LendingActions_GetRecentLending_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the 100 most recent loans made on Kiva by public lenders.
 */
@interface TMBKiva_LendingActions_GetRecentLending : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKiva_LendingActions_GetRecentLending_Inputs*)newInputSet;
@end

/*! group TMBKiva.LendingActions_GetRecentLending Choreo */

/*!
 * @header Temboo iOS SDK LinkedIn classes
 *
 * Execute Choreographies from the Temboo LinkedIn bundle.
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

/*! group TMBLinkedIn.Jobs.GetSuggestedJobs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSuggestedJobs Choreo.
 */
@interface TMBLinkedIn_Jobs_GetSuggestedJobs_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSuggestedJobs Choreo.
 */
@interface TMBLinkedIn_Jobs_GetSuggestedJobs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a list of job suggestions for the current user.
 */
@interface TMBLinkedIn_Jobs_GetSuggestedJobs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Jobs_GetSuggestedJobs_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Jobs_GetSuggestedJobs Choreo */


/*! group TMBLinkedIn.Companies.GetCompanyProfileByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyProfileByID Choreo.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCompanyID:(NSString*)CompanyID;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyProfileByID Choreo.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a company profile by ID.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Companies_GetCompanyProfileByID_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Companies_GetCompanyProfileByID Choreo */


/*! group TMBLinkedIn.Jobs.SearchJobsByZipcodeAndCountryCode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchJobsByZipcodeAndCountryCode Choreo.
 */
@interface TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCount:(NSString*)Count;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setPostalCode:(NSString*)PostalCode;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSort:(NSString*)Sort;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchJobsByZipcodeAndCountryCode Choreo.
 */
@interface TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve jobs filtered by zipcode (postal code) and country code.
 */
@interface TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Jobs_SearchJobsByZipcodeAndCountryCode Choreo */


/*! group TMBLinkedIn.Jobs.GetJobs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetJobs Choreo.
 */
@interface TMBLinkedIn_Jobs_GetJobs_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setJobID:(NSString*)JobID;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetJobs Choreo.
 */
@interface TMBLinkedIn_Jobs_GetJobs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a listed LinkedIn job.
 */
@interface TMBLinkedIn_Jobs_GetJobs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Jobs_GetJobs_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Jobs_GetJobs Choreo */


/*! group TMBLinkedIn.ShareAndSocialStream.CreateShare Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateShare Choreo.
 */
@interface TMBLinkedIn_ShareAndSocialStream_CreateShare_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setComment:(NSString*)Comment;
	-(void)setDescription:(NSString*)Description;
	-(void)setImageURL:(NSString*)ImageURL;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setTitle:(NSString*)Title;
	-(void)setURL:(NSString*)URL;
	-(void)setVisibility:(NSString*)Visibility;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateShare Choreo.
 */
@interface TMBLinkedIn_ShareAndSocialStream_CreateShare_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to share content on behalf of a LinkedIn member.
 */
@interface TMBLinkedIn_ShareAndSocialStream_CreateShare : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_ShareAndSocialStream_CreateShare_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.ShareAndSocialStream_CreateShare Choreo */


/*! group TMBLinkedIn.PeopleAndConnections.SendMessage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendMessage Choreo.
 */
@interface TMBLinkedIn_PeopleAndConnections_SendMessage_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBody:(NSString*)Body;
	-(void)setRecipients:(NSString*)Recipients;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendMessage Choreo.
 */
@interface TMBLinkedIn_PeopleAndConnections_SendMessage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Sends a message to a connected member given the member's personID.
 */
@interface TMBLinkedIn_PeopleAndConnections_SendMessage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_PeopleAndConnections_SendMessage_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.PeopleAndConnections_SendMessage Choreo */


/*! group TMBLinkedIn.PeopleAndConnections.GetMemberProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMemberProfile Choreo.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetMemberProfile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMemberProfile Choreo.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetMemberProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the standard default profile of the current user.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetMemberProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_PeopleAndConnections_GetMemberProfile_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.PeopleAndConnections_GetMemberProfile Choreo */


/*! group TMBLinkedIn.Jobs.SearchJobsByKeywords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchJobsByKeywords Choreo.
 */
@interface TMBLinkedIn_Jobs_SearchJobsByKeywords_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCount:(NSString*)Count;
	-(void)setKeywords:(NSString*)Keywords;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSort:(NSString*)Sort;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchJobsByKeywords Choreo.
 */
@interface TMBLinkedIn_Jobs_SearchJobsByKeywords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve jobs matching the specified keyword(s).
 */
@interface TMBLinkedIn_Jobs_SearchJobsByKeywords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Jobs_SearchJobsByKeywords_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Jobs_SearchJobsByKeywords Choreo */


/*! group TMBLinkedIn.Jobs.GetBookmarkedJobs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBookmarkedJobs Choreo.
 */
@interface TMBLinkedIn_Jobs_GetBookmarkedJobs_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBookmarkedJobs Choreo.
 */
@interface TMBLinkedIn_Jobs_GetBookmarkedJobs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of bookmarked jobs for the current user.
 */
@interface TMBLinkedIn_Jobs_GetBookmarkedJobs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Jobs_GetBookmarkedJobs_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Jobs_GetBookmarkedJobs Choreo */


/*! group TMBLinkedIn.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBLinkedIn_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
	-(void)setScope:(NSString*)Scope;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBLinkedIn_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;
	-(NSString*)getOAuthTokenSecret;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBLinkedIn_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.OAuth_InitializeOAuth Choreo */


/*! group TMBLinkedIn.ShareAndSocialStream.GetShare Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetShare Choreo.
 */
@interface TMBLinkedIn_ShareAndSocialStream_GetShare_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setUpdateKey:(NSString*)UpdateKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShare Choreo.
 */
@interface TMBLinkedIn_ShareAndSocialStream_GetShare_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a newly created shared item.
 */
@interface TMBLinkedIn_ShareAndSocialStream_GetShare : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_ShareAndSocialStream_GetShare_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.ShareAndSocialStream_GetShare Choreo */


/*! group TMBLinkedIn.PeopleAndConnections.GetUserConnections Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserConnections Choreo.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetUserConnections_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserConnections Choreo.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetUserConnections_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of connections associated with the profile of the current user.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetUserConnections : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_PeopleAndConnections_GetUserConnections_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.PeopleAndConnections_GetUserConnections Choreo */


/*! group TMBLinkedIn.Companies.SuggestedCompaniesToFollow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SuggestedCompaniesToFollow Choreo.
 */
@interface TMBLinkedIn_Companies_SuggestedCompaniesToFollow_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SuggestedCompaniesToFollow Choreo.
 */
@interface TMBLinkedIn_Companies_SuggestedCompaniesToFollow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of suggested companies to be followed by this user.
 */
@interface TMBLinkedIn_Companies_SuggestedCompaniesToFollow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Companies_SuggestedCompaniesToFollow_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Companies_SuggestedCompaniesToFollow Choreo */


/*! group TMBLinkedIn.Companies.GetCompanyProfiles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyProfiles Choreo.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfiles_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCompanies:(NSString*)Companies;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyProfiles Choreo.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfiles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve multiple company profiles using a given list of company IDs or names.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfiles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Companies_GetCompanyProfiles_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Companies_GetCompanyProfiles Choreo */


/*! group TMBLinkedIn.Jobs.BookmarkAJob Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the BookmarkAJob Choreo.
 */
@interface TMBLinkedIn_Jobs_BookmarkAJob_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setJobID:(NSString*)JobID;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BookmarkAJob Choreo.
 */
@interface TMBLinkedIn_Jobs_BookmarkAJob_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Bookmark a job listed on LinkedIn.
 */
@interface TMBLinkedIn_Jobs_BookmarkAJob : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Jobs_BookmarkAJob_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Jobs_BookmarkAJob Choreo */


/*! group TMBLinkedIn.Companies.GetCompanyProfileByEmailDomain Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyProfileByEmailDomain Choreo.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEmailDomain:(NSString*)EmailDomain;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyProfileByEmailDomain Choreo.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a company profile by email domain.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Companies_GetCompanyProfileByEmailDomain Choreo */


/*! group TMBLinkedIn.PeopleAndConnections.GetConnectionsByMemberID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetConnectionsByMemberID Choreo.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMemberID:(NSString*)MemberID;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetConnectionsByMemberID Choreo.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve all connections linked to a  member ID.
 */
@interface TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.PeopleAndConnections_GetConnectionsByMemberID Choreo */


/*! group TMBLinkedIn.Companies.CompaniesFollowed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompaniesFollowed Choreo.
 */
@interface TMBLinkedIn_Companies_CompaniesFollowed_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompaniesFollowed Choreo.
 */
@interface TMBLinkedIn_Companies_CompaniesFollowed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of companies followed by the current user.
 */
@interface TMBLinkedIn_Companies_CompaniesFollowed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Companies_CompaniesFollowed_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Companies_CompaniesFollowed Choreo */


/*! group TMBLinkedIn.Companies.GetCompanyProfileByName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyProfileByName Choreo.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByName_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCompanyName:(NSString*)CompanyName;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyProfileByName Choreo.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a company profile by entering a company's universal-name.
 */
@interface TMBLinkedIn_Companies_GetCompanyProfileByName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Companies_GetCompanyProfileByName_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Companies_GetCompanyProfileByName Choreo */


/*! group TMBLinkedIn.Jobs.DeleteJobBookmark Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteJobBookmark Choreo.
 */
@interface TMBLinkedIn_Jobs_DeleteJobBookmark_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setJobID:(NSString*)JobID;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteJobBookmark Choreo.
 */
@interface TMBLinkedIn_Jobs_DeleteJobBookmark_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a job bookmark by specifying a job ID.
 */
@interface TMBLinkedIn_Jobs_DeleteJobBookmark : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Jobs_DeleteJobBookmark_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Jobs_DeleteJobBookmark Choreo */


/*! group TMBLinkedIn.Jobs.SearchJobsByJobTitle Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchJobsByJobTitle Choreo.
 */
@interface TMBLinkedIn_Jobs_SearchJobsByJobTitle_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCount:(NSString*)Count;
	-(void)setJobTitle:(NSString*)JobTitle;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSort:(NSString*)Sort;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchJobsByJobTitle Choreo.
 */
@interface TMBLinkedIn_Jobs_SearchJobsByJobTitle_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve jobs matching specified job title.
 */
@interface TMBLinkedIn_Jobs_SearchJobsByJobTitle : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_Jobs_SearchJobsByJobTitle_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.Jobs_SearchJobsByJobTitle Choreo */


/*! group TMBLinkedIn.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBLinkedIn_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBLinkedIn_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessTokenSecret;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;	
@end

/*!
 * Completes the OAuth process by retrieving a LinkedIn access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBLinkedIn_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLinkedIn_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBLinkedIn.OAuth_FinalizeOAuth Choreo */

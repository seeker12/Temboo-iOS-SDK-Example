/*!
 * @header Temboo iOS SDK CorpWatch classes
 *
 * Execute Choreographies from the Temboo CorpWatch bundle.
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

/*! group TMBCorpWatch.Search.CompoundSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompoundSearch Choreo.
 */
@interface TMBCorpWatch_Search_CompoundSearch_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAddress:(NSString*)Address;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setIndex:(NSString*)Index;
	-(void)setIndustryCode:(NSString*)IndustryCode;
	-(void)setIndustrySector:(NSString*)IndustrySector;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMatch:(NSString*)Match;
	-(void)setMaxYear:(NSString*)MaxYear;
	-(void)setMinYear:(NSString*)MinYear;
	-(void)setName:(NSString*)Name;
	-(void)setNumChildren:(NSString*)NumChildren;
	-(void)setNumParents:(NSString*)NumParents;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSourceType:(NSString*)SourceType;
	-(void)setSubdivisionCode:(NSString*)SubdivisionCode;
	-(void)setTopParent:(NSString*)TopParent;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompoundSearch Choreo.
 */
@interface TMBCorpWatch_Search_CompoundSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of companies according to several search parameters such as industry, location, date range, company name, etc.
 */
@interface TMBCorpWatch_Search_CompoundSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Search_CompoundSearch_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Search_CompoundSearch Choreo */


/*! group TMBCorpWatch.Company.GetCompanyByEIN Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyByEIN Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyByEIN_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEIN:(NSString*)EIN;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyByEIN Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyByEIN_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a company record for a given IRS Employer Identification Number (tax ID).
 */
@interface TMBCorpWatch_Company_GetCompanyByEIN : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Company_GetCompanyByEIN_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Company_GetCompanyByEIN Choreo */


/*! group TMBCorpWatch.Lists.ListLocations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListLocations Choreo.
 */
@interface TMBCorpWatch_Lists_ListLocations_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAddress:(NSString*)Address;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaxYear:(NSString*)MaxYear;
	-(void)setMinYear:(NSString*)MinYear;
	-(void)setPostalCode:(NSString*)PostalCode;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setType:(NSString*)Type;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListLocations Choreo.
 */
@interface TMBCorpWatch_Lists_ListLocations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of locations of companies matching the given query.
 */
@interface TMBCorpWatch_Lists_ListLocations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Lists_ListLocations_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Lists_ListLocations Choreo */


/*! group TMBCorpWatch.Lists.ListNames Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListNames Choreo.
 */
@interface TMBCorpWatch_Lists_ListNames_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaxYear:(NSString*)MaxYear;
	-(void)setMinYear:(NSString*)MinYear;
	-(void)setName:(NSString*)Name;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSource:(NSString*)Source;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListNames Choreo.
 */
@interface TMBCorpWatch_Lists_ListNames_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of names (companies or individuals) matching a given name query.
 */
@interface TMBCorpWatch_Lists_ListNames : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Lists_ListNames_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Lists_ListNames Choreo */


/*! group TMBCorpWatch.Company.GetCompanyNames Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyNames Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyNames_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCWID:(NSString*)CWID;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyNames Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyNames_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a complete list of company names associated with a given company record, including its aliases, former names, and normalized forms.
 */
@interface TMBCorpWatch_Company_GetCompanyNames : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Company_GetCompanyNames_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Company_GetCompanyNames Choreo */


/*! group TMBCorpWatch.Company.GetCompanyHistory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyHistory Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyHistory_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCWID:(NSString*)CWID;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyHistory Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyHistory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a complete set of basic records for a given company, covering all the years for which information is available.
 */
@interface TMBCorpWatch_Company_GetCompanyHistory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Company_GetCompanyHistory_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Company_GetCompanyHistory Choreo */


/*! group TMBCorpWatch.Company.GetCompanyFilings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyFilings Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyFilings_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCWID:(NSString*)CWID;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyFilings Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyFilings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the official SEC documents from which a company's information was extracted in order to check the accuracy of data.
 */
@interface TMBCorpWatch_Company_GetCompanyFilings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Company_GetCompanyFilings_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Company_GetCompanyFilings Choreo */


/*! group TMBCorpWatch.Company.GetCompanyLocations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyLocations Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyLocations_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCWID:(NSString*)CWID;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyLocations Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyLocations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of mailing addresses, business addresses, and jurisdiction of incorporation associated with a given company.
 */
@interface TMBCorpWatch_Company_GetCompanyLocations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Company_GetCompanyLocations_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Company_GetCompanyLocations Choreo */


/*! group TMBCorpWatch.Company.GetCompanyByCWID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyByCWID Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyByCWID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCWID:(NSString*)CWID;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyByCWID Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyByCWID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns basic information for a specifiied company.
 */
@interface TMBCorpWatch_Company_GetCompanyByCWID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Company_GetCompanyByCWID_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Company_GetCompanyByCWID Choreo */


/*! group TMBCorpWatch.Relationships.TopParent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopParent Choreo.
 */
@interface TMBCorpWatch_Relationships_TopParent_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCWID:(NSString*)CWID;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopParent Choreo.
 */
@interface TMBCorpWatch_Relationships_TopParent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * For a given ID of the highest-level owning parent of a family of corporations, retrieves all of the companies that are "below" it in the hierarchy.
 */
@interface TMBCorpWatch_Relationships_TopParent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Relationships_TopParent_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Relationships_TopParent Choreo */


/*! group TMBCorpWatch.Lists.ListCountryCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCountryCodes Choreo.
 */
@interface TMBCorpWatch_Lists_ListCountryCodes_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCountryCodes Choreo.
 */
@interface TMBCorpWatch_Lists_ListCountryCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a complete list of ISO-3166 standard country and subdivision codes.
 */
@interface TMBCorpWatch_Lists_ListCountryCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Lists_ListCountryCodes_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Lists_ListCountryCodes Choreo */


/*! group TMBCorpWatch.Lists.ListIndustryCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListIndustryCodes Choreo.
 */
@interface TMBCorpWatch_Lists_ListIndustryCodes_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListIndustryCodes Choreo.
 */
@interface TMBCorpWatch_Lists_ListIndustryCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a complete list of all Standard Industrial Classification (SIC) codes and sectors.
 */
@interface TMBCorpWatch_Lists_ListIndustryCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Lists_ListIndustryCodes_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Lists_ListIndustryCodes Choreo */


/*! group TMBCorpWatch.Company.GetCompanyByCIK Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyByCIK Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyByCIK_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCIK:(NSString*)CIK;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyByCIK Choreo.
 */
@interface TMBCorpWatch_Company_GetCompanyByCIK_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a company record for a given SEC CIK identification number.
 */
@interface TMBCorpWatch_Company_GetCompanyByCIK : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Company_GetCompanyByCIK_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Company_GetCompanyByCIK Choreo */


/*! group TMBCorpWatch.Relationships.CompanyParents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompanyParents Choreo.
 */
@interface TMBCorpWatch_Relationships_CompanyParents_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCWID:(NSString*)CWID;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompanyParents Choreo.
 */
@interface TMBCorpWatch_Relationships_CompanyParents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of principal owning companies, or "parents," of a company.
 */
@interface TMBCorpWatch_Relationships_CompanyParents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Relationships_CompanyParents_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Relationships_CompanyParents Choreo */


/*! group TMBCorpWatch.Relationships.CompanyChildren Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompanyChildren Choreo.
 */
@interface TMBCorpWatch_Relationships_CompanyChildren_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCWID:(NSString*)CWID;
	-(void)setIndex:(NSString*)Index;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompanyChildren Choreo.
 */
@interface TMBCorpWatch_Relationships_CompanyChildren_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of the subsidiaries, or "children," of a company.
 */
@interface TMBCorpWatch_Relationships_CompanyChildren : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCorpWatch_Relationships_CompanyChildren_Inputs*)newInputSet;
@end

/*! group TMBCorpWatch.Relationships_CompanyChildren Choreo */

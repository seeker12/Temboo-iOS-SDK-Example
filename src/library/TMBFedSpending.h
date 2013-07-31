/*!
 * @header Temboo iOS SDK FedSpending classes
 *
 * Execute Choreographies from the Temboo FedSpending bundle.
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

/*! group TMBFedSpending.Contracts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Contracts Choreo.
 */
@interface TMBFedSpending_Contracts_Inputs : TMBChoreographyInputSet
	-(void)setCity:(NSString*)City;
	-(void)setCompanyName:(NSString*)CompanyName;
	-(void)setCompletion:(NSString*)Completion;
	-(void)setDetail:(NSString*)Detail;
	-(void)setFirstYearRange:(NSString*)FirstYearRange;
	-(void)setFiscalYear:(NSString*)FiscalYear;
	-(void)setLastYearRange:(NSString*)LastYearRange;
	-(void)setMajAgency:(NSString*)MajAgency;
	-(void)setMaxRecords:(NSString*)MaxRecords;
	-(void)setModAgency:(NSString*)ModAgency;
	-(void)setPIID:(NSString*)PIID;
	-(void)setPSCCategory:(NSString*)PSCCategory;
	-(void)setPSC:(NSString*)PSC;
	-(void)setPopCountryCode:(NSString*)PopCountryCode;
	-(void)setPopDistrict:(NSString*)PopDistrict;
	-(void)setPopZipCode:(NSString*)PopZipCode;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setStateCode:(NSString*)StateCode;
	-(void)setState:(NSString*)State;
	-(void)setTextSearch:(NSString*)TextSearch;
	-(void)setVendorCountryCode:(NSString*)VendorCountryCode;
	-(void)setVendorDistrict:(NSString*)VendorDistrict;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Contracts Choreo.
 */
@interface TMBFedSpending_Contracts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows access to the information in the Federal Procurement Data System (FPDS) database, which reports all federal contracts awarded. 
 */
@interface TMBFedSpending_Contracts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFedSpending_Contracts_Inputs*)newInputSet;
@end

/*! group TMBFedSpending_Contracts Choreo */


/*! group TMBFedSpending.Recovery Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Recovery Choreo.
 */
@interface TMBFedSpending_Recovery_Inputs : TMBChoreographyInputSet
	-(void)setActivity:(NSString*)Activity;
	-(void)setAwardAmount:(NSString*)AwardAmount;
	-(void)setAwardNumber:(NSString*)AwardNumber;
	-(void)setAwardType:(NSString*)AwardType;
	-(void)setAwardingAgency:(NSString*)AwardingAgency;
	-(void)setCFDA:(NSString*)CFDA;
	-(void)setDetail:(NSString*)Detail;
	-(void)setEntityDun:(NSString*)EntityDun;
	-(void)setFirstYearRange:(NSString*)FirstYearRange;
	-(void)setFiscalYear:(NSString*)FiscalYear;
	-(void)setFundingAgency:(NSString*)FundingAgency;
	-(void)setFundingTAS:(NSString*)FundingTAS;
	-(void)setGovtContractOffice:(NSString*)GovtContractOffice;
	-(void)setLastYearRange:(NSString*)LastYearRange;
	-(void)setMaxRecords:(NSString*)MaxRecords;
	-(void)setNumberOfJobs:(NSString*)NumberOfJobs;
	-(void)setOfficerComp:(NSString*)OfficerComp;
	-(void)setOrderNumber:(NSString*)OrderNumber;
	-(void)setPopCity:(NSString*)PopCity;
	-(void)setPopCountry:(NSString*)PopCountry;
	-(void)setPopDistrict:(NSString*)PopDistrict;
	-(void)setPopState:(NSString*)PopState;
	-(void)setPopZip:(NSString*)PopZip;
	-(void)setProjectDescription:(NSString*)ProjectDescription;
	-(void)setRecipientDistrict:(NSString*)RecipientDistrict;
	-(void)setRecipientName:(NSString*)RecipientName;
	-(void)setRecipientStateCode:(NSString*)RecipientStateCode;
	-(void)setRecipientType:(NSString*)RecipientType;
	-(void)setRecipientZip:(NSString*)RecipientZip;
	-(void)setSort:(NSString*)Sort;
	-(void)setTextSearch:(NSString*)TextSearch;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Recovery Choreo.
 */
@interface TMBFedSpending_Recovery_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows access to the information in the Recovery Act Recipient Reports database.
 */
@interface TMBFedSpending_Recovery : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFedSpending_Recovery_Inputs*)newInputSet;
@end

/*! group TMBFedSpending_Recovery Choreo */


/*! group TMBFedSpending.Assistance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Assistance Choreo.
 */
@interface TMBFedSpending_Assistance_Inputs : TMBChoreographyInputSet
	-(void)setAgencyCode:(NSString*)AgencyCode;
	-(void)setAssistanceType:(NSString*)AssistanceType;
	-(void)setCFDAProgram:(NSString*)CFDAProgram;
	-(void)setDetail:(NSString*)Detail;
	-(void)setFederalID:(NSString*)FederalID;
	-(void)setFirstYearRange:(NSString*)FirstYearRange;
	-(void)setFiscalYear:(NSString*)FiscalYear;
	-(void)setLastYearRange:(NSString*)LastYearRange;
	-(void)setMajAgency:(NSString*)MajAgency;
	-(void)setMaxRecords:(NSString*)MaxRecords;
	-(void)setPrincipalPlaceCC:(NSString*)PrincipalPlaceCC;
	-(void)setPrincipalPlaceStateCode:(NSString*)PrincipalPlaceStateCode;
	-(void)setRecipientCityName:(NSString*)RecipientCityName;
	-(void)setRecipientCountyName:(NSString*)RecipientCountyName;
	-(void)setRecipientDistrict:(NSString*)RecipientDistrict;
	-(void)setRecipientName:(NSString*)RecipientName;
	-(void)setRecipientStateCode:(NSString*)RecipientStateCode;
	-(void)setRecipientType:(NSString*)RecipientType;
	-(void)setRecipientZip:(NSString*)RecipientZip;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setTextSearch:(NSString*)TextSearch;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Assistance Choreo.
 */
@interface TMBFedSpending_Assistance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows access to the information in the Federal Assisatance Award Data System (FAADS) database, which reports all financial assistance made by federal agencies.
 */
@interface TMBFedSpending_Assistance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFedSpending_Assistance_Inputs*)newInputSet;
@end

/*! group TMBFedSpending_Assistance Choreo */

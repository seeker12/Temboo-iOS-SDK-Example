/*!
 * @TMBFedSpending.m
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

#import "TMBFedSpending.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Contracts Choreo.
 */
@implementation TMBFedSpending_Contracts_Inputs

	/*!
	 * Set the value of the City input for this Choreo.
	*(conditional, string) The city within a contractor's address.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the CompanyName input for this Choreo.
	*(conditional, string) The name of a a contractor or contractor parent company.
	 */
	-(void)setCompanyName:(NSString*)CompanyName {
		[super setInput:@"CompanyName" toValue:CompanyName];
	}

	/*!
	 * Set the value of the Completion input for this Choreo.
	*(conditional, string) The competition status of a contract. Valid values: c=Full competition, o=Full competition, one bid, p=Competition, exclusion of sources, n=Not complete, a=Not available, f=Follow-up, u=Unknown.
	 */
	-(void)setCompletion:(NSString*)Completion {
		[super setInput:@"Completion" toValue:Completion];
	}

	/*!
	 * Set the value of the Detail input for this Choreo.
	*(optional, string) Controls the level of detail of the output. Acceptable values: -1 (summary), 0 (low), 1 (medium), 2 (high), and 3 (extensive). Defaults to -1. See docs for more information.
	 */
	-(void)setDetail:(NSString*)Detail {
		[super setInput:@"Detail" toValue:Detail];
	}

	/*!
	 * Set the value of the FirstYearRange input for this Choreo.
	*(conditional, integer) Specifies the first year in a range of years; if used, must be used with LastYearRange and without FiscalYear.
	 */
	-(void)setFirstYearRange:(NSString*)FirstYearRange {
		[super setInput:@"FirstYearRange" toValue:FirstYearRange];
	}

	/*!
	 * Set the value of the FiscalYear input for this Choreo.
	*(conditional, integer) Specifies a single year; defaults to all years.
	 */
	-(void)setFiscalYear:(NSString*)FiscalYear {
		[super setInput:@"FiscalYear" toValue:FiscalYear];
	}

	/*!
	 * Set the value of the LastYearRange input for this Choreo.
	*(conditional, integer) Specifies the last year in a range of years; if used, must be used with FirstYearRange and without FiscalYear.
	 */
	-(void)setLastYearRange:(NSString*)LastYearRange {
		[super setInput:@"LastYearRange" toValue:LastYearRange];
	}

	/*!
	 * Set the value of the MajAgency input for this Choreo.
	*(conditional, string) The 2-character code for a major governmental agency issuing contracts.
	 */
	-(void)setMajAgency:(NSString*)MajAgency {
		[super setInput:@"MajAgency" toValue:MajAgency];
	}

	/*!
	 * Set the value of the MaxRecords input for this Choreo.
	*(optional, integer) Allows you to set the maximum number of records retrieved. Defaults to 100.
	 */
	-(void)setMaxRecords:(NSString*)MaxRecords {
		[super setInput:@"MaxRecords" toValue:MaxRecords];
	}

	/*!
	 * Set the value of the ModAgency input for this Choreo.
	*(conditional, string) The 4-digit code for a specific governmental agency issuing contracts.
	 */
	-(void)setModAgency:(NSString*)ModAgency {
		[super setInput:@"ModAgency" toValue:ModAgency];
	}

	/*!
	 * Set the value of the PIID input for this Choreo.
	*(conditional, integer) A Federal ID number for the contract.
	 */
	-(void)setPIID:(NSString*)PIID {
		[super setInput:@"PIID" toValue:PIID];
	}

	/*!
	 * Set the value of the PSCCategory input for this Choreo.
	*(conditional, string) The 2-character code for a major product or service category.
	 */
	-(void)setPSCCategory:(NSString*)PSCCategory {
		[super setInput:@"PSCCategory" toValue:PSCCategory];
	}

	/*!
	 * Set the value of the PSC input for this Choreo.
	*(conditional, string) The 4-character code for a product or service.
	 */
	-(void)setPSC:(NSString*)PSC {
		[super setInput:@"PSC" toValue:PSC];
	}

	/*!
	 * Set the value of the PopCountryCode input for this Choreo.
	*(conditional, string) The two-letter country code for the place of performance country.
	 */
	-(void)setPopCountryCode:(NSString*)PopCountryCode {
		[super setInput:@"PopCountryCode" toValue:PopCountryCode];
	}

	/*!
	 * Set the value of the PopDistrict input for this Choreo.
	*(conditional, string) The Congressional District of the place of performance.
	 */
	-(void)setPopDistrict:(NSString*)PopDistrict {
		[super setInput:@"PopDistrict" toValue:PopDistrict];
	}

	/*!
	 * Set the value of the PopZipCode input for this Choreo.
	*(conditional, integer) The ZIP code of the place of performance.
	 */
	-(void)setPopZipCode:(NSString*)PopZipCode {
		[super setInput:@"PopZipCode" toValue:PopZipCode];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Determines how records are sorted. Valid values: r (contractor/recipient name), f (dollars of awards),g (major contracting agency),p (Product or Service Category),d (date of award). Defaults to f.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the StateCode input for this Choreo.
	*(conditional, string) The state abbreviation of the state of the place of performance.
	 */
	-(void)setStateCode:(NSString*)StateCode {
		[super setInput:@"StateCode" toValue:StateCode];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(conditional, string) The state abbreviation within a contractor's address.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the TextSearch input for this Choreo.
	*(conditional, string) Free text search within the text that describes what the contract is for.
	 */
	-(void)setTextSearch:(NSString*)TextSearch {
		[super setInput:@"TextSearch" toValue:TextSearch];
	}

	/*!
	 * Set the value of the VendorCountryCode input for this Choreo.
	*(conditional, string) The two-letter country code for the country in a contractor's address.
	 */
	-(void)setVendorCountryCode:(NSString*)VendorCountryCode {
		[super setInput:@"VendorCountryCode" toValue:VendorCountryCode];
	}

	/*!
	 * Set the value of the VendorDistrict input for this Choreo.
	*(conditional, string) The 4-character Congressional District within which a contractor is located.
	 */
	-(void)setVendorDistrict:(NSString*)VendorDistrict {
		[super setInput:@"VendorDistrict" toValue:VendorDistrict];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(conditional, integer) The ZIP code within a contractor's address.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Contracts Choreo.
 */
@implementation TMBFedSpending_Contracts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FedSpending.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows access to the information in the Federal Procurement Data System (FPDS) database, which reports all federal contracts awarded. 
 */
@implementation TMBFedSpending_Contracts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFedSpending_Contracts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FedSpending/Contracts"] autorelease];
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
		TMBFedSpending_Contracts_ResultSet *results = [[[TMBFedSpending_Contracts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Contracts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFedSpending_Contracts_Inputs*)newInputSet {
		return [[[TMBFedSpending_Contracts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Recovery Choreo.
 */
@implementation TMBFedSpending_Recovery_Inputs

	/*!
	 * Set the value of the Activity input for this Choreo.
	*(conditional, string) Whether or not to search by activity. (Will provide a select list if "y"). y = yes, n = no. Defaults to n if not set.
	 */
	-(void)setActivity:(NSString*)Activity {
		[super setInput:@"Activity" toValue:Activity];
	}

	/*!
	 * Set the value of the AwardAmount input for this Choreo.
	*(conditional, string) Grants: total Federal dollars. Loans: face value of loan obligated by the Federal Agency. Contracts: total amount obligated by Federal Agency. Vendors: payment amount. Recipients:  amount of award.
	 */
	-(void)setAwardAmount:(NSString*)AwardAmount {
		[super setInput:@"AwardAmount" toValue:AwardAmount];
	}

	/*!
	 * Set the value of the AwardNumber input for this Choreo.
	*(conditional, integer) Identifying number assigned by the awarding Federal Agency. e.g. federal grant number, federal contract number or federal loan number. For grants and loans, this is assigned by the prime recipient.
	 */
	-(void)setAwardNumber:(NSString*)AwardNumber {
		[super setInput:@"AwardNumber" toValue:AwardNumber];
	}

	/*!
	 * Set the value of the AwardType input for this Choreo.
	*(conditional, string) Acceptable values: G = Grants only,L = Loans only, C = Contracts only.
	 */
	-(void)setAwardType:(NSString*)AwardType {
		[super setInput:@"AwardType" toValue:AwardType];
	}

	/*!
	 * Set the value of the AwardingAgency input for this Choreo.
	*(conditional, string) The 4-digit code for a specific governmental awarding agency that awarded and is administering the award on behalf of the funding agency.
	 */
	-(void)setAwardingAgency:(NSString*)AwardingAgency {
		[super setInput:@"AwardingAgency" toValue:AwardingAgency];
	}

	/*!
	 * Set the value of the CFDA input for this Choreo.
	*(conditional, string) The Catalog of Federal Domestic Number is the number associated with the published description of a Federal Assistance program in the CFDA.
	 */
	-(void)setCFDA:(NSString*)CFDA {
		[super setInput:@"CFDA" toValue:CFDA];
	}

	/*!
	 * Set the value of the Detail input for this Choreo.
	*(optional, string) Controls the level of detail of the output. Acceptable values: -1 (summary), 0 (low), 1 (medium), 2 (high), and 3 (extensive). Defaults to -1. See docs for more information.
	 */
	-(void)setDetail:(NSString*)Detail {
		[super setInput:@"Detail" toValue:Detail];
	}

	/*!
	 * Set the value of the EntityDun input for this Choreo.
	*(conditional, string) The prime recipient for the award's Dun & Bradstreet number (no vendor information).
	 */
	-(void)setEntityDun:(NSString*)EntityDun {
		[super setInput:@"EntityDun" toValue:EntityDun];
	}

	/*!
	 * Set the value of the FirstYearRange input for this Choreo.
	*(conditional, integer) Specifies the first year in a range of years from 2000-2006; if used, must be used with LastYearRange and without FiscalYear.
	 */
	-(void)setFirstYearRange:(NSString*)FirstYearRange {
		[super setInput:@"FirstYearRange" toValue:FirstYearRange];
	}

	/*!
	 * Set the value of the FiscalYear input for this Choreo.
	*(conditional, integer) Specifies a single year; defaults to all years.
	 */
	-(void)setFiscalYear:(NSString*)FiscalYear {
		[super setInput:@"FiscalYear" toValue:FiscalYear];
	}

	/*!
	 * Set the value of the FundingAgency input for this Choreo.
	*(conditional, string) The 4-digit code for a specific governmental agency that is responsible for funding/distributing the ARRA funds to recipients.
	 */
	-(void)setFundingAgency:(NSString*)FundingAgency {
		[super setInput:@"FundingAgency" toValue:FundingAgency];
	}

	/*!
	 * Set the value of the FundingTAS input for this Choreo.
	*(conditional, string) The Agency Treasury Account Symbol (TAS) that identifies the funding Program Source. The Program Source is based out of the OMB TAS list.
	 */
	-(void)setFundingTAS:(NSString*)FundingTAS {
		[super setInput:@"FundingTAS" toValue:FundingTAS];
	}

	/*!
	 * Set the value of the GovtContractOffice input for this Choreo.
	*(conditional, string) The agency supplied code of the government contracting office that executed the transaction. (For prime recipients only.)
	 */
	-(void)setGovtContractOffice:(NSString*)GovtContractOffice {
		[super setInput:@"GovtContractOffice" toValue:GovtContractOffice];
	}

	/*!
	 * Set the value of the LastYearRange input for this Choreo.
	*(conditional, integer) Specifies the last year in a range of years; if used, must be used with FirstYearRange and without FiscalYear.
	 */
	-(void)setLastYearRange:(NSString*)LastYearRange {
		[super setInput:@"LastYearRange" toValue:LastYearRange];
	}

	/*!
	 * Set the value of the MaxRecords input for this Choreo.
	*(optional, integer) Allows you to set the maximum number of records retrieved. Defaults to 100.
	 */
	-(void)setMaxRecords:(NSString*)MaxRecords {
		[super setInput:@"MaxRecords" toValue:MaxRecords];
	}

	/*!
	 * Set the value of the NumberOfJobs input for this Choreo.
	*(conditional, integer) The number of Full-Time Equivalent (FTE) jobs created and retained.
	 */
	-(void)setNumberOfJobs:(NSString*)NumberOfJobs {
		[super setInput:@"NumberOfJobs" toValue:NumberOfJobs];
	}

	/*!
	 * Set the value of the OfficerComp input for this Choreo.
	*(conditional, integer) Total compensation of first highly compensated officer.
	 */
	-(void)setOfficerComp:(NSString*)OfficerComp {
		[super setInput:@"OfficerComp" toValue:OfficerComp];
	}

	/*!
	 * Set the value of the OrderNumber input for this Choreo.
	*(conditional, string) This is an identifying number assigned to the contract.
	 */
	-(void)setOrderNumber:(NSString*)OrderNumber {
		[super setInput:@"OrderNumber" toValue:OrderNumber];
	}

	/*!
	 * Set the value of the PopCity input for this Choreo.
	*(conditional, string) The city in which work was performed.
	 */
	-(void)setPopCity:(NSString*)PopCity {
		[super setInput:@"PopCity" toValue:PopCity];
	}

	/*!
	 * Set the value of the PopCountry input for this Choreo.
	*(conditional, string) The two-letter country code for the country in which work was performed.
	 */
	-(void)setPopCountry:(NSString*)PopCountry {
		[super setInput:@"PopCountry" toValue:PopCountry];
	}

	/*!
	 * Set the value of the PopDistrict input for this Choreo.
	*(conditional, string) The Congressional District in which work was performed.
	 */
	-(void)setPopDistrict:(NSString*)PopDistrict {
		[super setInput:@"PopDistrict" toValue:PopDistrict];
	}

	/*!
	 * Set the value of the PopState input for this Choreo.
	*(conditional, string) The two-letter code for the state in which in which work was performed (the "place of performance").
	 */
	-(void)setPopState:(NSString*)PopState {
		[super setInput:@"PopState" toValue:PopState];
	}

	/*!
	 * Set the value of the PopZip input for this Choreo.
	*(conditional, integer) The ZIP code in which work was performed.
	 */
	-(void)setPopZip:(NSString*)PopZip {
		[super setInput:@"PopZip" toValue:PopZip];
	}

	/*!
	 * Set the value of the ProjectDescription input for this Choreo.
	*(conditional, string) A description of the project under which the award is funded.
	 */
	-(void)setProjectDescription:(NSString*)ProjectDescription {
		[super setInput:@"ProjectDescription" toValue:ProjectDescription];
	}

	/*!
	 * Set the value of the RecipientDistrict input for this Choreo.
	*(conditional, string) A 4-character numeric designation for the Congressional District within which a recipient or vendor is located. (For prime recipients and sub-recipients only.)
	 */
	-(void)setRecipientDistrict:(NSString*)RecipientDistrict {
		[super setInput:@"RecipientDistrict" toValue:RecipientDistrict];
	}

	/*!
	 * Set the value of the RecipientName input for this Choreo.
	*(conditional, string) The name of the recipient (prime recipient, sub-recipient, or vendor); value given is used as a text search.
	 */
	-(void)setRecipientName:(NSString*)RecipientName {
		[super setInput:@"RecipientName" toValue:RecipientName];
	}

	/*!
	 * Set the value of the RecipientStateCode input for this Choreo.
	*(conditional, string) The postal state abbreviation for the state in the recipient's address (can be for prime recipient, sub-recipient, or vendor).
	 */
	-(void)setRecipientStateCode:(NSString*)RecipientStateCode {
		[super setInput:@"RecipientStateCode" toValue:RecipientStateCode];
	}

	/*!
	 * Set the value of the RecipientType input for this Choreo.
	*(conditional, string) Recipient or vendor type: p = Prime recipients only, s = Sub-recipients only, v = Vendors only.
	 */
	-(void)setRecipientType:(NSString*)RecipientType {
		[super setInput:@"RecipientType" toValue:RecipientType];
	}

	/*!
	 * Set the value of the RecipientZip input for this Choreo.
	*(conditional, integer) The ZIP code of the recipient (prime recipient, sub-recipient, or vendor).
	 */
	-(void)setRecipientZip:(NSString*)RecipientZip {
		[super setInput:@"RecipientZip" toValue:RecipientZip];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Determines the order in which records are sorted. The default value sorts by Recipient/Vendor Name. See doc for all other values.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the TextSearch input for this Choreo.
	*(conditional, string) Full text search.
	 */
	-(void)setTextSearch:(NSString*)TextSearch {
		[super setInput:@"TextSearch" toValue:TextSearch];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Recovery Choreo.
 */
@implementation TMBFedSpending_Recovery_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FedSpending.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows access to the information in the Recovery Act Recipient Reports database.
 */
@implementation TMBFedSpending_Recovery

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFedSpending_Recovery Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FedSpending/Recovery"] autorelease];
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
		TMBFedSpending_Recovery_ResultSet *results = [[[TMBFedSpending_Recovery_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Recovery Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFedSpending_Recovery_Inputs*)newInputSet {
		return [[[TMBFedSpending_Recovery_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Assistance Choreo.
 */
@implementation TMBFedSpending_Assistance_Inputs

	/*!
	 * Set the value of the AgencyCode input for this Choreo.
	*(conditional, string) The 4-character code for a specific governmental agency providing assistance.
	 */
	-(void)setAgencyCode:(NSString*)AgencyCode {
		[super setInput:@"AgencyCode" toValue:AgencyCode];
	}

	/*!
	 * Set the value of the AssistanceType input for this Choreo.
	*(conditional, string) The type of assistance provided. Valid values are: d = Direct Payments (specified and unrestricted), g = Grants and Cooperative Agreements, i = Insurance, l = Loans (direct and guaranteed), o = Other.
	 */
	-(void)setAssistanceType:(NSString*)AssistanceType {
		[super setInput:@"AssistanceType" toValue:AssistanceType];
	}

	/*!
	 * Set the value of the CFDAProgram input for this Choreo.
	*(conditional, string) An ID for the governmental program.
	 */
	-(void)setCFDAProgram:(NSString*)CFDAProgram {
		[super setInput:@"CFDAProgram" toValue:CFDAProgram];
	}

	/*!
	 * Set the value of the Detail input for this Choreo.
	*(optional, string) Controls the level of detail of the output. Acceptable values: -1 (summary), 0 (low), 1 (medium), 2 (high), and 3 (extensive). Defaults to -1. See docs for more information.
	 */
	-(void)setDetail:(NSString*)Detail {
		[super setInput:@"Detail" toValue:Detail];
	}

	/*!
	 * Set the value of the FederalID input for this Choreo.
	*(conditional, string) A Federal ID for the award.
	 */
	-(void)setFederalID:(NSString*)FederalID {
		[super setInput:@"FederalID" toValue:FederalID];
	}

	/*!
	 * Set the value of the FirstYearRange input for this Choreo.
	*(conditional, integer) Specifies the first year in a range of years from 2000-2006; if used, must be used with LastYearRange and without FiscalYear.
	 */
	-(void)setFirstYearRange:(NSString*)FirstYearRange {
		[super setInput:@"FirstYearRange" toValue:FirstYearRange];
	}

	/*!
	 * Set the value of the FiscalYear input for this Choreo.
	*(conditional, integer) Specifies a single year from 2000-2006; defaults to all years.
	 */
	-(void)setFiscalYear:(NSString*)FiscalYear {
		[super setInput:@"FiscalYear" toValue:FiscalYear];
	}

	/*!
	 * Set the value of the LastYearRange input for this Choreo.
	*(conditional, integer) Specifies the last year in a range of years from 2000-2006; if used, must be used with FirstYearRange and without FiscalYear.
	 */
	-(void)setLastYearRange:(NSString*)LastYearRange {
		[super setInput:@"LastYearRange" toValue:LastYearRange];
	}

	/*!
	 * Set the value of the MajAgency input for this Choreo.
	*(conditional, string) The 2-character code for a major governmental agency providing assistance.
	 */
	-(void)setMajAgency:(NSString*)MajAgency {
		[super setInput:@"MajAgency" toValue:MajAgency];
	}

	/*!
	 * Set the value of the MaxRecords input for this Choreo.
	*(optional, integer) Allows you to set the maximum number of records retrieved. Defaults to 100.
	 */
	-(void)setMaxRecords:(NSString*)MaxRecords {
		[super setInput:@"MaxRecords" toValue:MaxRecords];
	}

	/*!
	 * Set the value of the PrincipalPlaceCC input for this Choreo.
	*(conditional, string) The city or county of the place of performance.
	 */
	-(void)setPrincipalPlaceCC:(NSString*)PrincipalPlaceCC {
		[super setInput:@"PrincipalPlaceCC" toValue:PrincipalPlaceCC];
	}

	/*!
	 * Set the value of the PrincipalPlaceStateCode input for this Choreo.
	*(conditional, string) The FIPS state code for the state of the place of performance.
	 */
	-(void)setPrincipalPlaceStateCode:(NSString*)PrincipalPlaceStateCode {
		[super setInput:@"PrincipalPlaceStateCode" toValue:PrincipalPlaceStateCode];
	}

	/*!
	 * Set the value of the RecipientCityName input for this Choreo.
	*(conditional, string) The city in the address of a recipient.
	 */
	-(void)setRecipientCityName:(NSString*)RecipientCityName {
		[super setInput:@"RecipientCityName" toValue:RecipientCityName];
	}

	/*!
	 * Set the value of the RecipientCountyName input for this Choreo.
	*(conditional, string) The county in which a recipient is located.
	 */
	-(void)setRecipientCountyName:(NSString*)RecipientCountyName {
		[super setInput:@"RecipientCountyName" toValue:RecipientCountyName];
	}

	/*!
	 * Set the value of the RecipientDistrict input for this Choreo.
	*(conditional, string) The Congressional District in which the recipient is located, formatted with four characters.
	 */
	-(void)setRecipientDistrict:(NSString*)RecipientDistrict {
		[super setInput:@"RecipientDistrict" toValue:RecipientDistrict];
	}

	/*!
	 * Set the value of the RecipientName input for this Choreo.
	*(conditional, string) The name of a recipient of assistance.
	 */
	-(void)setRecipientName:(NSString*)RecipientName {
		[super setInput:@"RecipientName" toValue:RecipientName];
	}

	/*!
	 * Set the value of the RecipientStateCode input for this Choreo.
	*(conditional, string) The FIPS state code for the state in the address of a recipient.
	 */
	-(void)setRecipientStateCode:(NSString*)RecipientStateCode {
		[super setInput:@"RecipientStateCode" toValue:RecipientStateCode];
	}

	/*!
	 * Set the value of the RecipientType input for this Choreo.
	*(conditional, string) The type of recipient. Valid values are: f = For Profits, g = Government,h = Higher Education, i = Individuals,n = Nonprofits, o = Other.
	 */
	-(void)setRecipientType:(NSString*)RecipientType {
		[super setInput:@"RecipientType" toValue:RecipientType];
	}

	/*!
	 * Set the value of the RecipientZip input for this Choreo.
	*(conditional, integer) The ZIP code in the address of a recipient.
	 */
	-(void)setRecipientZip:(NSString*)RecipientZip {
		[super setInput:@"RecipientZip" toValue:RecipientZip];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Determines how records are sorted. Valid values: r (contractor/recipient name), f (dollars of awards),g (major contracting agency), p (CFDA Program), d (date of award). Defaults to f.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the TextSearch input for this Choreo.
	*(conditional, string) A free text search on a description of the project.
	 */
	-(void)setTextSearch:(NSString*)TextSearch {
		[super setInput:@"TextSearch" toValue:TextSearch];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Assistance Choreo.
 */
@implementation TMBFedSpending_Assistance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FedSpending.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows access to the information in the Federal Assisatance Award Data System (FAADS) database, which reports all financial assistance made by federal agencies.
 */
@implementation TMBFedSpending_Assistance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFedSpending_Assistance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FedSpending/Assistance"] autorelease];
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
		TMBFedSpending_Assistance_ResultSet *results = [[[TMBFedSpending_Assistance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Assistance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFedSpending_Assistance_Inputs*)newInputSet {
		return [[[TMBFedSpending_Assistance_Inputs alloc] init] autorelease];
	}
@end
	
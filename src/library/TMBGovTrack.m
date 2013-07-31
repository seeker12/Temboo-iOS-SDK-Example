/*!
 * @TMBGovTrack.m
 *
 * Execute Choreographies from the Temboo GovTrack bundle.
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

#import "TMBGovTrack.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Person Choreo.
 */
@implementation TMBGovTrack_Person_Inputs

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(optional, string) First name of the representative to find.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the Gender input for this Choreo.
	*(optional, string) The person's gender (male or female). For historical data, gender is sometimes not specified.
	 */
	-(void)setGender:(NSString*)Gender {
		[super setInput:@"Gender" toValue:Gender];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(optional, string) The representative's last name.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Results are paged 20 per call by default. Set the limit input to a high value to get all of the results at once.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MetaVidID input for this Choreo.
	*(optional, string) The person's ID on metavid.org.
	 */
	-(void)setMetaVidID:(NSString*)MetaVidID {
		[super setInput:@"MetaVidID" toValue:MetaVidID];
	}

	/*!
	 * Set the value of the MiddleName input for this Choreo.
	*(optional, string) The representative's middle name.
	 */
	-(void)setMiddleName:(NSString*)MiddleName {
		[super setInput:@"MiddleName" toValue:MiddleName];
	}

	/*!
	 * Set the value of the NameMod input for this Choreo.
	*(optional, string) The suffix of the person's name, ususally one of Jr., Sr., I, II, etc.
	 */
	-(void)setNameMod:(NSString*)NameMod {
		[super setInput:@"NameMod" toValue:NameMod];
	}

	/*!
	 * Set the value of the OSID input for this Choreo.
	*(optional, integer) The person's ID on opensecrets.org (The Center for Responsive Politics).
	 */
	-(void)setOSID:(NSString*)OSID {
		[super setInput:@"OSID" toValue:OSID];
	}

	/*!
	 * Set the value of the PVSID input for this Choreo.
	*(optional, integer) The person's ID on vote-smart.org (Project Vote Smart).
	 */
	-(void)setPVSID:(NSString*)PVSID {
		[super setInput:@"PVSID" toValue:PVSID];
	}

	/*!
	 * Set the value of the PersonID input for this Choreo.
	*(optional, integer) Specify the ID number for a person to retrieve only that person.
	 */
	-(void)setPersonID:(NSString*)PersonID {
		[super setInput:@"PersonID" toValue:PersonID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify the format of the response. Default is JSON, but XML is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Roles input for this Choreo.
	*(optional, string) ID number of a term in Congress or as President that this person has been elected to.
	 */
	-(void)setRoles:(NSString*)Roles {
		[super setInput:@"Roles" toValue:Roles];
	}

	/*!
	 * Set the value of the TwitterID input for this Choreo.
	*(optional, string) Official Twitter handle of the representative.
	 */
	-(void)setTwitterID:(NSString*)TwitterID {
		[super setInput:@"TwitterID" toValue:TwitterID];
	}

	/*!
	 * Set the value of the YoutubeID input for this Choreo.
	*(optional, string) The name of the person't official YouTube channel.
	 */
	-(void)setYoutubeID:(NSString*)YoutubeID {
		[super setInput:@"YoutubeID" toValue:YoutubeID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Person Choreo.
 */
@implementation TMBGovTrack_Person_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The resopnse from GovTrack.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns members of Congress and U.S. Presidents since the founding of the nation.
 */
@implementation TMBGovTrack_Person

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGovTrack_Person Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GovTrack/Person"] autorelease];
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
		TMBGovTrack_Person_ResultSet *results = [[[TMBGovTrack_Person_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Person Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGovTrack_Person_Inputs*)newInputSet {
		return [[[TMBGovTrack_Person_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Bill Choreo.
 */
@implementation TMBGovTrack_Bill_Inputs

	/*!
	 * Set the value of the BillID input for this Choreo.
	*(optional, integer) Specify the ID number of the bill to return only the record for that bill.
	 */
	-(void)setBillID:(NSString*)BillID {
		[super setInput:@"BillID" toValue:BillID];
	}

	/*!
	 * Set the value of the BillType input for this Choreo.
	*(optional, string) The bill's type. See documentation for acceptable bill types.
	 */
	-(void)setBillType:(NSString*)BillType {
		[super setInput:@"BillType" toValue:BillType];
	}

	/*!
	 * Set the value of the Congress input for this Choreo.
	*(optional, integer) The number of the congress in which the bill was introduced. The current congress is 112.
	 */
	-(void)setCongress:(NSString*)Congress {
		[super setInput:@"Congress" toValue:Congress];
	}

	/*!
	 * Set the value of the CurrentStatusDate input for this Choreo.
	*(optional, string) The date of the last major action on the bill corresponding to the CurrentStatus (in YYYY-MM-DD format).
	 */
	-(void)setCurrentStatusDate:(NSString*)CurrentStatusDate {
		[super setInput:@"CurrentStatusDate" toValue:CurrentStatusDate];
	}

	/*!
	 * Set the value of the CurrentStatus input for this Choreo.
	*(optional, string) The current status of the bill. See documentation for acceptable inputs.
	 */
	-(void)setCurrentStatus:(NSString*)CurrentStatus {
		[super setInput:@"CurrentStatus" toValue:CurrentStatus];
	}

	/*!
	 * Set the value of the IntroducedDate input for this Choreo.
	*(optional, string) The date the bill was introduced (in YYYY-MM-DD format).
	 */
	-(void)setIntroducedDate:(NSString*)IntroducedDate {
		[super setInput:@"IntroducedDate" toValue:IntroducedDate];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Results are paged 20 per call by default. Set the limit input to a high value to get all of the results at once.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) The bill's number (just the integer part).
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) You can order the results using fieldname (ascending) or -fieldname (descending) where "fieldname" is one of these values: current_status_date, introduced_date, senate_floor_schedule_postdate.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify the format of the response. Default is JSON, but XML is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SchedulePostdate input for this Choreo.
	*(optional, string) The date on which the bill was posted on the Senate Floor Schedule which is different from the date it was expected to be debated (in YYYY-MM-DD format).
	 */
	-(void)setSchedulePostdate:(NSString*)SchedulePostdate {
		[super setInput:@"SchedulePostdate" toValue:SchedulePostdate];
	}

	/*!
	 * Set the value of the Sponsor input for this Choreo.
	*(optional, integer) The ID of the sponsor of the bill.
	 */
	-(void)setSponsor:(NSString*)Sponsor {
		[super setInput:@"Sponsor" toValue:Sponsor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Bill Choreo.
 */
@implementation TMBGovTrack_Bill_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The resopnse from GovTrack.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves bills and resolutions in the U.S. Congress since 1973 (the 93rd Congress).
 */
@implementation TMBGovTrack_Bill

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGovTrack_Bill Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GovTrack/Bill"] autorelease];
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
		TMBGovTrack_Bill_ResultSet *results = [[[TMBGovTrack_Bill_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Bill Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGovTrack_Bill_Inputs*)newInputSet {
		return [[[TMBGovTrack_Bill_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Role Choreo.
 */
@implementation TMBGovTrack_Role_Inputs

	/*!
	 * Set the value of the Current input for this Choreo.
	*(optional, string) Whether the role is currently held, or it is archival information.
	 */
	-(void)setCurrent:(NSString*)Current {
		[super setInput:@"Current" toValue:Current];
	}

	/*!
	 * Set the value of the District input for this Choreo.
	*(optional, string) For representatives, the number of their congressional district. 0 for at-large districts, -1 in historical data if the district is not known.
	 */
	-(void)setDistrict:(NSString*)District {
		[super setInput:@"District" toValue:District];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The date the role ended - when the person resigned, died, etc. (in YYYY-MM-DD format).
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Results are paged 20 per call by default. Set the limit input to a high value to get all of the results at once.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) You can order the results by date using fieldname (ascending) or -fieldname (descending), where "fieldname" is either startdate or enddate.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the Party input for this Choreo.
	*(optional, string) The political party of the person. If the person changes party, it is usually the most recent party during this role.
	 */
	-(void)setParty:(NSString*)Party {
		[super setInput:@"Party" toValue:Party];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify the format of the response. Default is JSON, but XML is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleID input for this Choreo.
	*(optional, integer) Specify the ID number of a role object to retrieve the record for only that role.
	 */
	-(void)setRoleID:(NSString*)RoleID {
		[super setInput:@"RoleID" toValue:RoleID];
	}

	/*!
	 * Set the value of the RoleType input for this Choreo.
	*(optional, string) Acceptable values: senator, representative, or president.
	 */
	-(void)setRoleType:(NSString*)RoleType {
		[super setInput:@"RoleType" toValue:RoleType];
	}

	/*!
	 * Set the value of the SenatorClass input for this Choreo.
	*(optional, integer) For senators, their election class, which determines which years they are up for election. Acceptable values: class1, class2, class3.
	 */
	-(void)setSenatorClass:(NSString*)SenatorClass {
		[super setInput:@"SenatorClass" toValue:SenatorClass];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The date the role began  - when the person took office (in YYYY-MM-DD format).
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, integer) For senators and representatives, the two-letter USPS abbreviation for the state or territory they are serving. See documentation for more on territories and historical data.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Role Choreo.
 */
@implementation TMBGovTrack_Role_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The resopnse from GovTrack.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns terms held in office by Members of Congress and U.S. Presidents.
 */
@implementation TMBGovTrack_Role

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGovTrack_Role Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GovTrack/Role"] autorelease];
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
		TMBGovTrack_Role_ResultSet *results = [[[TMBGovTrack_Role_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Role Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGovTrack_Role_Inputs*)newInputSet {
		return [[[TMBGovTrack_Role_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Vote Choreo.
 */
@implementation TMBGovTrack_Vote_Inputs

	/*!
	 * Set the value of the Category input for this Choreo.
	*(optional, string) The type of the vote. See documentation for acceptable inputs.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the Chamber input for this Choreo.
	*(optional, string) The chamber in which the vote was held, house or senate.
	 */
	-(void)setChamber:(NSString*)Chamber {
		[super setInput:@"Chamber" toValue:Chamber];
	}

	/*!
	 * Set the value of the Congress input for this Choreo.
	*(optional, integer) The number of the congress in which the bill was introduced. The current congress is 112.
	 */
	-(void)setCongress:(NSString*)Congress {
		[super setInput:@"Congress" toValue:Congress];
	}

	/*!
	 * Set the value of the Created input for this Choreo.
	*(optional, string) The date (and in recent history also the time) on which the vote was held.
	 */
	-(void)setCreated:(NSString*)Created {
		[super setInput:@"Created" toValue:Created];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Results are paged 20 per call by default. Set the limit input to a high value to get all of the results at once.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) The number of the vote, unique to a Congress and session pair.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) You can order the results using created (ascending) or -created (descending) for the dates that each vote was held.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the RelatedBill input for this Choreo.
	*(optional, string) A bill related to this vote.
	 */
	-(void)setRelatedBill:(NSString*)RelatedBill {
		[super setInput:@"RelatedBill" toValue:RelatedBill];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify the format of the response. Default is JSON, but XML is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Session input for this Choreo.
	*(optional, integer) Session of congress. For congress = 112 roughly covers the period 2011-2012, so session=2011 and session=2012 can each be specified. In historical data sessions may be named in other ways.
	 */
	-(void)setSession:(NSString*)Session {
		[super setInput:@"Session" toValue:Session];
	}

	/*!
	 * Set the value of the VoteID input for this Choreo.
	*(optional, integer) Specify the ID of a vote object to retrieve the record for just that object.
	 */
	-(void)setVoteID:(NSString*)VoteID {
		[super setInput:@"VoteID" toValue:VoteID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Vote Choreo.
 */
@implementation TMBGovTrack_Vote_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The resopnse from GovTrack.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns roll call votes in the U.S. Congress since 1789.
 */
@implementation TMBGovTrack_Vote

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGovTrack_Vote Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GovTrack/Vote"] autorelease];
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
		TMBGovTrack_Vote_ResultSet *results = [[[TMBGovTrack_Vote_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Vote Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGovTrack_Vote_Inputs*)newInputSet {
		return [[[TMBGovTrack_Vote_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VoteAndVoter Choreo.
 */
@implementation TMBGovTrack_VoteAndVoter_Inputs

	/*!
	 * Set the value of the Created input for this Choreo.
	*(optional, string) The date (and in recent history also the time) on which the vote was held (in YYYY-MM-DD format).
	 */
	-(void)setCreated:(NSString*)Created {
		[super setInput:@"Created" toValue:Created];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Results are paged 20 per call by default. Set the limit input to a high value to get all of the results at once.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(optional, integer) Specify the ID of a vote object to retrieve just that object's record.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the Option input for this Choreo.
	*(optional, string) The way a particular person voted. The value corresponds to the key of an option returned on the Vote Choreo. See documentation for details.
	 */
	-(void)setOption:(NSString*)Option {
		[super setInput:@"Option" toValue:Option];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) You can order the results by date using fieldname (ascending) or -fieldname (descending), where "fieldname" is either startdate or enddate.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the Person input for this Choreo.
	*(optional, integer) The person making this vote. This is an ID number.
	 */
	-(void)setPerson:(NSString*)Person {
		[super setInput:@"Person" toValue:Person];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify the format of the response. Default is JSON, but XML is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Vote input for this Choreo.
	*(optional, string) The ID number of the vote that this was part of. This is in the form of an ID number.
	 */
	-(void)setVote:(NSString*)Vote {
		[super setInput:@"Vote" toValue:Vote];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VoteAndVoter Choreo.
 */
@implementation TMBGovTrack_VoteAndVoter_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The resopnse from GovTrack.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves how people voted on roll call votes in the U.S. Congress since 1789. 
 */
@implementation TMBGovTrack_VoteAndVoter

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGovTrack_VoteAndVoter Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GovTrack/VoteAndVoter"] autorelease];
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
		TMBGovTrack_VoteAndVoter_ResultSet *results = [[[TMBGovTrack_VoteAndVoter_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VoteAndVoter Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGovTrack_VoteAndVoter_Inputs*)newInputSet {
		return [[[TMBGovTrack_VoteAndVoter_Inputs alloc] init] autorelease];
	}
@end
	
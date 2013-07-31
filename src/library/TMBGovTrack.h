/*!
 * @header Temboo iOS SDK GovTrack classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBGovTrack.Person Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Person Choreo.
 */
@interface TMBGovTrack_Person_Inputs : TMBChoreographyInputSet
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setGender:(NSString*)Gender;
	-(void)setLastName:(NSString*)LastName;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMetaVidID:(NSString*)MetaVidID;
	-(void)setMiddleName:(NSString*)MiddleName;
	-(void)setNameMod:(NSString*)NameMod;
	-(void)setOSID:(NSString*)OSID;
	-(void)setPVSID:(NSString*)PVSID;
	-(void)setPersonID:(NSString*)PersonID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoles:(NSString*)Roles;
	-(void)setTwitterID:(NSString*)TwitterID;
	-(void)setYoutubeID:(NSString*)YoutubeID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Person Choreo.
 */
@interface TMBGovTrack_Person_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns members of Congress and U.S. Presidents since the founding of the nation.
 */
@interface TMBGovTrack_Person : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGovTrack_Person_Inputs*)newInputSet;
@end

/*! group TMBGovTrack_Person Choreo */


/*! group TMBGovTrack.Bill Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Bill Choreo.
 */
@interface TMBGovTrack_Bill_Inputs : TMBChoreographyInputSet
	-(void)setBillID:(NSString*)BillID;
	-(void)setBillType:(NSString*)BillType;
	-(void)setCongress:(NSString*)Congress;
	-(void)setCurrentStatusDate:(NSString*)CurrentStatusDate;
	-(void)setCurrentStatus:(NSString*)CurrentStatus;
	-(void)setIntroducedDate:(NSString*)IntroducedDate;
	-(void)setLimit:(NSString*)Limit;
	-(void)setNumber:(NSString*)Number;
	-(void)setOrder:(NSString*)Order;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSchedulePostdate:(NSString*)SchedulePostdate;
	-(void)setSponsor:(NSString*)Sponsor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Bill Choreo.
 */
@interface TMBGovTrack_Bill_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves bills and resolutions in the U.S. Congress since 1973 (the 93rd Congress).
 */
@interface TMBGovTrack_Bill : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGovTrack_Bill_Inputs*)newInputSet;
@end

/*! group TMBGovTrack_Bill Choreo */


/*! group TMBGovTrack.Role Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Role Choreo.
 */
@interface TMBGovTrack_Role_Inputs : TMBChoreographyInputSet
	-(void)setCurrent:(NSString*)Current;
	-(void)setDistrict:(NSString*)District;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOrder:(NSString*)Order;
	-(void)setParty:(NSString*)Party;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleID:(NSString*)RoleID;
	-(void)setRoleType:(NSString*)RoleType;
	-(void)setSenatorClass:(NSString*)SenatorClass;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Role Choreo.
 */
@interface TMBGovTrack_Role_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns terms held in office by Members of Congress and U.S. Presidents.
 */
@interface TMBGovTrack_Role : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGovTrack_Role_Inputs*)newInputSet;
@end

/*! group TMBGovTrack_Role Choreo */


/*! group TMBGovTrack.Vote Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Vote Choreo.
 */
@interface TMBGovTrack_Vote_Inputs : TMBChoreographyInputSet
	-(void)setCategory:(NSString*)Category;
	-(void)setChamber:(NSString*)Chamber;
	-(void)setCongress:(NSString*)Congress;
	-(void)setCreated:(NSString*)Created;
	-(void)setLimit:(NSString*)Limit;
	-(void)setNumber:(NSString*)Number;
	-(void)setOrder:(NSString*)Order;
	-(void)setRelatedBill:(NSString*)RelatedBill;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSession:(NSString*)Session;
	-(void)setVoteID:(NSString*)VoteID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Vote Choreo.
 */
@interface TMBGovTrack_Vote_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns roll call votes in the U.S. Congress since 1789.
 */
@interface TMBGovTrack_Vote : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGovTrack_Vote_Inputs*)newInputSet;
@end

/*! group TMBGovTrack_Vote Choreo */


/*! group TMBGovTrack.VoteAndVoter Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VoteAndVoter Choreo.
 */
@interface TMBGovTrack_VoteAndVoter_Inputs : TMBChoreographyInputSet
	-(void)setCreated:(NSString*)Created;
	-(void)setLimit:(NSString*)Limit;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setOption:(NSString*)Option;
	-(void)setOrder:(NSString*)Order;
	-(void)setPerson:(NSString*)Person;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVote:(NSString*)Vote;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VoteAndVoter Choreo.
 */
@interface TMBGovTrack_VoteAndVoter_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves how people voted on roll call votes in the U.S. Congress since 1789. 
 */
@interface TMBGovTrack_VoteAndVoter : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGovTrack_VoteAndVoter_Inputs*)newInputSet;
@end

/*! group TMBGovTrack_VoteAndVoter Choreo */

/*!
 * @header Temboo iOS SDK SunlightLabs classes
 *
 * Execute Choreographies from the Temboo SunlightLabs bundle.
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

/*! group TMBSunlightLabs.Congress.Legislator.GetByZip Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetByZip Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetByZip_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetByZip Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetByZip_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns all legislators that currently represent some portion of a given zipcode.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetByZip : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_Legislator_GetByZip_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.Legislator_GetByZip Choreo */


/*! group TMBSunlightLabs.Congress.Legislator.Search Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_Search_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAllLegislators:(NSString*)AllLegislators;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_Search_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Provides a fuzzy-matching text search of the legislators.
 */
@interface TMBSunlightLabs_Congress_Legislator_Search : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_Legislator_Search_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.Legislator_Search Choreo */


/*! group TMBSunlightLabs.CapitolWords.Dates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Dates Choreo.
 */
@interface TMBSunlightLabs_CapitolWords_Dates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBioguideID:(NSString*)BioguideID;
	-(void)setChamber:(NSString*)Chamber;
	-(void)setDate:(NSString*)Date;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setGranularity:(NSString*)Granularity;
	-(void)setMinCount:(NSString*)MinCount;
	-(void)setParty:(NSString*)Party;
	-(void)setPercentages:(NSString*)Percentages;
	-(void)setPhrase:(NSString*)Phrase;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Dates Choreo.
 */
@interface TMBSunlightLabs_CapitolWords_Dates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the popularity of a given phrase in the Congressional Record over time.
 */
@interface TMBSunlightLabs_CapitolWords_Dates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_CapitolWords_Dates_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.CapitolWords_Dates Choreo */


/*! group TMBSunlightLabs.Congress.Legislator.GetByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetByCoordinates Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetByCoordinates Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns all legislators that currently represent an area (district or state) that contains a given Geo point. 
 */
@interface TMBSunlightLabs_Congress_Legislator_GetByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_Legislator_GetByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.Legislator_GetByCoordinates Choreo */


/*! group TMBSunlightLabs.CapitolWords.FullTextSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FullTextSearch Choreo.
 */
@interface TMBSunlightLabs_CapitolWords_FullTextSearch_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBioguideID:(NSString*)BioguideID;
	-(void)setCRPages:(NSString*)CRPages;
	-(void)setChamber:(NSString*)Chamber;
	-(void)setDate:(NSString*)Date;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setPage:(NSString*)Page;
	-(void)setParty:(NSString*)Party;
	-(void)setPhrase:(NSString*)Phrase;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setState:(NSString*)State;
	-(void)setTitle:(NSString*)Title;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FullTextSearch Choreo.
 */
@interface TMBSunlightLabs_CapitolWords_FullTextSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Congressional Record documents in which the given phrase appears.
 */
@interface TMBSunlightLabs_CapitolWords_FullTextSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_CapitolWords_FullTextSearch_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.CapitolWords_FullTextSearch Choreo */


/*! group TMBSunlightLabs.Congress.District.GetDistrictsByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDistrictsByCoordinates Choreo.
 */
@interface TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDistrictsByCoordinates Choreo.
 */
@interface TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the district that a set of latitude/longitude coordinates falls within.
 */
@interface TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.District_GetDistrictsByCoordinates Choreo */


/*! group TMBSunlightLabs.Congress.Legislator.GetLegislator Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLegislator Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetLegislator_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAllLegislators:(NSString*)AllLegislators;
	-(void)setBioguideID:(NSString*)BioguideID;
	-(void)setCRPID:(NSString*)CRPID;
	-(void)setDistrict:(NSString*)District;
	-(void)setFECID:(NSString*)FECID;
	-(void)setFacebookID:(NSString*)FacebookID;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setGender:(NSString*)Gender;
	-(void)setGovTrackID:(NSString*)GovTrackID;
	-(void)setInOffice:(NSString*)InOffice;
	-(void)setLastName:(NSString*)LastName;
	-(void)setParty:(NSString*)Party;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setTitle:(NSString*)Title;
	-(void)setTwitterID:(NSString*)TwitterID;
	-(void)setVoteSmartID:(NSString*)VoteSmartID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLegislator Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetLegislator_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search for information on an individual legislator.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetLegislator : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_Legislator_GetLegislator_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.Legislator_GetLegislator Choreo */


/*! group TMBSunlightLabs.Congress.Committee.GetCommitteesByLegislator Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCommitteesByLegislator Choreo.
 */
@interface TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBioGuideID:(NSString*)BioGuideID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCommitteesByLegislator Choreo.
 */
@interface TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of all committees that a specified member serves on, including subcommittes.
 */
@interface TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.Committee_GetCommitteesByLegislator Choreo */


/*! group TMBSunlightLabs.Congress.Committee.GetList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@interface TMBSunlightLabs_Congress_Committee_GetList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setChamber:(NSString*)Chamber;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@interface TMBSunlightLabs_Congress_Committee_GetList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of all committees for a given chamber along with their subcommittees.
 */
@interface TMBSunlightLabs_Congress_Committee_GetList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_Committee_GetList_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.Committee_GetList Choreo */


/*! group TMBSunlightLabs.CapitolWords.Phrases Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Phrases Choreo.
 */
@interface TMBSunlightLabs_CapitolWords_Phrases_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setChamber:(NSString*)Chamber;
	-(void)setDate:(NSString*)Date;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setEntityType:(NSString*)EntityType;
	-(void)setEntityValue:(NSString*)EntityValue;
	-(void)setLength:(NSString*)Length;
	-(void)setPage:(NSString*)Page;
	-(void)setParty:(NSString*)Party;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Phrases Choreo.
 */
@interface TMBSunlightLabs_CapitolWords_Phrases_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of the top phrases in the Congressional Record, which are searchable by day, month, state, or legislator.
 */
@interface TMBSunlightLabs_CapitolWords_Phrases : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_CapitolWords_Phrases_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.CapitolWords_Phrases Choreo */


/*! group TMBSunlightLabs.Congress.District.GetDistrictsByZip Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDistrictsByZip Choreo.
 */
@interface TMBSunlightLabs_Congress_District_GetDistrictsByZip_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDistrictsByZip Choreo.
 */
@interface TMBSunlightLabs_Congress_District_GetDistrictsByZip_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns all districts that overlap the area for a given zip code.
 */
@interface TMBSunlightLabs_Congress_District_GetDistrictsByZip : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_District_GetDistrictsByZip_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.District_GetDistrictsByZip Choreo */


/*! group TMBSunlightLabs.Congress.Legislator.GetList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAllLegislators:(NSString*)AllLegislators;
	-(void)setBioguideID:(NSString*)BioguideID;
	-(void)setCRPID:(NSString*)CRPID;
	-(void)setDistrict:(NSString*)District;
	-(void)setFECID:(NSString*)FECID;
	-(void)setFacebookID:(NSString*)FacebookID;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setGender:(NSString*)Gender;
	-(void)setGovTrackID:(NSString*)GovTrackID;
	-(void)setInOffice:(NSString*)InOffice;
	-(void)setLastName:(NSString*)LastName;
	-(void)setParty:(NSString*)Party;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setTitle:(NSString*)Title;
	-(void)setTwitterID:(NSString*)TwitterID;
	-(void)setVoteSmartID:(NSString*)VoteSmartID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of legislators that meet a specified search criteria.
 */
@interface TMBSunlightLabs_Congress_Legislator_GetList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_Legislator_GetList_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.Legislator_GetList Choreo */


/*! group TMBSunlightLabs.Congress.Committee.GetCommittee Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCommittee Choreo.
 */
@interface TMBSunlightLabs_Congress_Committee_GetCommittee_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCommittee Choreo.
 */
@interface TMBSunlightLabs_Congress_Committee_GetCommittee_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns details for a committee by id.
 */
@interface TMBSunlightLabs_Congress_Committee_GetCommittee : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_Congress_Committee_GetCommittee_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.Congress.Committee_GetCommittee Choreo */


/*! group TMBSunlightLabs.CapitolWords.TopPhraseSources Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopPhraseSources Choreo.
 */
@interface TMBSunlightLabs_CapitolWords_TopPhraseSources_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setChamber:(NSString*)Chamber;
	-(void)setDate:(NSString*)Date;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setEntity:(NSString*)Entity;
	-(void)setMinCount:(NSString*)MinCount;
	-(void)setPage:(NSString*)Page;
	-(void)setParty:(NSString*)Party;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setPhrase:(NSString*)Phrase;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopPhraseSources Choreo.
 */
@interface TMBSunlightLabs_CapitolWords_TopPhraseSources_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the top sources of a given phrase, which can be sorted either by legislator, state, party, bioguide ID, volume, or chambers.
 */
@interface TMBSunlightLabs_CapitolWords_TopPhraseSources : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSunlightLabs_CapitolWords_TopPhraseSources_Inputs*)newInputSet;
@end

/*! group TMBSunlightLabs.CapitolWords_TopPhraseSources Choreo */

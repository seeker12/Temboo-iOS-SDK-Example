/*!
 * @header Temboo iOS SDK DonorsChoose classes
 *
 * Execute Choreographies from the Temboo DonorsChoose bundle.
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

/*! group TMBDonorsChoose.SearchProjectsByKeyword Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchProjectsByKeyword Choreo.
 */
@interface TMBDonorsChoose_SearchProjectsByKeyword_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setMax:(NSString*)Max;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchProjectsByKeyword Choreo.
 */
@interface TMBDonorsChoose_SearchProjectsByKeyword_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to projects subjects by keyword.
 */
@interface TMBDonorsChoose_SearchProjectsByKeyword : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_SearchProjectsByKeyword_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_SearchProjectsByKeyword Choreo */


/*! group TMBDonorsChoose.MusicAndTheArts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MusicAndTheArts Choreo.
 */
@interface TMBDonorsChoose_MusicAndTheArts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setMax:(NSString*)Max;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShowCounts:(NSString*)ShowCounts;
	-(void)setShowSynopsis:(NSString*)ShowSynopsis;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MusicAndTheArts Choreo.
 */
@interface TMBDonorsChoose_MusicAndTheArts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns results for projects within the Music and The Arts category.
 */
@interface TMBDonorsChoose_MusicAndTheArts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_MusicAndTheArts_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_MusicAndTheArts Choreo */


/*! group TMBDonorsChoose.LiteracyAndLanguage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LiteracyAndLanguage Choreo.
 */
@interface TMBDonorsChoose_LiteracyAndLanguage_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setMax:(NSString*)Max;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShowCounts:(NSString*)ShowCounts;
	-(void)setShowSynopsis:(NSString*)ShowSynopsis;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LiteracyAndLanguage Choreo.
 */
@interface TMBDonorsChoose_LiteracyAndLanguage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns results for projects within the Literacy and Language category.
 */
@interface TMBDonorsChoose_LiteracyAndLanguage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_LiteracyAndLanguage_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_LiteracyAndLanguage Choreo */


/*! group TMBDonorsChoose.HistoryAndCivics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HistoryAndCivics Choreo.
 */
@interface TMBDonorsChoose_HistoryAndCivics_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setMax:(NSString*)Max;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShowCounts:(NSString*)ShowCounts;
	-(void)setShowSynopsis:(NSString*)ShowSynopsis;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HistoryAndCivics Choreo.
 */
@interface TMBDonorsChoose_HistoryAndCivics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns results for projects within the History and Civics category.
 */
@interface TMBDonorsChoose_HistoryAndCivics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_HistoryAndCivics_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_HistoryAndCivics Choreo */


/*! group TMBDonorsChoose.SpecialNeeds Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SpecialNeeds Choreo.
 */
@interface TMBDonorsChoose_SpecialNeeds_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setMax:(NSString*)Max;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShowSynopsis:(NSString*)ShowSynopsis;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SpecialNeeds Choreo.
 */
@interface TMBDonorsChoose_SpecialNeeds_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns results for projects within the Special Needs category.
 */
@interface TMBDonorsChoose_SpecialNeeds : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_SpecialNeeds_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_SpecialNeeds Choreo */


/*! group TMBDonorsChoose.DonateToProject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DonateToProject Choreo.
 */
@interface TMBDonorsChoose_DonateToProject_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIPassword:(NSString*)APIPassword;
	-(void)setAddress1:(NSString*)Address1;
	-(void)setAddress2:(NSString*)Address2;
	-(void)setAmount:(NSString*)Amount;
	-(void)setCallback:(NSString*)Callback;
	-(void)setCity:(NSString*)City;
	-(void)setEmail:(NSString*)Email;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setLastName:(NSString*)LastName;
	-(void)setProposalId:(NSString*)ProposalId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSalutation:(NSString*)Salutation;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DonateToProject Choreo.
 */
@interface TMBDonorsChoose_DonateToProject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Makes a donation to a specified DonorsChoose.org project.
 */
@interface TMBDonorsChoose_DonateToProject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_DonateToProject_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_DonateToProject Choreo */


/*! group TMBDonorsChoose.MathAndScience Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MathAndScience Choreo.
 */
@interface TMBDonorsChoose_MathAndScience_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setMax:(NSString*)Max;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShowSynopsis:(NSString*)ShowSynopsis;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MathAndScience Choreo.
 */
@interface TMBDonorsChoose_MathAndScience_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns results for projects within the Math and Science category.
 */
@interface TMBDonorsChoose_MathAndScience : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_MathAndScience_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_MathAndScience Choreo */


/*! group TMBDonorsChoose.AppliedLearning Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AppliedLearning Choreo.
 */
@interface TMBDonorsChoose_AppliedLearning_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setMax:(NSString*)Max;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShowCounts:(NSString*)ShowCounts;
	-(void)setShowSynopsis:(NSString*)ShowSynopsis;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AppliedLearning Choreo.
 */
@interface TMBDonorsChoose_AppliedLearning_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns results for projects within the Applied Learning category.
 */
@interface TMBDonorsChoose_AppliedLearning : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_AppliedLearning_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_AppliedLearning Choreo */


/*! group TMBDonorsChoose.HealthAndSports Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HealthAndSports Choreo.
 */
@interface TMBDonorsChoose_HealthAndSports_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setIndex:(NSString*)Index;
	-(void)setMax:(NSString*)Max;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShowCounts:(NSString*)ShowCounts;
	-(void)setShowSynopsis:(NSString*)ShowSynopsis;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HealthAndSports Choreo.
 */
@interface TMBDonorsChoose_HealthAndSports_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns results for projects within the Health and Sports category.
 */
@interface TMBDonorsChoose_HealthAndSports : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDonorsChoose_HealthAndSports_Inputs*)newInputSet;
@end

/*! group TMBDonorsChoose_HealthAndSports Choreo */

/*!
 * @header Temboo iOS SDK SchoolFinder classes
 *
 * Execute Choreographies from the Temboo SchoolFinder bundle.
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

/*! group TMBSchoolFinder.GetTestRating Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTestRating Choreo.
 */
@interface TMBSchoolFinder_GetTestRating_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCity:(NSString*)City;
	-(void)setNCES:(NSString*)NCES;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSchoolID:(NSString*)SchoolID;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTestRating Choreo.
 */
@interface TMBSchoolFinder_GetTestRating_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the Education.com TestRating for a single school or schools within a city or zip code. 
 */
@interface TMBSchoolFinder_GetTestRating : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_GetTestRating_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_GetTestRating Choreo */


/*! group TMBSchoolFinder.SchoolSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SchoolSearch Choreo.
 */
@interface TMBSchoolFinder_SchoolSearch_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCity:(NSString*)City;
	-(void)setCounty:(NSString*)County;
	-(void)setDistance:(NSString*)Distance;
	-(void)setDistrictID:(NSString*)DistrictID;
	-(void)setDistrictLEA:(NSString*)DistrictLEA;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setMinResult:(NSString*)MinResult;
	-(void)setNCES:(NSString*)NCES;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSchoolID:(NSString*)SchoolID;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SchoolSearch Choreo.
 */
@interface TMBSchoolFinder_SchoolSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of school district profiles and related school information for a zip code, city, state, or other criteria in the search parameters.
 */
@interface TMBSchoolFinder_SchoolSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_SchoolSearch_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_SchoolSearch Choreo */


/*! group TMBSchoolFinder.GetTestScores Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTestScores Choreo.
 */
@interface TMBSchoolFinder_GetTestScores_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDistrictID:(NSString*)DistrictID;
	-(void)setDistrictLEA:(NSString*)DistrictLEA;
	-(void)setNCES:(NSString*)NCES;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSchoolID:(NSString*)SchoolID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTestScores Choreo.
 */
@interface TMBSchoolFinder_GetTestScores_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns test scores for a school, district, city or state. 


 */
@interface TMBSchoolFinder_GetTestScores : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_GetTestScores_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_GetTestScores Choreo */


/*! group TMBSchoolFinder.GetTeacherStats Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTeacherStats Choreo.
 */
@interface TMBSchoolFinder_GetTeacherStats_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDistrictID:(NSString*)DistrictID;
	-(void)setDistrictLEA:(NSString*)DistrictLEA;
	-(void)setNCES:(NSString*)NCES;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSchoolID:(NSString*)SchoolID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeacherStats Choreo.
 */
@interface TMBSchoolFinder_GetTeacherStats_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns teacher statistics for a school, district, or state. 
 */
@interface TMBSchoolFinder_GetTeacherStats : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_GetTeacherStats_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_GetTeacherStats Choreo */


/*! group TMBSchoolFinder.DistrictSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DistrictSearch Choreo.
 */
@interface TMBSchoolFinder_DistrictSearch_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCity:(NSString*)City;
	-(void)setDistrictID:(NSString*)DistrictID;
	-(void)setDistrictLEA:(NSString*)DistrictLEA;
	-(void)setDistrictName:(NSString*)DistrictName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DistrictSearch Choreo.
 */
@interface TMBSchoolFinder_DistrictSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of school profiles and related school information for a zip code, city, state, or other criteria in the search parameters.
 */
@interface TMBSchoolFinder_DistrictSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_DistrictSearch_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_DistrictSearch Choreo */


/*! group TMBSchoolFinder.GetStudentStats Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetStudentStats Choreo.
 */
@interface TMBSchoolFinder_GetStudentStats_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCity:(NSString*)City;
	-(void)setDistrictID:(NSString*)DistrictID;
	-(void)setDistrictLEA:(NSString*)DistrictLEA;
	-(void)setNCES:(NSString*)NCES;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSchoolID:(NSString*)SchoolID;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetStudentStats Choreo.
 */
@interface TMBSchoolFinder_GetStudentStats_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns student statistics for a single school, city, or state. 
 */
@interface TMBSchoolFinder_GetStudentStats : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_GetStudentStats_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_GetStudentStats Choreo */


/*! group TMBSchoolFinder.GetReviews Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReviews Choreo.
 */
@interface TMBSchoolFinder_GetReviews_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setNCES:(NSString*)NCES;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSchoolID:(NSString*)SchoolID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReviews Choreo.
 */
@interface TMBSchoolFinder_GetReviews_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of the most recent school reviews and parent rating for a single school.
 */
@interface TMBSchoolFinder_GetReviews : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_GetReviews_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_GetReviews Choreo */


/*! group TMBSchoolFinder.NumberOf Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the NumberOf Choreo.
 */
@interface TMBSchoolFinder_NumberOf_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCity:(NSString*)City;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NumberOf Choreo.
 */
@interface TMBSchoolFinder_NumberOf_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the total number of schools, the number of schools at each level (elementary, middle, high) and the number of each type of school (public, private, charter) in a given city. 
 */
@interface TMBSchoolFinder_NumberOf : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_NumberOf_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_NumberOf Choreo */


/*! group TMBSchoolFinder.GBD Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GBD Choreo.
 */
@interface TMBSchoolFinder_GBD_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCity:(NSString*)City;
	-(void)setDistrictID:(NSString*)DistrictID;
	-(void)setNCES:(NSString*)NCES;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSchoolID:(NSString*)SchoolID;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GBD Choreo.
 */
@interface TMBSchoolFinder_GBD_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns contextual and branding links to Education.com. 
 */
@interface TMBSchoolFinder_GBD : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSchoolFinder_GBD_Inputs*)newInputSet;
@end

/*! group TMBSchoolFinder_GBD Choreo */

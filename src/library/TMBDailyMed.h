/*!
 * @header Temboo iOS SDK DailyMed classes
 *
 * Execute Choreographies from the Temboo DailyMed bundle.
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

/*! group TMBDailyMed.GetComponents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetComponents Choreo.
 */
@interface TMBDailyMed_GetComponents_Inputs : TMBChoreographyInputSet
	-(void)setSetID:(NSString*)SetID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComponents Choreo.
 */
@interface TMBDailyMed_GetComponents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns imprint data associated with a given National Drug Code (NDC) in the DailyMed database.
 */
@interface TMBDailyMed_GetComponents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDailyMed_GetComponents_Inputs*)newInputSet;
@end

/*! group TMBDailyMed_GetComponents Choreo */


/*! group TMBDailyMed.SearchByNDC Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByNDC Choreo.
 */
@interface TMBDailyMed_SearchByNDC_Inputs : TMBChoreographyInputSet
	-(void)setNDC:(NSString*)NDC;
	-(void)setOutputFormat:(NSString*)OutputFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByNDC Choreo.
 */
@interface TMBDailyMed_SearchByNDC_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of drugs in the DailyMed database associated with a given National Drug Code (NDC).
 */
@interface TMBDailyMed_SearchByNDC : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDailyMed_SearchByNDC_Inputs*)newInputSet;
@end

/*! group TMBDailyMed_SearchByNDC Choreo */


/*! group TMBDailyMed.SearchByName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByName Choreo.
 */
@interface TMBDailyMed_SearchByName_Inputs : TMBChoreographyInputSet
	-(void)setDrugName:(NSString*)DrugName;
	-(void)setLabelType:(NSString*)LabelType;
	-(void)setOutputFormat:(NSString*)OutputFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByName Choreo.
 */
@interface TMBDailyMed_SearchByName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of drugs in the DailyMed database associated with a given drug name.
 */
@interface TMBDailyMed_SearchByName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDailyMed_SearchByName_Inputs*)newInputSet;
@end

/*! group TMBDailyMed_SearchByName Choreo */


/*! group TMBDailyMed.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBDailyMed_Query_Inputs : TMBChoreographyInputSet
	-(void)setComponents:(NSString*)Components;
	-(void)setSetID:(NSString*)SetID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBDailyMed_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the records available in the DailyMed database associated with a given drug.
 */
@interface TMBDailyMed_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDailyMed_Query_Inputs*)newInputSet;
@end

/*! group TMBDailyMed_Query Choreo */

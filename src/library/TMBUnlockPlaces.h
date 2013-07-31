/*!
 * @header Temboo iOS SDK UnlockPlaces classes
 *
 * Execute Choreographies from the Temboo UnlockPlaces bundle.
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

/*! group TMBUnlockPlaces.ClosestMatchSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ClosestMatchSearch Choreo.
 */
@interface TMBUnlockPlaces_ClosestMatchSearch_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setName:(NSString*)Name;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ClosestMatchSearch Choreo.
 */
@interface TMBUnlockPlaces_ClosestMatchSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for the closest match for a place.
 */
@interface TMBUnlockPlaces_ClosestMatchSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_ClosestMatchSearch_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_ClosestMatchSearch Choreo */


/*! group TMBUnlockPlaces.NameAndFeatureSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the NameAndFeatureSearch Choreo.
 */
@interface TMBUnlockPlaces_NameAndFeatureSearch_Inputs : TMBChoreographyInputSet
	-(void)setFeatureType:(NSString*)FeatureType;
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setName:(NSString*)Name;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NameAndFeatureSearch Choreo.
 */
@interface TMBUnlockPlaces_NameAndFeatureSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for names of places with a specified feature type.
 */
@interface TMBUnlockPlaces_NameAndFeatureSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_NameAndFeatureSearch_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_NameAndFeatureSearch Choreo */


/*! group TMBUnlockPlaces.FootprintLookup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FootprintLookup Choreo.
 */
@interface TMBUnlockPlaces_FootprintLookup_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setIdentifier:(NSString*)Identifier;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FootprintLookup Choreo.
 */
@interface TMBUnlockPlaces_FootprintLookup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the footprint for a specified place identifier.
 */
@interface TMBUnlockPlaces_FootprintLookup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_FootprintLookup_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_FootprintLookup Choreo */


/*! group TMBUnlockPlaces.UniqueNameSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UniqueNameSearch Choreo.
 */
@interface TMBUnlockPlaces_UniqueNameSearch_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setName:(NSString*)Name;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UniqueNameSearch Choreo.
 */
@interface TMBUnlockPlaces_UniqueNameSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search for the specified unique name, returning a single result per feature.
 */
@interface TMBUnlockPlaces_UniqueNameSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_UniqueNameSearch_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_UniqueNameSearch Choreo */


/*! group TMBUnlockPlaces.SpacialNameSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SpacialNameSearch Choreo.
 */
@interface TMBUnlockPlaces_SpacialNameSearch_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setMaxLatitude:(NSString*)MaxLatitude;
	-(void)setMaxLongitude:(NSString*)MaxLongitude;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setMinLatitude:(NSString*)MinLatitude;
	-(void)setMinLongitude:(NSString*)MinLongitude;
	-(void)setName:(NSString*)Name;
	-(void)setOperator:(NSString*)Operator;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SpacialNameSearch Choreo.
 */
@interface TMBUnlockPlaces_SpacialNameSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for names of places within a specified bounding box.
 */
@interface TMBUnlockPlaces_SpacialNameSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_SpacialNameSearch_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_SpacialNameSearch Choreo */


/*! group TMBUnlockPlaces.SupportedFeatureTypes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SupportedFeatureTypes Choreo.
 */
@interface TMBUnlockPlaces_SupportedFeatureTypes_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SupportedFeatureTypes Choreo.
 */
@interface TMBUnlockPlaces_SupportedFeatureTypes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of supported feature types that can be used in searches.
 */
@interface TMBUnlockPlaces_SupportedFeatureTypes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_SupportedFeatureTypes_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_SupportedFeatureTypes Choreo */


/*! group TMBUnlockPlaces.SpacialFeaturesSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SpacialFeaturesSearch Choreo.
 */
@interface TMBUnlockPlaces_SpacialFeaturesSearch_Inputs : TMBChoreographyInputSet
	-(void)setFeatureType:(NSString*)FeatureType;
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setMaxLatitude:(NSString*)MaxLatitude;
	-(void)setMaxLongitude:(NSString*)MaxLongitude;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setMinLatitude:(NSString*)MinLatitude;
	-(void)setMinLongitude:(NSString*)MinLongitude;
	-(void)setOperator:(NSString*)Operator;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SpacialFeaturesSearch Choreo.
 */
@interface TMBUnlockPlaces_SpacialFeaturesSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for feature types within a specified bounding box.
 */
@interface TMBUnlockPlaces_SpacialFeaturesSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_SpacialFeaturesSearch_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_SpacialFeaturesSearch Choreo */


/*! group TMBUnlockPlaces.NameSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the NameSearch Choreo.
 */
@interface TMBUnlockPlaces_NameSearch_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setName:(NSString*)Name;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NameSearch Choreo.
 */
@interface TMBUnlockPlaces_NameSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Basic query for a search by name, which will return a list of matching features for a specified place.
 */
@interface TMBUnlockPlaces_NameSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_NameSearch_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_NameSearch Choreo */


/*! group TMBUnlockPlaces.PostCodeSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PostCodeSearch Choreo.
 */
@interface TMBUnlockPlaces_PostCodeSearch_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setPostCode:(NSString*)PostCode;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PostCodeSearch Choreo.
 */
@interface TMBUnlockPlaces_PostCodeSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for places by postal code.
 */
@interface TMBUnlockPlaces_PostCodeSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_PostCodeSearch_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_PostCodeSearch Choreo */


/*! group TMBUnlockPlaces.FeatureLookup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FeatureLookup Choreo.
 */
@interface TMBUnlockPlaces_FeatureLookup_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setGazetteer:(NSString*)Gazetteer;
	-(void)setID:(NSString*)ID;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setStartRow:(NSString*)StartRow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FeatureLookup Choreo.
 */
@interface TMBUnlockPlaces_FeatureLookup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for features by ID.
 */
@interface TMBUnlockPlaces_FeatureLookup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUnlockPlaces_FeatureLookup_Inputs*)newInputSet;
@end

/*! group TMBUnlockPlaces_FeatureLookup Choreo */

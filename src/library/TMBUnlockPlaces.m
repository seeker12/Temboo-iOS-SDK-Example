/*!
 * @TMBUnlockPlaces.m
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

#import "TMBUnlockPlaces.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ClosestMatchSearch Choreo.
 */
@implementation TMBUnlockPlaces_ClosestMatchSearch_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) One or more names of places to search for (separated by commas).
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ClosestMatchSearch Choreo.
 */
@implementation TMBUnlockPlaces_ClosestMatchSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for the closest match for a place.
 */
@implementation TMBUnlockPlaces_ClosestMatchSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_ClosestMatchSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/ClosestMatchSearch"] autorelease];
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
		TMBUnlockPlaces_ClosestMatchSearch_ResultSet *results = [[[TMBUnlockPlaces_ClosestMatchSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ClosestMatchSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_ClosestMatchSearch_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_ClosestMatchSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the NameAndFeatureSearch Choreo.
 */
@implementation TMBUnlockPlaces_NameAndFeatureSearch_Inputs

	/*!
	 * Set the value of the FeatureType input for this Choreo.
	*(required, string) The feature type that the place is (i.e. "Cities"). See http://unlock.edina.ac.uk/ws/supportedFeatureTypes?format=txt for a complete list of supported Feature Types.
	 */
	-(void)setFeatureType:(NSString*)FeatureType {
		[super setInput:@"FeatureType" toValue:FeatureType];
	}

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) One or more names of places to search for (separated by commas).
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NameAndFeatureSearch Choreo.
 */
@implementation TMBUnlockPlaces_NameAndFeatureSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for names of places with a specified feature type.
 */
@implementation TMBUnlockPlaces_NameAndFeatureSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_NameAndFeatureSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/NameAndFeatureSearch"] autorelease];
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
		TMBUnlockPlaces_NameAndFeatureSearch_ResultSet *results = [[[TMBUnlockPlaces_NameAndFeatureSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the NameAndFeatureSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_NameAndFeatureSearch_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_NameAndFeatureSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FootprintLookup Choreo.
 */
@implementation TMBUnlockPlaces_FootprintLookup_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the Identifier input for this Choreo.
	*(required, integer) The place identifier that you want to use for the search. Note that this identifier is returned in the <geometryRef> response element of other Unlock Places search Choreos.
	 */
	-(void)setIdentifier:(NSString*)Identifier {
		[super setInput:@"Identifier" toValue:Identifier];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FootprintLookup Choreo.
 */
@implementation TMBUnlockPlaces_FootprintLookup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the footprint for a specified place identifier.
 */
@implementation TMBUnlockPlaces_FootprintLookup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_FootprintLookup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/FootprintLookup"] autorelease];
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
		TMBUnlockPlaces_FootprintLookup_ResultSet *results = [[[TMBUnlockPlaces_FootprintLookup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FootprintLookup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_FootprintLookup_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_FootprintLookup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UniqueNameSearch Choreo.
 */
@implementation TMBUnlockPlaces_UniqueNameSearch_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) One or more names of places to search for (separated by commas).
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UniqueNameSearch Choreo.
 */
@implementation TMBUnlockPlaces_UniqueNameSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search for the specified unique name, returning a single result per feature.
 */
@implementation TMBUnlockPlaces_UniqueNameSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_UniqueNameSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/UniqueNameSearch"] autorelease];
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
		TMBUnlockPlaces_UniqueNameSearch_ResultSet *results = [[[TMBUnlockPlaces_UniqueNameSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UniqueNameSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_UniqueNameSearch_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_UniqueNameSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SpacialNameSearch Choreo.
 */
@implementation TMBUnlockPlaces_SpacialNameSearch_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the MaxLatitude input for this Choreo.
	*(required, decimal) The maximum latitude point of a bounding box.
	 */
	-(void)setMaxLatitude:(NSString*)MaxLatitude {
		[super setInput:@"MaxLatitude" toValue:MaxLatitude];
	}

	/*!
	 * Set the value of the MaxLongitude input for this Choreo.
	*(required, decimal) The maximum longitude point of a bounding box.
	 */
	-(void)setMaxLongitude:(NSString*)MaxLongitude {
		[super setInput:@"MaxLongitude" toValue:MaxLongitude];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the MinLatitude input for this Choreo.
	*(required, decimal) The minimum latitude point of a bounding box.
	 */
	-(void)setMinLatitude:(NSString*)MinLatitude {
		[super setInput:@"MinLatitude" toValue:MinLatitude];
	}

	/*!
	 * Set the value of the MinLongitude input for this Choreo.
	*(required, decimal) The minimum longitude point of a bounding box.
	 */
	-(void)setMinLongitude:(NSString*)MinLongitude {
		[super setInput:@"MinLongitude" toValue:MinLongitude];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) One or more names of places to search for (separated by commas).
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Operator input for this Choreo.
	*(optional, any) Valid values are: "within" and "intersect". The results will therefore be entirely within, or overlapping with (intersecting), the bounding box. Defaults to "within".
	 */
	-(void)setOperator:(NSString*)Operator {
		[super setInput:@"Operator" toValue:Operator];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SpacialNameSearch Choreo.
 */
@implementation TMBUnlockPlaces_SpacialNameSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for names of places within a specified bounding box.
 */
@implementation TMBUnlockPlaces_SpacialNameSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_SpacialNameSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/SpacialNameSearch"] autorelease];
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
		TMBUnlockPlaces_SpacialNameSearch_ResultSet *results = [[[TMBUnlockPlaces_SpacialNameSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SpacialNameSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_SpacialNameSearch_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_SpacialNameSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SupportedFeatureTypes Choreo.
 */
@implementation TMBUnlockPlaces_SupportedFeatureTypes_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SupportedFeatureTypes Choreo.
 */
@implementation TMBUnlockPlaces_SupportedFeatureTypes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of supported feature types that can be used in searches.
 */
@implementation TMBUnlockPlaces_SupportedFeatureTypes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_SupportedFeatureTypes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/SupportedFeatureTypes"] autorelease];
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
		TMBUnlockPlaces_SupportedFeatureTypes_ResultSet *results = [[[TMBUnlockPlaces_SupportedFeatureTypes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SupportedFeatureTypes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_SupportedFeatureTypes_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_SupportedFeatureTypes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SpacialFeaturesSearch Choreo.
 */
@implementation TMBUnlockPlaces_SpacialFeaturesSearch_Inputs

	/*!
	 * Set the value of the FeatureType input for this Choreo.
	*(string) The feature type that the place is (i.e. "Cities"). See http://unlock.edina.ac.uk/ws/supportedFeatureTypes?format=txt for a complete list of supported Feature Types.
	 */
	-(void)setFeatureType:(NSString*)FeatureType {
		[super setInput:@"FeatureType" toValue:FeatureType];
	}

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the MaxLatitude input for this Choreo.
	*(decimal) The maximum latitude point of a bounding box.
	 */
	-(void)setMaxLatitude:(NSString*)MaxLatitude {
		[super setInput:@"MaxLatitude" toValue:MaxLatitude];
	}

	/*!
	 * Set the value of the MaxLongitude input for this Choreo.
	*(decimal) The maximum longitude point of a bounding box.
	 */
	-(void)setMaxLongitude:(NSString*)MaxLongitude {
		[super setInput:@"MaxLongitude" toValue:MaxLongitude];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the MinLatitude input for this Choreo.
	*(decimal) The minimum latitude point of a bounding box.
	 */
	-(void)setMinLatitude:(NSString*)MinLatitude {
		[super setInput:@"MinLatitude" toValue:MinLatitude];
	}

	/*!
	 * Set the value of the MinLongitude input for this Choreo.
	*(decimal) The minimum longitude point of a bounding box.
	 */
	-(void)setMinLongitude:(NSString*)MinLongitude {
		[super setInput:@"MinLongitude" toValue:MinLongitude];
	}

	/*!
	 * Set the value of the Operator input for this Choreo.
	*Valid values are: "within" and "intersect". The results will therefore be entirely within, or overlapping with (intersecting), the bounding box. Defaults to "within".
	 */
	-(void)setOperator:(NSString*)Operator {
		[super setInput:@"Operator" toValue:Operator];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SpacialFeaturesSearch Choreo.
 */
@implementation TMBUnlockPlaces_SpacialFeaturesSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for feature types within a specified bounding box.
 */
@implementation TMBUnlockPlaces_SpacialFeaturesSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_SpacialFeaturesSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/SpacialFeaturesSearch"] autorelease];
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
		TMBUnlockPlaces_SpacialFeaturesSearch_ResultSet *results = [[[TMBUnlockPlaces_SpacialFeaturesSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SpacialFeaturesSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_SpacialFeaturesSearch_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_SpacialFeaturesSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the NameSearch Choreo.
 */
@implementation TMBUnlockPlaces_NameSearch_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) One or more names of places to search for (separated by commas).
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NameSearch Choreo.
 */
@implementation TMBUnlockPlaces_NameSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Basic query for a search by name, which will return a list of matching features for a specified place.
 */
@implementation TMBUnlockPlaces_NameSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_NameSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/NameSearch"] autorelease];
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
		TMBUnlockPlaces_NameSearch_ResultSet *results = [[[TMBUnlockPlaces_NameSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the NameSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_NameSearch_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_NameSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PostCodeSearch Choreo.
 */
@implementation TMBUnlockPlaces_PostCodeSearch_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the PostCode input for this Choreo.
	*(required, string) A UK postal code to use for the search.
	 */
	-(void)setPostCode:(NSString*)PostCode {
		[super setInput:@"PostCode" toValue:PostCode];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PostCodeSearch Choreo.
 */
@implementation TMBUnlockPlaces_PostCodeSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for places by postal code.
 */
@implementation TMBUnlockPlaces_PostCodeSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_PostCodeSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/PostCodeSearch"] autorelease];
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
		TMBUnlockPlaces_PostCodeSearch_ResultSet *results = [[[TMBUnlockPlaces_PostCodeSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PostCodeSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_PostCodeSearch_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_PostCodeSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FeatureLookup Choreo.
 */
@implementation TMBUnlockPlaces_FeatureLookup_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Gazetteer input for this Choreo.
	*(optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
	 */
	-(void)setGazetteer:(NSString*)Gazetteer {
		[super setInput:@"Gazetteer" toValue:Gazetteer];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the feature you want to search for. Note that this identifier is returned in the <id> response element of the NameAndFeatureSearch Choreo.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the StartRow input for this Choreo.
	*(optional, integer) The row to start results display from. Defaults to 1.
	 */
	-(void)setStartRow:(NSString*)StartRow {
		[super setInput:@"StartRow" toValue:StartRow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FeatureLookup Choreo.
 */
@implementation TMBUnlockPlaces_FeatureLookup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Unlock. Defaults to XML based on the format input parameter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for features by ID.
 */
@implementation TMBUnlockPlaces_FeatureLookup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUnlockPlaces_FeatureLookup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/UnlockPlaces/FeatureLookup"] autorelease];
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
		TMBUnlockPlaces_FeatureLookup_ResultSet *results = [[[TMBUnlockPlaces_FeatureLookup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FeatureLookup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUnlockPlaces_FeatureLookup_Inputs*)newInputSet {
		return [[[TMBUnlockPlaces_FeatureLookup_Inputs alloc] init] autorelease];
	}
@end
	
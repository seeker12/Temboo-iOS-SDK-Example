/*!
 * @TMBSchoolFinder.m
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

#import "TMBSchoolFinder.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetTestRating Choreo.
 */
@implementation TMBSchoolFinder_GetTestRating_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(conditional, string) The name of a city. Must also be accompanied by the corresponding state parameter.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the NCES input for this Choreo.
	*(conditional, string) The National Center for Education Statistics (NCES) id of the school.
	 */
	-(void)setNCES:(NSString*)NCES {
		[super setInput:@"NCES" toValue:NCES];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SchoolID input for this Choreo.
	*(conditional, string) The Education.com id of the school you want to find.
	 */
	-(void)setSchoolID:(NSString*)SchoolID {
		[super setInput:@"SchoolID" toValue:SchoolID];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(conditional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(conditional, integer) A five digit US postal code.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTestRating Choreo.
 */
@implementation TMBSchoolFinder_GetTestRating_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the Education.com TestRating for a single school or schools within a city or zip code. 
 */
@implementation TMBSchoolFinder_GetTestRating

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_GetTestRating Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/GetTestRating"] autorelease];
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
		TMBSchoolFinder_GetTestRating_ResultSet *results = [[[TMBSchoolFinder_GetTestRating_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTestRating Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_GetTestRating_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_GetTestRating_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SchoolSearch Choreo.
 */
@implementation TMBSchoolFinder_SchoolSearch_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(conditional, string) The name of a city. Must also be accompanied by the corresponding state parameter.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the County input for this Choreo.
	*(conditional, string) The name of a county.
	 */
	-(void)setCounty:(NSString*)County {
		[super setInput:@"County" toValue:County];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(conditional, decimal) A distance in miles from a specific latitude/longitude. The suggested value is around 1.5 miles. Please note that distance is required when using latitude and longitude parameters.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the DistrictID input for this Choreo.
	*(optional, string) The internal Education.com id of a school district.
	 */
	-(void)setDistrictID:(NSString*)DistrictID {
		[super setInput:@"DistrictID" toValue:DistrictID];
	}

	/*!
	 * Set the value of the DistrictLEA input for this Choreo.
	*(optional, string) The NCES Local Education Agency (LEA) id of a school district.
	 */
	-(void)setDistrictLEA:(NSString*)DistrictLEA {
		[super setInput:@"DistrictLEA" toValue:DistrictLEA];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(conditional, decimal) A latitude which serves as the center for distance searches. Please note that distance is required when using latitude and longitude parameters.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) A longitude which serves as the center for distance searches. Please note that distance is required when using latitude and longitude parameters.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the MinResult input for this Choreo.
	*(optional, decimal) Minimum number of search results to return. The search will be expanded in increments of 0.5 miles until the minresult is reached. minResult is only valid for zip code and latitude/longitude requests.
	 */
	-(void)setMinResult:(NSString*)MinResult {
		[super setInput:@"MinResult" toValue:MinResult];
	}

	/*!
	 * Set the value of the NCES input for this Choreo.
	*(optional, string) The National Center for Education Statistics (NCES) id of the school you want to find.
	 */
	-(void)setNCES:(NSString*)NCES {
		[super setInput:@"NCES" toValue:NCES];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SchoolID input for this Choreo.
	*(optional, string) The Education.com id of the school you want to find.
	 */
	-(void)setSchoolID:(NSString*)SchoolID {
		[super setInput:@"SchoolID" toValue:SchoolID];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(conditional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(conditional, integer) A five digit US postal code.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SchoolSearch Choreo.
 */
@implementation TMBSchoolFinder_SchoolSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of school district profiles and related school information for a zip code, city, state, or other criteria in the search parameters.
 */
@implementation TMBSchoolFinder_SchoolSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_SchoolSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/SchoolSearch"] autorelease];
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
		TMBSchoolFinder_SchoolSearch_ResultSet *results = [[[TMBSchoolFinder_SchoolSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SchoolSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_SchoolSearch_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_SchoolSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTestScores Choreo.
 */
@implementation TMBSchoolFinder_GetTestScores_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DistrictID input for this Choreo.
	*(conditional, string) The education.com district id.
	 */
	-(void)setDistrictID:(NSString*)DistrictID {
		[super setInput:@"DistrictID" toValue:DistrictID];
	}

	/*!
	 * Set the value of the DistrictLEA input for this Choreo.
	*(conditional, string) The LEA id of the district.
	 */
	-(void)setDistrictLEA:(NSString*)DistrictLEA {
		[super setInput:@"DistrictLEA" toValue:DistrictLEA];
	}

	/*!
	 * Set the value of the NCES input for this Choreo.
	*(conditional, string) The National Center for Education Statistics (NCES) id of the school.
	 */
	-(void)setNCES:(NSString*)NCES {
		[super setInput:@"NCES" toValue:NCES];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SchoolID input for this Choreo.
	*(conditional, string) The Education.com id of the school you want to find.
	 */
	-(void)setSchoolID:(NSString*)SchoolID {
		[super setInput:@"SchoolID" toValue:SchoolID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTestScores Choreo.
 */
@implementation TMBSchoolFinder_GetTestScores_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns test scores for a school, district, city or state. 


 */
@implementation TMBSchoolFinder_GetTestScores

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_GetTestScores Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/GetTestScores"] autorelease];
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
		TMBSchoolFinder_GetTestScores_ResultSet *results = [[[TMBSchoolFinder_GetTestScores_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTestScores Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_GetTestScores_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_GetTestScores_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTeacherStats Choreo.
 */
@implementation TMBSchoolFinder_GetTeacherStats_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DistrictID input for this Choreo.
	*(conditional, string) The education.com district id.
	 */
	-(void)setDistrictID:(NSString*)DistrictID {
		[super setInput:@"DistrictID" toValue:DistrictID];
	}

	/*!
	 * Set the value of the DistrictLEA input for this Choreo.
	*(conditional, string) The LEA id of the district.
	 */
	-(void)setDistrictLEA:(NSString*)DistrictLEA {
		[super setInput:@"DistrictLEA" toValue:DistrictLEA];
	}

	/*!
	 * Set the value of the NCES input for this Choreo.
	*(conditional, string) The National Center for Education Statistics (NCES) id of the school.
	 */
	-(void)setNCES:(NSString*)NCES {
		[super setInput:@"NCES" toValue:NCES];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SchoolID input for this Choreo.
	*(conditional, string) The Education.com id of the school you want to find.
	 */
	-(void)setSchoolID:(NSString*)SchoolID {
		[super setInput:@"SchoolID" toValue:SchoolID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeacherStats Choreo.
 */
@implementation TMBSchoolFinder_GetTeacherStats_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns teacher statistics for a school, district, or state. 
 */
@implementation TMBSchoolFinder_GetTeacherStats

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_GetTeacherStats Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/GetTeacherStats"] autorelease];
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
		TMBSchoolFinder_GetTeacherStats_ResultSet *results = [[[TMBSchoolFinder_GetTeacherStats_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTeacherStats Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_GetTeacherStats_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_GetTeacherStats_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DistrictSearch Choreo.
 */
@implementation TMBSchoolFinder_DistrictSearch_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(conditional, string) The name of a city. City requests must also be accompanied by the corresponding state parameter.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the DistrictID input for this Choreo.
	*(conditional, string) The internal Education.com id of a school district.
	 */
	-(void)setDistrictID:(NSString*)DistrictID {
		[super setInput:@"DistrictID" toValue:DistrictID];
	}

	/*!
	 * Set the value of the DistrictLEA input for this Choreo.
	*(conditional, string) The NCES Local Education Agency (LEA) id of a school district.
	 */
	-(void)setDistrictLEA:(NSString*)DistrictLEA {
		[super setInput:@"DistrictLEA" toValue:DistrictLEA];
	}

	/*!
	 * Set the value of the DistrictName input for this Choreo.
	*(conditional, string) The name of the district.
	 */
	-(void)setDistrictName:(NSString*)DistrictName {
		[super setInput:@"DistrictName" toValue:DistrictName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(conditional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DistrictSearch Choreo.
 */
@implementation TMBSchoolFinder_DistrictSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of school profiles and related school information for a zip code, city, state, or other criteria in the search parameters.
 */
@implementation TMBSchoolFinder_DistrictSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_DistrictSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/DistrictSearch"] autorelease];
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
		TMBSchoolFinder_DistrictSearch_ResultSet *results = [[[TMBSchoolFinder_DistrictSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DistrictSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_DistrictSearch_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_DistrictSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetStudentStats Choreo.
 */
@implementation TMBSchoolFinder_GetStudentStats_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) The name of a city. Please note cities composed of two words should be formatted with a plus sign e.g. “san+Francisco.” City requests must also be accompanied by the corresponding state parameter.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the DistrictID input for this Choreo.
	*(conditional, string) The education.com district id.
	 */
	-(void)setDistrictID:(NSString*)DistrictID {
		[super setInput:@"DistrictID" toValue:DistrictID];
	}

	/*!
	 * Set the value of the DistrictLEA input for this Choreo.
	*(conditional, string) The LEA id of the district.
	 */
	-(void)setDistrictLEA:(NSString*)DistrictLEA {
		[super setInput:@"DistrictLEA" toValue:DistrictLEA];
	}

	/*!
	 * Set the value of the NCES input for this Choreo.
	*(conditional, string) The National Center for Education Statistics (NCES) id of the school.
	 */
	-(void)setNCES:(NSString*)NCES {
		[super setInput:@"NCES" toValue:NCES];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(conditional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SchoolID input for this Choreo.
	*(conditional, string) The Education.com id of the school you want to find.
	 */
	-(void)setSchoolID:(NSString*)SchoolID {
		[super setInput:@"SchoolID" toValue:SchoolID];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, integer) A five digit US postal code.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetStudentStats Choreo.
 */
@implementation TMBSchoolFinder_GetStudentStats_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns student statistics for a single school, city, or state. 
 */
@implementation TMBSchoolFinder_GetStudentStats

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_GetStudentStats Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/GetStudentStats"] autorelease];
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
		TMBSchoolFinder_GetStudentStats_ResultSet *results = [[[TMBSchoolFinder_GetStudentStats_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetStudentStats Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_GetStudentStats_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_GetStudentStats_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReviews Choreo.
 */
@implementation TMBSchoolFinder_GetReviews_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the NCES input for this Choreo.
	*(conditional, string) The National Center for Education Statistics (NCES) id of the school. NCES or SchoolID are required.
	 */
	-(void)setNCES:(NSString*)NCES {
		[super setInput:@"NCES" toValue:NCES];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SchoolID input for this Choreo.
	*(conditional, string) The Education.com id of the school you want to find. NCES or SchoolID are required.
	 */
	-(void)setSchoolID:(NSString*)SchoolID {
		[super setInput:@"SchoolID" toValue:SchoolID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReviews Choreo.
 */
@implementation TMBSchoolFinder_GetReviews_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of the most recent school reviews and parent rating for a single school.
 */
@implementation TMBSchoolFinder_GetReviews

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_GetReviews Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/GetReviews"] autorelease];
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
		TMBSchoolFinder_GetReviews_ResultSet *results = [[[TMBSchoolFinder_GetReviews_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReviews Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_GetReviews_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_GetReviews_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the NumberOf Choreo.
 */
@implementation TMBSchoolFinder_NumberOf_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) The name of a city. City requests must also be accompanied by the corresponding state parameter.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NumberOf Choreo.
 */
@implementation TMBSchoolFinder_NumberOf_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the total number of schools, the number of schools at each level (elementary, middle, high) and the number of each type of school (public, private, charter) in a given city. 
 */
@implementation TMBSchoolFinder_NumberOf

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_NumberOf Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/NumberOf"] autorelease];
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
		TMBSchoolFinder_NumberOf_ResultSet *results = [[[TMBSchoolFinder_NumberOf_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the NumberOf Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_NumberOf_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_NumberOf_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GBD Choreo.
 */
@implementation TMBSchoolFinder_GBD_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your School Finder API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(conditional, string) The name of a city. Must also be accompanied by the corresponding state parameter.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the DistrictID input for this Choreo.
	*(conditional, string) The internal Education.com id of a school district.
	 */
	-(void)setDistrictID:(NSString*)DistrictID {
		[super setInput:@"DistrictID" toValue:DistrictID];
	}

	/*!
	 * Set the value of the NCES input for this Choreo.
	*(conditional, string) The nces id of the school.
	 */
	-(void)setNCES:(NSString*)NCES {
		[super setInput:@"NCES" toValue:NCES];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SchoolID input for this Choreo.
	*(conditional, string) The id of the school.
	 */
	-(void)setSchoolID:(NSString*)SchoolID {
		[super setInput:@"SchoolID" toValue:SchoolID];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(conditional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GBD Choreo.
 */
@implementation TMBSchoolFinder_GBD_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Education.com.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns contextual and branding links to Education.com. 
 */
@implementation TMBSchoolFinder_GBD

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSchoolFinder_GBD Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SchoolFinder/GBD"] autorelease];
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
		TMBSchoolFinder_GBD_ResultSet *results = [[[TMBSchoolFinder_GBD_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GBD Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSchoolFinder_GBD_Inputs*)newInputSet {
		return [[[TMBSchoolFinder_GBD_Inputs alloc] init] autorelease];
	}
@end
	
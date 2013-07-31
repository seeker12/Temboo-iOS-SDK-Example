/*!
 * @TMBDailyMed.m
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

#import "TMBDailyMed.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetComponents Choreo.
 */
@implementation TMBDailyMed_GetComponents_Inputs

	/*!
	 * Set the value of the SetID input for this Choreo.
	*(required, string) The unique ID assigned by DailyMed to each drug. You can find the SetID of a drug by first running the SearchByName or SearchByNDC Choreos.
	 */
	-(void)setSetID:(NSString*)SetID {
		[super setInput:@"SetID" toValue:SetID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComponents Choreo.
 */
@implementation TMBDailyMed_GetComponents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from DailyMed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns imprint data associated with a given National Drug Code (NDC) in the DailyMed database.
 */
@implementation TMBDailyMed_GetComponents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDailyMed_GetComponents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DailyMed/GetComponents"] autorelease];
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
		TMBDailyMed_GetComponents_ResultSet *results = [[[TMBDailyMed_GetComponents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetComponents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDailyMed_GetComponents_Inputs*)newInputSet {
		return [[[TMBDailyMed_GetComponents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByNDC Choreo.
 */
@implementation TMBDailyMed_SearchByNDC_Inputs

	/*!
	 * Set the value of the NDC input for this Choreo.
	*(required, string) National Drug Code. This is a unique 10-digit numeric identifier assigned to each medication by the Food and Drug Administration (FDA).
	 */
	-(void)setNDC:(NSString*)NDC {
		[super setInput:@"NDC" toValue:NDC];
	}

	/*!
	 * Set the value of the OutputFormat input for this Choreo.
	*(optional, string) Defaults to XML format when nothing is specified. Acceptable values: xml or json.
	 */
	-(void)setOutputFormat:(NSString*)OutputFormat {
		[super setInput:@"OutputFormat" toValue:OutputFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByNDC Choreo.
 */
@implementation TMBDailyMed_SearchByNDC_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DailyMed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of drugs in the DailyMed database associated with a given National Drug Code (NDC).
 */
@implementation TMBDailyMed_SearchByNDC

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDailyMed_SearchByNDC Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DailyMed/SearchByNDC"] autorelease];
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
		TMBDailyMed_SearchByNDC_ResultSet *results = [[[TMBDailyMed_SearchByNDC_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByNDC Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDailyMed_SearchByNDC_Inputs*)newInputSet {
		return [[[TMBDailyMed_SearchByNDC_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByName Choreo.
 */
@implementation TMBDailyMed_SearchByName_Inputs

	/*!
	 * Set the value of the DrugName input for this Choreo.
	*(required, string) The name of the drug you want to find.
	 */
	-(void)setDrugName:(NSString*)DrugName {
		[super setInput:@"DrugName" toValue:DrugName];
	}

	/*!
	 * Set the value of the LabelType input for this Choreo.
	*(optional, string) Filter results by a specified type. Acceptable values: rxonly, otc, human, human/rxonly, human/otc, animal. See documentation for more information.
	 */
	-(void)setLabelType:(NSString*)LabelType {
		[super setInput:@"LabelType" toValue:LabelType];
	}

	/*!
	 * Set the value of the OutputFormat input for this Choreo.
	*(optional, string) Defaults to XML format when nothing is specified. Acceptable values: xml or json.
	 */
	-(void)setOutputFormat:(NSString*)OutputFormat {
		[super setInput:@"OutputFormat" toValue:OutputFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByName Choreo.
 */
@implementation TMBDailyMed_SearchByName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DailyMed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of drugs in the DailyMed database associated with a given drug name.
 */
@implementation TMBDailyMed_SearchByName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDailyMed_SearchByName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DailyMed/SearchByName"] autorelease];
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
		TMBDailyMed_SearchByName_ResultSet *results = [[[TMBDailyMed_SearchByName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDailyMed_SearchByName_Inputs*)newInputSet {
		return [[[TMBDailyMed_SearchByName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBDailyMed_Query_Inputs

	/*!
	 * Set the value of the Components input for this Choreo.
	*(optional, string) Enter the DailyMed components you want returned as a comma delimited string. When left blank, the full DailyMed record is returned. See documentation for more information on components.
	 */
	-(void)setComponents:(NSString*)Components {
		[super setInput:@"Components" toValue:Components];
	}

	/*!
	 * Set the value of the SetID input for this Choreo.
	*(required, string) The unique ID assigned by DailyMed to each drug. You can find the SetID of a drug by first running the SearchByName or SearchByNDC Choreos.
	 */
	-(void)setSetID:(NSString*)SetID {
		[super setInput:@"SetID" toValue:SetID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBDailyMed_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from DailyMed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the records available in the DailyMed database associated with a given drug.
 */
@implementation TMBDailyMed_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDailyMed_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DailyMed/Query"] autorelease];
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
		TMBDailyMed_Query_ResultSet *results = [[[TMBDailyMed_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDailyMed_Query_Inputs*)newInputSet {
		return [[[TMBDailyMed_Query_Inputs alloc] init] autorelease];
	}
@end
	
/*!
 * @TMBXively.m
 *
 * Execute Choreographies from the Temboo Xively bundle.
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

#import "TMBXively.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ActivateDevice Choreo.
 */
@implementation TMBXively_Devices_ActivateDevice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) Not required for first activation. If re-activating a device, either the original device APIKey returned from the first activation or the master APIKey is required.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ActivationCode input for this Choreo.
	*(required, string) Activation code provided when pre-registering a device with a serial number.
	 */
	-(void)setActivationCode:(NSString*)ActivationCode {
		[super setInput:@"ActivationCode" toValue:ActivationCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ActivateDevice Choreo.
 */
@implementation TMBXively_Devices_ActivateDevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Xively. Upon successful activation, it returns a JSON array containing the device APIKey, FeedID and Datastreams.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Activates (or reactivates) a device given an authorization code. Returns the device API Key and Feed ID. 
 */
@implementation TMBXively_Devices_ActivateDevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Devices_ActivateDevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Devices/ActivateDevice"] autorelease];
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
		TMBXively_Devices_ActivateDevice_ResultSet *results = [[[TMBXively_Devices_ActivateDevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ActivateDevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Devices_ActivateDevice_Inputs*)newInputSet {
		return [[[TMBXively_Devices_ActivateDevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateProduct Choreo.
 */
@implementation TMBXively_Products_CreateProduct_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CustomProduct input for this Choreo.
	*(optional, json) Optional custom configuration for creating your product in JSON. If you use this field the other optional parameters will be ignored. See Choreo description and Xively documentation for details.
	 */
	-(void)setCustomProduct:(NSString*)CustomProduct {
		[super setInput:@"CustomProduct" toValue:CustomProduct];
	}

	/*!
	 * Set the value of the Datastreams input for this Choreo.
	*(optional, json) Default device datastream JSON array. Every newly created device in this product will have this default datastream. Ex: [{"id":"channel1"},{"id":"demo"}]
	 */
	-(void)setDatastreams:(NSString*)Datastreams {
		[super setInput:@"Datastreams" toValue:Datastreams];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) Description of the product.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(conditional, string) Name of the product. Required unless using the CustomProduct JSON input.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Private input for this Choreo.
	*(optional, string) Default device feed privacy settings. Valid values: "true", "false" (default).
	 */
	-(void)setPrivate:(NSString*)Private {
		[super setInput:@"Private" toValue:Private];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateProduct Choreo.
 */
@implementation TMBXively_Products_CreateProduct_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ProductID" output from an execution of this Choreo.
	 * @return - NSString* (string) The ProductID obtained from the ProductLocation returned by this Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProductID {
		return [super getOutputByName:@"ProductID"];
	}

	/*!
	 * Retrieve the value of the "ProductLocation" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL of the newly created product.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProductLocation {
		return [super getOutputByName:@"ProductLocation"];
	}

	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful product creation, the code should be 201.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Creates a new product batch.
 */
@implementation TMBXively_Products_CreateProduct

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Products_CreateProduct Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Products/CreateProduct"] autorelease];
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
		TMBXively_Products_CreateProduct_ResultSet *results = [[[TMBXively_Products_CreateProduct_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateProduct Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Products_CreateProduct_Inputs*)newInputSet {
		return [[[TMBXively_Products_CreateProduct_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateTrigger Choreo.
 */
@implementation TMBXively_Triggers_CreateTrigger_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DatastreamID input for this Choreo.
	*(required, string) The ID of the datastream you would like to create a trigger for.
	 */
	-(void)setDatastreamID:(NSString*)DatastreamID {
		[super setInput:@"DatastreamID" toValue:DatastreamID];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, integer) The ID of the feed you would like to create a trigger for.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the ThresholdValue input for this Choreo.
	*(required, string) Threshold that will cause the trigger to activate. Not required if TriggerType = "change", "frozen" or "live". Required for all others.
	 */
	-(void)setThresholdValue:(NSString*)ThresholdValue {
		[super setInput:@"ThresholdValue" toValue:ThresholdValue];
	}

	/*!
	 * Set the value of the TriggerType input for this Choreo.
	*(required, string) Type of trigger. Possible values: "gt", "gte", "lt", "lte", "eq", "change" (any change), "frozen" (no updates for 15 minutes), or "live" (updated again after being frozen).
	 */
	-(void)setTriggerType:(NSString*)TriggerType {
		[super setInput:@"TriggerType" toValue:TriggerType];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The URL that the Xively trigger will post to when activated. Ex: http://requestb.in
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTrigger Choreo.
 */
@implementation TMBXively_Triggers_CreateTrigger_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful trigger creation, the code should be 201.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}

	/*!
	 * Retrieve the value of the "TriggerID" output from an execution of this Choreo.
	 * @return - NSString* (integer) TriggerID extracted from the TriggerLocation.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTriggerID {
		return [super getOutputByName:@"TriggerID"];
	}

	/*!
	 * Retrieve the value of the "TriggerLocation" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL of the newly created trigger.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTriggerLocation {
		return [super getOutputByName:@"TriggerLocation"];
	}
	
@end

/*!
 * Creates a new trigger.
 */
@implementation TMBXively_Triggers_CreateTrigger

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Triggers_CreateTrigger Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Triggers/CreateTrigger"] autorelease];
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
		TMBXively_Triggers_CreateTrigger_ResultSet *results = [[[TMBXively_Triggers_CreateTrigger_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateTrigger Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Triggers_CreateTrigger_Inputs*)newInputSet {
		return [[[TMBXively_Triggers_CreateTrigger_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllKeys Choreo.
 */
@implementation TMBXively_APIKeys_ListAllKeys_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The master API Key for which you would like to return a list of all the user's keys.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllKeys Choreo.
 */
@implementation TMBXively_APIKeys_ListAllKeys_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a JSON or XML representation of all of the user's keys.
 */
@implementation TMBXively_APIKeys_ListAllKeys

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_APIKeys_ListAllKeys Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/APIKeys/ListAllKeys"] autorelease];
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
		TMBXively_APIKeys_ListAllKeys_ResultSet *results = [[[TMBXively_APIKeys_ListAllKeys_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllKeys Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_APIKeys_ListAllKeys_Inputs*)newInputSet {
		return [[[TMBXively_APIKeys_ListAllKeys_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTrigger Choreo.
 */
@implementation TMBXively_Triggers_DeleteTrigger_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the TriggerID input for this Choreo.
	*(required, integer) TriggerID for the trigger that you wish to delete.
	 */
	-(void)setTriggerID:(NSString*)TriggerID {
		[super setInput:@"TriggerID" toValue:TriggerID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTrigger Choreo.
 */
@implementation TMBXively_Triggers_DeleteTrigger_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful trigger deletion, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Deletes the specified trigger.
 */
@implementation TMBXively_Triggers_DeleteTrigger

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Triggers_DeleteTrigger Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Triggers/DeleteTrigger"] autorelease];
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
		TMBXively_Triggers_DeleteTrigger_ResultSet *results = [[[TMBXively_Triggers_DeleteTrigger_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteTrigger Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Triggers_DeleteTrigger_Inputs*)newInputSet {
		return [[[TMBXively_Triggers_DeleteTrigger_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteKey Choreo.
 */
@implementation TMBXively_APIKeys_DeleteKey_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key you would like to delete.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the MasterAPIKey input for this Choreo.
	*(optional, string) Specify a MasterAPIKey with more permissions if the APIKey you would like to delete does not have sufficient permissions.
	 */
	-(void)setMasterAPIKey:(NSString*)MasterAPIKey {
		[super setInput:@"MasterAPIKey" toValue:MasterAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteKey Choreo.
 */
@implementation TMBXively_APIKeys_DeleteKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a valid deletion, the code returned should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Deletes a specific API Key.
 */
@implementation TMBXively_APIKeys_DeleteKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_APIKeys_DeleteKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/APIKeys/DeleteKey"] autorelease];
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
		TMBXively_APIKeys_DeleteKey_ResultSet *results = [[[TMBXively_APIKeys_DeleteKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_APIKeys_DeleteKey_Inputs*)newInputSet {
		return [[[TMBXively_APIKeys_DeleteKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WriteData Choreo.
 */
@implementation TMBXively_ReadWriteData_WriteData_Inputs

	/*!
	 * Set the value of the FeedData input for this Choreo.
	*(optional, any) Custom data body for the new feed in JSON or XML format (set by FeedType). See documentation for the minimum required fields for a feed. If custom FeedData is used, Value and Timestamp is ignored.
	 */
	-(void)setFeedData:(NSString*)FeedData {
		[super setInput:@"FeedData" toValue:FeedData];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DatastreamID input for this Choreo.
	*(optional, string) ID for single datastream you would like to update. Required if specifying a single datapoint update using Value.
	 */
	-(void)setDatastreamID:(NSString*)DatastreamID {
		[super setInput:@"DatastreamID" toValue:DatastreamID];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, integer) The ID for the feed that you would like to update.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the FeedType input for this Choreo.
	*(optional, string) The type of feed that is being provided for custom FeedData. Valid values are "json" (the default), "xml" and "csv". Ignored if specifying single datapoint Value.
	 */
	-(void)setFeedType:(NSString*)FeedType {
		[super setInput:@"FeedType" toValue:FeedType];
	}

	/*!
	 * Set the value of the Timestamp input for this Choreo.
	*(optional, date) Can be used with a single Value and DatastreamID. If specified, sets timestamp for Value. If Value is set with blank Timestamp, Value's timestamp will be current time. Ex: 2013-05-10T00:00:00.123456Z.
	 */
	-(void)setTimestamp:(NSString*)Timestamp {
		[super setInput:@"Timestamp" toValue:Timestamp];
	}

	/*!
	 * Set the value of the Value input for this Choreo.
	*(optional, string) Specifies the value for a single datapoint in a specified datastream.
	 */
	-(void)setValue:(NSString*)Value {
		[super setInput:@"Value" toValue:Value];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WriteData Choreo.
 */
@implementation TMBXively_ReadWriteData_WriteData_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful feed / data update, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Allows you to update your feed, including updating/creating new datastreams and datapoints. 
 */
@implementation TMBXively_ReadWriteData_WriteData

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_WriteData Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/WriteData"] autorelease];
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
		TMBXively_ReadWriteData_WriteData_ResultSet *results = [[[TMBXively_ReadWriteData_WriteData_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WriteData Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_WriteData_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_WriteData_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteMultipleDatapoints Choreo.
 */
@implementation TMBXively_ReadWriteData_DeleteMultipleDatapoints_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DatastreamID input for this Choreo.
	*(required, string) The ID of the datastream you would like to delete datapoints from.
	 */
	-(void)setDatastreamID:(NSString*)DatastreamID {
		[super setInput:@"DatastreamID" toValue:DatastreamID];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(conditional, string) Specifies the duration of the deletion. Can be used with StartDate or EndDate. Ex: 5seconds, 10minutes, 6hours. See documentation for full description / examples.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(conditional, date) Defines the end point of the deletion as a timestamp. Can be used with Duration. Ex: 2013-05-10T12:00:00Z.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, string) The ID of the feed you would like to delete datapoints from.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(conditional, date) Defines the starting point of the deletion as a timestamp. Can be used with Duration. Ex: 2013-05-10T00:00:00Z.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteMultipleDatapoints Choreo.
 */
@implementation TMBXively_ReadWriteData_DeleteMultipleDatapoints_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponsStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful datapoint range deletion, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponsStatusCode {
		return [super getOutputByName:@"ResponsStatusCode"];
	}
	
@end

/*!
 * Deletes multiple datapoints from a single datastream given a start date, end date, and/or duration.
 */
@implementation TMBXively_ReadWriteData_DeleteMultipleDatapoints

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_DeleteMultipleDatapoints Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/DeleteMultipleDatapoints"] autorelease];
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
		TMBXively_ReadWriteData_DeleteMultipleDatapoints_ResultSet *results = [[[TMBXively_ReadWriteData_DeleteMultipleDatapoints_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteMultipleDatapoints Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_DeleteMultipleDatapoints_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_DeleteMultipleDatapoints_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RegenerateKey Choreo.
 */
@implementation TMBXively_APIKeys_RegenerateKey_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key you would like to regenerate. On successful regeneration, this API Key will no longer be valid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the MasterAPIKey input for this Choreo.
	*(optional, string) Specify a MasterAPIKey with sufficient permissions if the APIKey you would like to regenerate does not have the permissions to do so.
	 */
	-(void)setMasterAPIKey:(NSString*)MasterAPIKey {
		[super setInput:@"MasterAPIKey" toValue:MasterAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RegenerateKey Choreo.
 */
@implementation TMBXively_APIKeys_RegenerateKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "APIKeyLocation" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL of the newly regenerated APIKey.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAPIKeyLocation {
		return [super getOutputByName:@"APIKeyLocation"];
	}

	/*!
	 * Retrieve the value of the "NewAPIKey" output from an execution of this Choreo.
	 * @return - NSString* (string) The regenerated APIKey obtained from the APIKeyLocation returned by this Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAPIKey {
		return [super getOutputByName:@"NewAPIKey"];
	}
	
@end

/*!
 * Allows you to regenerate a new key with the same attributes and permissions as a previous key.
 */
@implementation TMBXively_APIKeys_RegenerateKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_APIKeys_RegenerateKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/APIKeys/RegenerateKey"] autorelease];
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
		TMBXively_APIKeys_RegenerateKey_ResultSet *results = [[[TMBXively_APIKeys_RegenerateKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RegenerateKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_APIKeys_RegenerateKey_Inputs*)newInputSet {
		return [[[TMBXively_APIKeys_RegenerateKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllTriggers Choreo.
 */
@implementation TMBXively_Triggers_ListAllTriggers_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(optional, integer) Filter the returned triggers to only include those for the specified FeedID.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllTriggers Choreo.
 */
@implementation TMBXively_Triggers_ListAllTriggers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns all triggers for the authenticated account.
 */
@implementation TMBXively_Triggers_ListAllTriggers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Triggers_ListAllTriggers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Triggers/ListAllTriggers"] autorelease];
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
		TMBXively_Triggers_ListAllTriggers_ResultSet *results = [[[TMBXively_Triggers_ListAllTriggers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllTriggers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Triggers_ListAllTriggers_Inputs*)newInputSet {
		return [[[TMBXively_Triggers_ListAllTriggers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadGraph Choreo.
 */
@implementation TMBXively_ReadWriteData_ReadGraph_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Color input for this Choreo.
	*(optional, string) The PNG color in hex. Ex: FFCC33.
	 */
	-(void)setColor:(NSString*)Color {
		[super setInput:@"Color" toValue:Color];
	}

	/*!
	 * Set the value of the DatastreamID input for this Choreo.
	*(required, string) The ID for the datastream you wish to read.
	 */
	-(void)setDatastreamID:(NSString*)DatastreamID {
		[super setInput:@"DatastreamID" toValue:DatastreamID];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(optional, string) Used for a historical query. If used with EndDate will request data prior to EndDate, if used with StartDate will request data after StartDate. By itself will give most recent data. Ex: 6hours, 2days.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, date) Used for a historical query. Defines the end point of the data returned as a timestamp. Ex: 2013-05-10T12:00:00Z. Default value is set to current timestamp.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, integer) The ID of the feed you wish to read.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the FindPrevious input for this Choreo.
	*(optional, boolean) Used for a historical query. Will also return the previous value to the date range being requested. Useful to allow a graph to start a graph with some datapoint. Valid values: "true", blank (default).
	 */
	-(void)setFindPrevious:(NSString*)FindPrevious {
		[super setInput:@"FindPrevious" toValue:FindPrevious];
	}

	/*!
	 * Set the value of the Height input for this Choreo.
	*(optional, integer) The PNG height in pixels. Max height: 500. Ex: 400.
	 */
	-(void)setHeight:(NSString*)Height {
		[super setInput:@"Height" toValue:Height];
	}

	/*!
	 * Set the value of the IntervalType input for this Choreo.
	*(optional, string) Used for a historical query. If set to "discrete" the data will be returned in fixed time interval format according to Interval value. If not set, the raw datapoints will be returned.
	 */
	-(void)setIntervalType:(NSString*)IntervalType {
		[super setInput:@"IntervalType" toValue:IntervalType];
	}

	/*!
	 * Set the value of the Interval input for this Choreo.
	*(optional, integer) Used for a historical query. Determines what interval of data is requested and is defined in seconds between the datapoints. See documentation for full list of possible values. Ex: 0, 30, 60, etc.
	 */
	-(void)setInterval:(NSString*)Interval {
		[super setInput:@"Interval" toValue:Interval];
	}

	/*!
	 * Set the value of the Legend input for this Choreo.
	*(optional, string) Label given datapoints on a legend included on the graph.
	 */
	-(void)setLegend:(NSString*)Legend {
		[super setInput:@"Legend" toValue:Legend];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used for a historical query. LImits the number of results to the number specified here. Defaults to 100, has a maximum of 1000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LineSize input for this Choreo.
	*(optional, integer) Size of the lines/strokes in pixels. Ex: 4.
	 */
	-(void)setLineSize:(NSString*)LineSize {
		[super setInput:@"LineSize" toValue:LineSize];
	}

	/*!
	 * Set the value of the ShowAxisLabels input for this Choreo.
	*(optional, boolean) Show access labels. Input "true" to turn on, leave blank to keep off (default).
	 */
	-(void)setShowAxisLabels:(NSString*)ShowAxisLabels {
		[super setInput:@"ShowAxisLabels" toValue:ShowAxisLabels];
	}

	/*!
	 * Set the value of the ShowDetailedGrid input for this Choreo.
	*(optional, string) Show detailed grid. Input "true" to turn on, leave blank to keep off (default).
	 */
	-(void)setShowDetailedGrid:(NSString*)ShowDetailedGrid {
		[super setInput:@"ShowDetailedGrid" toValue:ShowDetailedGrid];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) Used for a historical query. Defines the starting the point of the query as a timestamp. Ex: 2013-05-10T00:00:00Z.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Timezone input for this Choreo.
	*(optional, string) Timezone of the graph. For a list of valid values please see description and API documenation. Ex: Eastern Time (US & Canada), Pacific Time (US & Canada), UTC, Tokyo.
	 */
	-(void)setTimezone:(NSString*)Timezone {
		[super setInput:@"Timezone" toValue:Timezone];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) Title of the graph.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Width input for this Choreo.
	*(optional, integer) The PNG width in pixels. Max width: 600. Ex: 600.
	 */
	-(void)setWidth:(NSString*)Width {
		[super setInput:@"Width" toValue:Width];
	}

	/*!
	 * Set the value of the YAxisMax input for this Choreo.
	*(optional, string) Y-axis maximum value if the YAxisScale is set to "manual".
	 */
	-(void)setYAxisMax:(NSString*)YAxisMax {
		[super setInput:@"YAxisMax" toValue:YAxisMax];
	}

	/*!
	 * Set the value of the YAxisMin input for this Choreo.
	*(optional, string) Y-axis minimum value if the YAxisScale is set to "manual".
	 */
	-(void)setYAxisMin:(NSString*)YAxisMin {
		[super setInput:@"YAxisMin" toValue:YAxisMin];
	}

	/*!
	 * Set the value of the YAxisScale input for this Choreo.
	*(optional, string) Method used to determine the y-axis scale. Valid values: "auto" (default), "datastream", or "manual".
	 */
	-(void)setYAxisScale:(NSString*)YAxisScale {
		[super setInput:@"YAxisScale" toValue:YAxisScale];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadGraph Choreo.
 */
@implementation TMBXively_ReadWriteData_ReadGraph_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Xively, which is a base64-encoded binary .png file. Decode to get the binary PNG graphic.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a customizable graph (Base64-encoded PNG image file) of datapoints from a specific datastream.
 */
@implementation TMBXively_ReadWriteData_ReadGraph

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_ReadGraph Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/ReadGraph"] autorelease];
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
		TMBXively_ReadWriteData_ReadGraph_ResultSet *results = [[[TMBXively_ReadWriteData_ReadGraph_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadGraph Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_ReadGraph_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_ReadGraph_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadFeed Choreo.
 */
@implementation TMBXively_ReadWriteData_ReadFeed_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Datastreams input for this Choreo.
	*(optional, string) Filter by datastream. Valid values - comma separated datastream IDs (Ex: energy,power).
	 */
	-(void)setDatastreams:(NSString*)Datastreams {
		[super setInput:@"Datastreams" toValue:Datastreams];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(optional, string) Used for a historical query. If used with EndDate will request data prior to EndDate, if used with StartDate will request data after StartDate. By itself will give most recent data. Ex: 6hours, 2days.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, date) Used for a historical query. Defines the end point of the data returned as a timestamp. Ex: 2013-05-10T12:00:00Z.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, integer) The ID of the feed you wish to view.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the FeedType input for this Choreo.
	*(optional, string) The type of feed that is being returned. Valid values are "json" (the default), "csv" and "xml". No metadata is returned for the csv feed.
	 */
	-(void)setFeedType:(NSString*)FeedType {
		[super setInput:@"FeedType" toValue:FeedType];
	}

	/*!
	 * Set the value of the FindPrevious input for this Choreo.
	*(optional, boolean) Used for a historical query. Will also return the previous value to the date range being requested. Useful when graphing, to start a graph with a datapoint. Valid values: "true", blank (default).
	 */
	-(void)setFindPrevious:(NSString*)FindPrevious {
		[super setInput:@"FindPrevious" toValue:FindPrevious];
	}

	/*!
	 * Set the value of the IntervalType input for this Choreo.
	*(optional, string) Used for a historical query. If set to "discrete" the data will be returned in fixed time interval format according to Interval value. If not set, the raw datapoints will be returned.
	 */
	-(void)setIntervalType:(NSString*)IntervalType {
		[super setInput:@"IntervalType" toValue:IntervalType];
	}

	/*!
	 * Set the value of the Interval input for this Choreo.
	*(optional, integer) Used for a historical query. Determines what interval of data is requested and is defined in seconds between the datapoints. See documentation for full list of possible values. Ex.: 0, 30, 60, etc.
	 */
	-(void)setInterval:(NSString*)Interval {
		[super setInput:@"Interval" toValue:Interval];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used for a historical query. Limits the number of results to the number specified here. Defaults to 100, has a maximum of 1000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ShowUser input for this Choreo.
	*(optional, string) Include user login for each feed. For JSON/XML response only. Valid values: "true", "false" (default).
	 */
	-(void)setShowUser:(NSString*)ShowUser {
		[super setInput:@"ShowUser" toValue:ShowUser];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) Used for a historical query. Defines the starting point of the query as a timestamp. Ex: 2013-05-10T00:00:00Z.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadFeed Choreo.
 */
@implementation TMBXively_ReadWriteData_ReadFeed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns filterable data on a specific feed viewable by the authenticated account.
 */
@implementation TMBXively_ReadWriteData_ReadFeed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_ReadFeed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/ReadFeed"] autorelease];
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
		TMBXively_ReadWriteData_ReadFeed_ResultSet *results = [[[TMBXively_ReadWriteData_ReadFeed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadFeed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_ReadFeed_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_ReadFeed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateProduct Choreo.
 */
@implementation TMBXively_Products_UpdateProduct_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CustomProduct input for this Choreo.
	*(optional, json) Optional custom configuration for creating your product in JSON. If you use this field the other optional parameters will be ignored. See Choreo description and Xively documentation for details.
	 */
	-(void)setCustomProduct:(NSString*)CustomProduct {
		[super setInput:@"CustomProduct" toValue:CustomProduct];
	}

	/*!
	 * Set the value of the Datastreams input for this Choreo.
	*(optional, json) Default device datastream JSON array. Every newly created device in this product will have this default datastream. Ex: [{"id":"channel1"},{"id":"demo"}].
	 */
	-(void)setDatastreams:(NSString*)Datastreams {
		[super setInput:@"Datastreams" toValue:Datastreams];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) Description of the product.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) Name of the product.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Private input for this Choreo.
	*(optional, string) Default device feed privacy settings. Valid values: "true", "false" (default). Note - leaving this blank will automatically change a private device feed to a public device feed.
	 */
	-(void)setPrivate:(NSString*)Private {
		[super setInput:@"Private" toValue:Private];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(required, string) The ID of the product you are trying to update.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateProduct Choreo.
 */
@implementation TMBXively_Products_UpdateProduct_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful product update, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Updates an existing product batch.
 */
@implementation TMBXively_Products_UpdateProduct

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Products_UpdateProduct Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Products/UpdateProduct"] autorelease];
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
		TMBXively_Products_UpdateProduct_ResultSet *results = [[[TMBXively_Products_UpdateProduct_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateProduct Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Products_UpdateProduct_Inputs*)newInputSet {
		return [[[TMBXively_Products_UpdateProduct_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateDevice Choreo.
 */
@implementation TMBXively_Devices_UpdateDevice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the NewSerialNumber input for this Choreo.
	*(required, string) The new serial number you want to update the existing device to. Allowed characters: case-sensitive alphanumeric characters (Ab3) and certain characters: "+", "-", "_", and ":". Ex: abc:123,aBc-124.
	 */
	-(void)setNewSerialNumber:(NSString*)NewSerialNumber {
		[super setInput:@"NewSerialNumber" toValue:NewSerialNumber];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(required, string) The product ID for the device you would like to update.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}

	/*!
	 * Set the value of the SerialNumber input for this Choreo.
	*(required, string) The existing serial number for the device you would like to update.
	 */
	-(void)setSerialNumber:(NSString*)SerialNumber {
		[super setInput:@"SerialNumber" toValue:SerialNumber];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateDevice Choreo.
 */
@implementation TMBXively_Devices_UpdateDevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful device update, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Updates a single device's serial number. 
 */
@implementation TMBXively_Devices_UpdateDevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Devices_UpdateDevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Devices/UpdateDevice"] autorelease];
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
		TMBXively_Devices_UpdateDevice_ResultSet *results = [[[TMBXively_Devices_UpdateDevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateDevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Devices_UpdateDevice_Inputs*)newInputSet {
		return [[[TMBXively_Devices_UpdateDevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadKey Choreo.
 */
@implementation TMBXively_APIKeys_ReadKey_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key you would like to return information on.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the MasterAPIKey input for this Choreo.
	*(optional, string) Specify a MasterAPIKey with more permissions if the APIKey you would like to view does not have sufficient (read) permissions.
	 */
	-(void)setMasterAPIKey:(NSString*)MasterAPIKey {
		[super setInput:@"MasterAPIKey" toValue:MasterAPIKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadKey Choreo.
 */
@implementation TMBXively_APIKeys_ReadKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a JSON or XML representation of the specified APIKey.
 */
@implementation TMBXively_APIKeys_ReadKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_APIKeys_ReadKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/APIKeys/ReadKey"] autorelease];
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
		TMBXively_APIKeys_ReadKey_ResultSet *results = [[[TMBXively_APIKeys_ReadKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_APIKeys_ReadKey_Inputs*)newInputSet {
		return [[[TMBXively_APIKeys_ReadKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateDevice Choreo.
 */
@implementation TMBXively_Devices_CreateDevice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(required, string) The product ID for the device you would like to add.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}

	/*!
	 * Set the value of the SerialNumbers input for this Choreo.
	*(required, string) Comma-separated list of device serial numbers to add. Allowed characters: case-sensitive alphanumeric characters (Ab3) and the following characters: "+", "-", "_", and ":". Ex: abc:123,aBc-124.
	 */
	-(void)setSerialNumbers:(NSString*)SerialNumbers {
		[super setInput:@"SerialNumbers" toValue:SerialNumbers];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDevice Choreo.
 */
@implementation TMBXively_Devices_CreateDevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful device creation, the code should be 201.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Creates a new device in a product batch for each serial number provided. When created, each device will be in a pre-registered state awaiting activation. Creating a non-product-affiliated device is not available through the Xively API, and can only be done through the browser-only Xively Developer Workbench.
 */
@implementation TMBXively_Devices_CreateDevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Devices_CreateDevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Devices/CreateDevice"] autorelease];
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
		TMBXively_Devices_CreateDevice_ResultSet *results = [[[TMBXively_Devices_CreateDevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateDevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Devices_CreateDevice_Inputs*)newInputSet {
		return [[[TMBXively_Devices_CreateDevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllProducts Choreo.
 */
@implementation TMBXively_Products_ListAllProducts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllProducts Choreo.
 */
@implementation TMBXively_Products_ListAllProducts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a JSON representation of all products associated with the specified APIKey.
 */
@implementation TMBXively_Products_ListAllProducts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Products_ListAllProducts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Products/ListAllProducts"] autorelease];
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
		TMBXively_Products_ListAllProducts_ResultSet *results = [[[TMBXively_Products_ListAllProducts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllProducts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Products_ListAllProducts_Inputs*)newInputSet {
		return [[[TMBXively_Products_ListAllProducts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteProduct Choreo.
 */
@implementation TMBXively_Products_DeleteProduct_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(required, string) The ID of the product you are trying to delete.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteProduct Choreo.
 */
@implementation TMBXively_Products_DeleteProduct_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful product deletion, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Deletes a product batch. This will also delete all devices and feeds associated with the specified product batch.
 */
@implementation TMBXively_Products_DeleteProduct

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Products_DeleteProduct Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Products/DeleteProduct"] autorelease];
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
		TMBXively_Products_DeleteProduct_ResultSet *results = [[[TMBXively_Products_DeleteProduct_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteProduct Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Products_DeleteProduct_Inputs*)newInputSet {
		return [[[TMBXively_Products_DeleteProduct_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateKey Choreo.
 */
@implementation TMBXively_APIKeys_UpdateKey_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key you would like to update.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessMethods input for this Choreo.
	*(conditional, string) Comma-separated input containing one or more allowed HTTP methods that the key is allowed. Valid values: get, put, post, and/or delete. Ex.: "put,post". Required unless writing your own CustomKey.
	 */
	-(void)setAccessMethods:(NSString*)AccessMethods {
		[super setInput:@"AccessMethods" toValue:AccessMethods];
	}

	/*!
	 * Set the value of the CustomKey input for this Choreo.
	*(optional, any) Optional Custom key to sent to Xively. Type and format depends on CustomType. Please see documentation for more information on constructing your own body. If used all other scalar inputs are ignored.
	 */
	-(void)setCustomKey:(NSString*)CustomKey {
		[super setInput:@"CustomKey" toValue:CustomKey];
	}

	/*!
	 * Set the value of the CustomPermissions input for this Choreo.
	*(optional, any) Optional custom permissions for advanced configuration. Type and format depends on CustomType. If specified ignores SourceIP, ResourcesData and AccessMethodsData.
	 */
	-(void)setCustomPermissions:(NSString*)CustomPermissions {
		[super setInput:@"CustomPermissions" toValue:CustomPermissions];
	}

	/*!
	 * Set the value of the CustomType input for this Choreo.
	*(optional, string) The datatype that is being input if adding custom permission objects. Valid values are "json" (the default) and "xml".
	 */
	-(void)setCustomType:(NSString*)CustomType {
		[super setInput:@"CustomType" toValue:CustomType];
	}

	/*!
	 * Set the value of the Label input for this Choreo.
	*(conditional, string) A label by which the key can be referenced. Required unless writing your own CustomKey.
	 */
	-(void)setLabel:(NSString*)Label {
		[super setInput:@"Label" toValue:Label];
	}

	/*!
	 * Set the value of the MasterAPIKey input for this Choreo.
	*(optional, string) Specify a MasterAPIKey with more permissions if the APIKey you would like to view does not have sufficient (write) permissions.
	 */
	-(void)setMasterAPIKey:(NSString*)MasterAPIKey {
		[super setInput:@"MasterAPIKey" toValue:MasterAPIKey];
	}

	/*!
	 * Set the value of the PrivateAccess input for this Choreo.
	*(optional, string) Flag that indicates whether this key can access private resources belonging to the user. To turn on, input "true", leave blank for "false".
	 */
	-(void)setPrivateAccess:(NSString*)PrivateAccess {
		[super setInput:@"PrivateAccess" toValue:PrivateAccess];
	}

	/*!
	 * Set the value of the ResourceFeedID input for this Choreo.
	*(optional, string) Specify a particular FeedID that the APIKey should have access to. If not specified, the APIKey permissions will apply to all feeds you are authorized to access.
	 */
	-(void)setResourceFeedID:(NSString*)ResourceFeedID {
		[super setInput:@"ResourceFeedID" toValue:ResourceFeedID];
	}

	/*!
	 * Set the value of the SourceIP input for this Choreo.
	*(optional, string) An IP address that, when specified, limits incoming requests to that specific IP address only.
	 */
	-(void)setSourceIP:(NSString*)SourceIP {
		[super setInput:@"SourceIP" toValue:SourceIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateKey Choreo.
 */
@implementation TMBXively_APIKeys_UpdateKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful APIKey update, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Updates an existing APIKey.
 */
@implementation TMBXively_APIKeys_UpdateKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_APIKeys_UpdateKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/APIKeys/UpdateKey"] autorelease];
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
		TMBXively_APIKeys_UpdateKey_ResultSet *results = [[[TMBXively_APIKeys_UpdateKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_APIKeys_UpdateKey_Inputs*)newInputSet {
		return [[[TMBXively_APIKeys_UpdateKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDatapoint Choreo.
 */
@implementation TMBXively_ReadWriteData_DeleteDatapoint_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DatastreamID input for this Choreo.
	*(required, string) The ID of the datastream you would like to delete the datapoint for.
	 */
	-(void)setDatastreamID:(NSString*)DatastreamID {
		[super setInput:@"DatastreamID" toValue:DatastreamID];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, string) The ID of the feed you would like to delete the datapoint for.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the Timestamp input for this Choreo.
	*(required, date) Timestamp of datapoint value to delete. Must be in ISO 8601 format, and can include up to 6 decimal places of resolution (in seconds), default zone is UTC.  Ex: 2013-05-07T00:00:00.123456Z.
	 */
	-(void)setTimestamp:(NSString*)Timestamp {
		[super setInput:@"Timestamp" toValue:Timestamp];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDatapoint Choreo.
 */
@implementation TMBXively_ReadWriteData_DeleteDatapoint_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponsStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful datapoint deletion, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponsStatusCode {
		return [super getOutputByName:@"ResponsStatusCode"];
	}
	
@end

/*!
 * Deletes a single existing datapoint for a specific timestamp.
 */
@implementation TMBXively_ReadWriteData_DeleteDatapoint

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_DeleteDatapoint Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/DeleteDatapoint"] autorelease];
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
		TMBXively_ReadWriteData_DeleteDatapoint_ResultSet *results = [[[TMBXively_ReadWriteData_DeleteDatapoint_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteDatapoint Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_DeleteDatapoint_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_DeleteDatapoint_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDevice Choreo.
 */
@implementation TMBXively_Devices_DeleteDevice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(required, string) The product ID for the device you would like to delete.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}

	/*!
	 * Set the value of the SerialNumber input for this Choreo.
	*(required, string) The serial number for the device you would like to delete.
	 */
	-(void)setSerialNumber:(NSString*)SerialNumber {
		[super setInput:@"SerialNumber" toValue:SerialNumber];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDevice Choreo.
 */
@implementation TMBXively_Devices_DeleteDevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful deletion, the status code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Deletes the device matching the provided serial number.
 */
@implementation TMBXively_Devices_DeleteDevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Devices_DeleteDevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Devices/DeleteDevice"] autorelease];
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
		TMBXively_Devices_DeleteDevice_ResultSet *results = [[[TMBXively_Devices_DeleteDevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteDevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Devices_DeleteDevice_Inputs*)newInputSet {
		return [[[TMBXively_Devices_DeleteDevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WriteFeedMetadata Choreo.
 */
@implementation TMBXively_ReadWriteData_WriteFeedMetadata_Inputs

	/*!
	 * Set the value of the FeedData input for this Choreo.
	*(optional, any) Custom data body for the new feed in JSON or XML format (set by FeedType). See documentation for how to write your own feed. If custom FeedData is used, all other optional inputs are ignored.
	 */
	-(void)setFeedData:(NSString*)FeedData {
		[super setInput:@"FeedData" toValue:FeedData];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A description of the feed. Leave empty to keep existing Description. Type "BLANK" to clear existing Description.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) Contact Email. Leave empty to keep existing Email. Type "BLANK" to clear existing Email.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, integer) The ID for the feed that you would like to update.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the FeedType input for this Choreo.
	*(optional, string) The type of feed that is being provided for custom FeedData. Valid values are "json" (the default) and "xml".
	 */
	-(void)setFeedType:(NSString*)FeedType {
		[super setInput:@"FeedType" toValue:FeedType];
	}

	/*!
	 * Set the value of the Icon input for this Choreo.
	*(optional, string) The URL of an icon which is relevant to this feed. Leave empty to keep existing Icon. Type "BLANK" to clear existing Icon.
	 */
	-(void)setIcon:(NSString*)Icon {
		[super setInput:@"Icon" toValue:Icon];
	}

	/*!
	 * Set the value of the Private input for this Choreo.
	*(optional, boolean) Specifies whether or not the feed is private to the creator of the feed. If 'true' the feed is private, if 'false' the feed is public. Leave empty to keep existing settings.
	 */
	-(void)setPrivate:(NSString*)Private {
		[super setInput:@"Private" toValue:Private];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated list of searchable tags (the characters ', ", and commas are not allowed). Tags input overwrites previous tags, enter "BLANK" to clear all tags. Ex: "power,energy".
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) A descriptive name for the feed. Leave empty to keep existing Title. Type "BLANK" to clear existing Title.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Website input for this Choreo.
	*(optional, string) The URL of a website which is relevant to this feed. Leave empty to keep existing Website. Type "BLANK" to clear existing Website. Ex.: http://www.homepage.com.
	 */
	-(void)setWebsite:(NSString*)Website {
		[super setInput:@"Website" toValue:Website];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WriteFeedMetadata Choreo.
 */
@implementation TMBXively_ReadWriteData_WriteFeedMetadata_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful feed update, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Allows you to easily update the metadata of your feed.
 */
@implementation TMBXively_ReadWriteData_WriteFeedMetadata

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_WriteFeedMetadata Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/WriteFeedMetadata"] autorelease];
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
		TMBXively_ReadWriteData_WriteFeedMetadata_ResultSet *results = [[[TMBXively_ReadWriteData_WriteFeedMetadata_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WriteFeedMetadata Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_WriteFeedMetadata_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_WriteFeedMetadata_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllFeeds Choreo.
 */
@implementation TMBXively_ReadWriteData_ListAllFeeds_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Content input for this Choreo.
	*(optional, string) Describes whether to return full or summary results. Full - all datastream values are returned, summary - returns the environment metadata for each feed. Valid values: 'full' or 'summary'.
	 */
	-(void)setContent:(NSString*)Content {
		[super setInput:@"Content" toValue:Content];
	}

	/*!
	 * Set the value of the DistanceUnits input for this Choreo.
	*(optional, string) Units of distance. Valid values: "miles" or "kms" (default).
	 */
	-(void)setDistanceUnits:(NSString*)DistanceUnits {
		[super setInput:@"DistanceUnits" toValue:DistanceUnits];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, decimal) Search radius (units like miles or kilometers defined by DistanceUnits). Ex: 5.0.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the FeedType input for this Choreo.
	*(optional, string) The type of feed that is being returned. Valid values are "json" (the default), "xml" and "csv". No metadata is returned for the csv feed.
	 */
	-(void)setFeedType:(NSString*)FeedType {
		[super setInput:@"FeedType" toValue:FeedType];
	}

	/*!
	 * Set the value of the FullTextSearch input for this Choreo.
	*(optional, string) Returns any feeds matching this string.
	 */
	-(void)setFullTextSearch:(NSString*)FullTextSearch {
		[super setInput:@"FullTextSearch" toValue:FullTextSearch];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) Used to find feeds located around this latitude. Ex. 51.5235375648154.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) Used to find feeds located around this longitude. Ex: -0.0807666778564453.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates which page of results you are requesting. Starts from 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) Defines how many results to return per page (1 to 1000).
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ShowUser input for this Choreo.
	*(optional, string) Include user login and user level for each feed. Valid values: true, false (default).
	 */
	-(void)setShowUser:(NSString*)ShowUser {
		[super setInput:@"ShowUser" toValue:ShowUser];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Order of returned feeds. Valid values: "created_at", "retrieved_at" or "relevance".
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) Sets whether to search for only live feeds, only frozen feeds, or all feeds. Valid values: "live", "frozen", "all" (default).
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(optional, string) Returns feeds containing datastreams tagged with the search query.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) Returns feeds containing datastreams with units specified by the search query. Ex: Celsius.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(optional, string) Returns feeds created by the user specified.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllFeeds Choreo.
 */
@implementation TMBXively_ReadWriteData_ListAllFeeds_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns filterable data on all feeds viewable by the authenticated account.
 */
@implementation TMBXively_ReadWriteData_ListAllFeeds

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_ListAllFeeds Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/ListAllFeeds"] autorelease];
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
		TMBXively_ReadWriteData_ListAllFeeds_ResultSet *results = [[[TMBXively_ReadWriteData_ListAllFeeds_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllFeeds Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_ListAllFeeds_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_ListAllFeeds_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDatastream Choreo.
 */
@implementation TMBXively_ReadWriteData_DeleteDatastream_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DatastreamID input for this Choreo.
	*(required, string) The ID of the datastream you wish to delete.
	 */
	-(void)setDatastreamID:(NSString*)DatastreamID {
		[super setInput:@"DatastreamID" toValue:DatastreamID];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, string) The ID of the feed you would like to delete the datastream for.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDatastream Choreo.
 */
@implementation TMBXively_ReadWriteData_DeleteDatastream_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful deletion, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Deletes a datastream. 
 */
@implementation TMBXively_ReadWriteData_DeleteDatastream

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_DeleteDatastream Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/DeleteDatastream"] autorelease];
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
		TMBXively_ReadWriteData_DeleteDatastream_ResultSet *results = [[[TMBXively_ReadWriteData_DeleteDatastream_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteDatastream Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_DeleteDatastream_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_DeleteDatastream_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateTrigger Choreo.
 */
@implementation TMBXively_Triggers_UpdateTrigger_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ThresholdValue input for this Choreo.
	*(optional, string) Threshold that will cause the trigger to activate. Include input only if changing Threshold Value.
	 */
	-(void)setThresholdValue:(NSString*)ThresholdValue {
		[super setInput:@"ThresholdValue" toValue:ThresholdValue];
	}

	/*!
	 * Set the value of the TriggerID input for this Choreo.
	*(required, integer) TriggerID for the trigger that you wish to update.
	 */
	-(void)setTriggerID:(NSString*)TriggerID {
		[super setInput:@"TriggerID" toValue:TriggerID];
	}

	/*!
	 * Set the value of the TriggerType input for this Choreo.
	*(optional, string) Type of trigger. Include input only if changing TriggerType. Valid values: gt, gte, lt, lte, eq, change (any change), frozen (no updates for 15 minutes), or live (updated again after being frozen).
	 */
	-(void)setTriggerType:(NSString*)TriggerType {
		[super setInput:@"TriggerType" toValue:TriggerType];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(optional, string) The URL that the Xively trigger will post to when activated. Include input only if changing the URL. Ex: http://requestb.in
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateTrigger Choreo.
 */
@implementation TMBXively_Triggers_UpdateTrigger_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful trigger update, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Updates an existing trigger.
 */
@implementation TMBXively_Triggers_UpdateTrigger

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Triggers_UpdateTrigger Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Triggers/UpdateTrigger"] autorelease];
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
		TMBXively_Triggers_UpdateTrigger_ResultSet *results = [[[TMBXively_Triggers_UpdateTrigger_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateTrigger Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Triggers_UpdateTrigger_Inputs*)newInputSet {
		return [[[TMBXively_Triggers_UpdateTrigger_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateKey Choreo.
 */
@implementation TMBXively_APIKeys_CreateKey_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The master API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessMethods input for this Choreo.
	*(conditional, string) Comma-separated input containing one or more allowed HTTP methods that the key is allowed. Valid values: get, put, post, and/or delete. Ex.: "put,post". Required unless writing your own CustomKey.
	 */
	-(void)setAccessMethods:(NSString*)AccessMethods {
		[super setInput:@"AccessMethods" toValue:AccessMethods];
	}

	/*!
	 * Set the value of the CustomKey input for this Choreo.
	*(optional, any) Optional Custom key to send to Xively. Type and format depends on CustomType. Please see documentation for more information on constructing your own body. If used, all other scalar inputs are ignored.
	 */
	-(void)setCustomKey:(NSString*)CustomKey {
		[super setInput:@"CustomKey" toValue:CustomKey];
	}

	/*!
	 * Set the value of the CustomPermissions input for this Choreo.
	*(optional, any) Optional custom permissions for advanced configuration. Type and format depends on CustomType. If specified, ignores SourceIP, ResourcesData and AccessMethodsData.
	 */
	-(void)setCustomPermissions:(NSString*)CustomPermissions {
		[super setInput:@"CustomPermissions" toValue:CustomPermissions];
	}

	/*!
	 * Set the value of the CustomType input for this Choreo.
	*(optional, string) The datatype that is being input if adding custom permission objects. Valid values are "json" (the default) and "xml".
	 */
	-(void)setCustomType:(NSString*)CustomType {
		[super setInput:@"CustomType" toValue:CustomType];
	}

	/*!
	 * Set the value of the ExpirationDate input for this Choreo.
	*(optional, date) Expiration date for the key, after which it won't work. Must be in ISO 8601 format, default zone is UTC.  Ex: 2013-05-07T00:00:00Z.
	 */
	-(void)setExpirationDate:(NSString*)ExpirationDate {
		[super setInput:@"ExpirationDate" toValue:ExpirationDate];
	}

	/*!
	 * Set the value of the Label input for this Choreo.
	*(conditional, string) A label by which the key can be referenced. Required unless writing your own CustomKey.
	 */
	-(void)setLabel:(NSString*)Label {
		[super setInput:@"Label" toValue:Label];
	}

	/*!
	 * Set the value of the PrivateAccess input for this Choreo.
	*(optional, string) Flag that indicates whether this key can access private resources belonging to the user. To turn on, input "true", leave blank for "false".
	 */
	-(void)setPrivateAccess:(NSString*)PrivateAccess {
		[super setInput:@"PrivateAccess" toValue:PrivateAccess];
	}

	/*!
	 * Set the value of the ResourceFeedID input for this Choreo.
	*(optional, integer) Specify a particular FeedID that the new APIKey should have access to. If not specified, the new APIKey permissions will apply to all feeds you are authorized to access.
	 */
	-(void)setResourceFeedID:(NSString*)ResourceFeedID {
		[super setInput:@"ResourceFeedID" toValue:ResourceFeedID];
	}

	/*!
	 * Set the value of the SourceIP input for this Choreo.
	*(optional, string) An IP address that, when specified, limits incoming requests to that specific IP address only.
	 */
	-(void)setSourceIP:(NSString*)SourceIP {
		[super setInput:@"SourceIP" toValue:SourceIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateKey Choreo.
 */
@implementation TMBXively_APIKeys_CreateKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "APIKeyLocation" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL of the newly created APIKey.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAPIKeyLocation {
		return [super getOutputByName:@"APIKeyLocation"];
	}

	/*!
	 * Retrieve the value of the "NewAPIKey" output from an execution of this Choreo.
	 * @return - NSString* (string) The new APIKey obtained from the APIKeyLocation returned by this Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAPIKey {
		return [super getOutputByName:@"NewAPIKey"];
	}
	
@end

/*!
 * Creates a new APIKey.
 */
@implementation TMBXively_APIKeys_CreateKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_APIKeys_CreateKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/APIKeys/CreateKey"] autorelease];
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
		TMBXively_APIKeys_CreateKey_ResultSet *results = [[[TMBXively_APIKeys_CreateKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_APIKeys_CreateKey_Inputs*)newInputSet {
		return [[[TMBXively_APIKeys_CreateKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WriteDatastreamMetadata Choreo.
 */
@implementation TMBXively_ReadWriteData_WriteDatastreamMetadata_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CustomDatastreamData input for this Choreo.
	*(optional, json) Custom data body for the updated datastream in JSON. See documentation for how to construct your own datastream feed. If custom DatastreamData is used, all other optional inputs are ignored.
	 */
	-(void)setCustomDatastreamData:(NSString*)CustomDatastreamData {
		[super setInput:@"CustomDatastreamData" toValue:CustomDatastreamData];
	}

	/*!
	 * Set the value of the DatastreamID input for this Choreo.
	*(required, string) The ID of the Datastream you would like to add metadata to. Required unless you are using CustomDatastreamData.
	 */
	-(void)setDatastreamID:(NSString*)DatastreamID {
		[super setInput:@"DatastreamID" toValue:DatastreamID];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, integer) The ID for the feed that you would like to update.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the MaxValue input for this Choreo.
	*(optional, string) The maximum value since the last reset. Leave empty to keep existing MaxValue. Type "BLANK" to clear existing value.
	 */
	-(void)setMaxValue:(NSString*)MaxValue {
		[super setInput:@"MaxValue" toValue:MaxValue];
	}

	/*!
	 * Set the value of the MinValue input for this Choreo.
	*(optional, string) The minimum value since the last reset. Leave empty to keep existing MinValue. Type "BLANK" to clear existing value.
	 */
	-(void)setMinValue:(NSString*)MinValue {
		[super setInput:@"MinValue" toValue:MinValue];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated list of searchable tags (the characters ', ", and commas are not allowed). Tags input overwrites previous tags, enter "BLANK" to clear all tags. Ex: "power,energy".
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the UnitSymbol input for this Choreo.
	*(optional, string) The symbol of the Unit. Leave empty to keep existing UnitSymbol. Type "BLANK" to clear existing value. Ex: "C".
	 */
	-(void)setUnitSymbol:(NSString*)UnitSymbol {
		[super setInput:@"UnitSymbol" toValue:UnitSymbol];
	}

	/*!
	 * Set the value of the UnitType input for this Choreo.
	*(optional, string) The type of Unit. Leave empty to keep existing UnitType. Type "BLANK" to clear existing value. Ex: "basicSI".
	 */
	-(void)setUnitType:(NSString*)UnitType {
		[super setInput:@"UnitType" toValue:UnitType];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) The units of the datastream. Leave empty to keep existing Units. Type "BLANK" to clear existing Units. Ex: "Celsius".
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WriteDatastreamMetadata Choreo.
 */
@implementation TMBXively_ReadWriteData_WriteDatastreamMetadata_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful datastream update, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Allows you to easily update the metadata of your datastream.
 */
@implementation TMBXively_ReadWriteData_WriteDatastreamMetadata

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_WriteDatastreamMetadata Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/WriteDatastreamMetadata"] autorelease];
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
		TMBXively_ReadWriteData_WriteDatastreamMetadata_ResultSet *results = [[[TMBXively_ReadWriteData_WriteDatastreamMetadata_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WriteDatastreamMetadata Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_WriteDatastreamMetadata_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_WriteDatastreamMetadata_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllDevices Choreo.
 */
@implementation TMBXively_Devices_ListAllDevices_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Activated input for this Choreo.
	*(optional, string) Filter for returning device serial numbers in the requested activation state. Valid values: "all" (default), "true" or "false".
	 */
	-(void)setActivated:(NSString*)Activated {
		[super setInput:@"Activated" toValue:Activated];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates which page of results you are requesting. Starts from 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) Defines how many results to return per page (1 to 1000, default is 30).
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(required, string) The ID for the product you would like to retrieve the list of devices for.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}

	/*!
	 * Set the value of the SerialNumber input for this Choreo.
	*(optional, string) Filter by providing an exact or partial serial number string. Letters are case-insensitive. Ex: inputting 'abc' will return serials that contain 'Abc',  'aBc' and 'abc', but not 'ab-c'.
	 */
	-(void)setSerialNumber:(NSString*)SerialNumber {
		[super setInput:@"SerialNumber" toValue:SerialNumber];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllDevices Choreo.
 */
@implementation TMBXively_Devices_ListAllDevices_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a paged list of devices belonging to a specific product.
 */
@implementation TMBXively_Devices_ListAllDevices

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Devices_ListAllDevices Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Devices/ListAllDevices"] autorelease];
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
		TMBXively_Devices_ListAllDevices_ResultSet *results = [[[TMBXively_Devices_ListAllDevices_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllDevices Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Devices_ListAllDevices_Inputs*)newInputSet {
		return [[[TMBXively_Devices_ListAllDevices_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadTrigger Choreo.
 */
@implementation TMBXively_Triggers_ReadTrigger_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TriggerID input for this Choreo.
	*(required, integer) ID for the trigger that you wish to retrieve information about.
	 */
	-(void)setTriggerID:(NSString*)TriggerID {
		[super setInput:@"TriggerID" toValue:TriggerID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadTrigger Choreo.
 */
@implementation TMBXively_Triggers_ReadTrigger_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a specific trigger for the authenticated account.
 */
@implementation TMBXively_Triggers_ReadTrigger

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Triggers_ReadTrigger Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Triggers/ReadTrigger"] autorelease];
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
		TMBXively_Triggers_ReadTrigger_ResultSet *results = [[[TMBXively_Triggers_ReadTrigger_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadTrigger Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Triggers_ReadTrigger_Inputs*)newInputSet {
		return [[[TMBXively_Triggers_ReadTrigger_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadProduct Choreo.
 */
@implementation TMBXively_Products_ReadProduct_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(required, string) The ID of the product you are trying to read information on.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadProduct Choreo.
 */
@implementation TMBXively_Products_ReadProduct_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a JSON representation of a product. 
 */
@implementation TMBXively_Products_ReadProduct

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Products_ReadProduct Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Products/ReadProduct"] autorelease];
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
		TMBXively_Products_ReadProduct_ResultSet *results = [[[TMBXively_Products_ReadProduct_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadProduct Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Products_ReadProduct_Inputs*)newInputSet {
		return [[[TMBXively_Products_ReadProduct_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadDevice Choreo.
 */
@implementation TMBXively_Devices_ReadDevice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(required, string) The product ID of the device you would like to read.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}

	/*!
	 * Set the value of the SerialNumber input for this Choreo.
	*(required, string) The serial number for the device you would like to read.
	 */
	-(void)setSerialNumber:(NSString*)SerialNumber {
		[super setInput:@"SerialNumber" toValue:SerialNumber];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadDevice Choreo.
 */
@implementation TMBXively_Devices_ReadDevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Xively.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a JSON representation of the device with the provided serial number.
 */
@implementation TMBXively_Devices_ReadDevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_Devices_ReadDevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/Devices/ReadDevice"] autorelease];
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
		TMBXively_Devices_ReadDevice_ResultSet *results = [[[TMBXively_Devices_ReadDevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadDevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_Devices_ReadDevice_Inputs*)newInputSet {
		return [[[TMBXively_Devices_ReadDevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WriteLocationData Choreo.
 */
@implementation TMBXively_ReadWriteData_WriteLocationData_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Xively.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Disposition input for this Choreo.
	*(optional, string) Can be set to "mobile" to enable creating waypoints (lat, lon and elevation with timestamp), or "fixed" (default) for a single location. Leave empty to keep existing settings.
	 */
	-(void)setDisposition:(NSString*)Disposition {
		[super setInput:@"Disposition" toValue:Disposition];
	}

	/*!
	 * Set the value of the Domain input for this Choreo.
	*(optional, string) The domain of the location, i.e. physical or virtual. Leave empty to keep existing Domain. Type "BLANK" to clear existing Domain. Ex: "physical".
	 */
	-(void)setDomain:(NSString*)Domain {
		[super setInput:@"Domain" toValue:Domain];
	}

	/*!
	 * Set the value of the Elevation input for this Choreo.
	*(optional, decimal) Elevation in meters. Leave empty to keep previously existing Elevation. Type "BLANK" to clear existing Elevation. Ex: 20.5.
	 */
	-(void)setElevation:(NSString*)Elevation {
		[super setInput:@"Elevation" toValue:Elevation];
	}

	/*!
	 * Set the value of the FeedID input for this Choreo.
	*(required, integer) The ID for the feed that you would like to update.
	 */
	-(void)setFeedID:(NSString*)FeedID {
		[super setInput:@"FeedID" toValue:FeedID];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) Latitude coordinates. Leave empty to keep previously existing Latitude. Type "BLANK" to clear existing Latitude. Ex: 40.728194.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) Longitude coordinates. Leave empty to keep previously existing Location. Type "BLANK" to clear existing settings. Ex: -73.957316.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) Name of Location. Leave empty to keep existing Location. Type "BLANK" to clear existing settings. Ex.: "My Fitbit Tracker".
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WriteLocationData Choreo.
 */
@implementation TMBXively_ReadWriteData_WriteLocationData_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code returned from Xively. For a successful feed location update, the code should be 200.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Allows you to easily update the location data of your feed.
 */
@implementation TMBXively_ReadWriteData_WriteLocationData

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBXively_ReadWriteData_WriteLocationData Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Xively/ReadWriteData/WriteLocationData"] autorelease];
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
		TMBXively_ReadWriteData_WriteLocationData_ResultSet *results = [[[TMBXively_ReadWriteData_WriteLocationData_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WriteLocationData Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBXively_ReadWriteData_WriteLocationData_Inputs*)newInputSet {
		return [[[TMBXively_ReadWriteData_WriteLocationData_Inputs alloc] init] autorelease];
	}
@end
	
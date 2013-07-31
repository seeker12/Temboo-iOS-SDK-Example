/*!
 * @TMBRightScale.m
 *
 * Execute Choreographies from the Temboo RightScale bundle.
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

#import "TMBRightScale.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the RunRightScript Choreo.
 */
@implementation TMBRightScale_RunRightScript_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RightScriptID input for this Choreo.
	*(required, integer) The ID of the RightScript.
	 */
	-(void)setRightScriptID:(NSString*)RightScriptID {
		[super setInput:@"RightScriptID" toValue:RightScriptID];
	}

	/*!
	 * Set the value of the ServerID input for this Choreo.
	*(required, integer) The RightScale Server ID that is to be stopped.
	 */
	-(void)setServerID:(NSString*)ServerID {
		[super setInput:@"ServerID" toValue:ServerID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RunRightScript Choreo.
 */
@implementation TMBRightScale_RunRightScript_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Executes a specified RightScript.
 */
@implementation TMBRightScale_RunRightScript

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_RunRightScript Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/RunRightScript"] autorelease];
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
		TMBRightScale_RunRightScript_ResultSet *results = [[[TMBRightScale_RunRightScript_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RunRightScript Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_RunRightScript_Inputs*)newInputSet {
		return [[[TMBRightScale_RunRightScript_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetArrayIndex Choreo.
 */
@implementation TMBRightScale_GetArrayIndex_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetArrayIndex Choreo.
 */
@implementation TMBRightScale_GetArrayIndex_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of server assets grouped within a particular RightScale Array. 
 */
@implementation TMBRightScale_GetArrayIndex

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_GetArrayIndex Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/GetArrayIndex"] autorelease];
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
		TMBRightScale_GetArrayIndex_ResultSet *results = [[[TMBRightScale_GetArrayIndex_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetArrayIndex Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_GetArrayIndex_Inputs*)newInputSet {
		return [[[TMBRightScale_GetArrayIndex_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateDeployment Choreo.
 */
@implementation TMBRightScale_CreateDeployment_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, integer) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the DeploymentDefaultEC2AvailabilityZone input for this Choreo.
	*(optional, string) The default EC2 availability zone for this deployment.
	 */
	-(void)setDeploymentDefaultEC2AvailabilityZone:(NSString*)DeploymentDefaultEC2AvailabilityZone {
		[super setInput:@"DeploymentDefaultEC2AvailabilityZone" toValue:DeploymentDefaultEC2AvailabilityZone];
	}

	/*!
	 * Set the value of the DeploymentDefaultVPCSubnetHref input for this Choreo.
	*(optional, string) The href of the vpc subnet.
	 */
	-(void)setDeploymentDefaultVPCSubnetHref:(NSString*)DeploymentDefaultVPCSubnetHref {
		[super setInput:@"DeploymentDefaultVPCSubnetHref" toValue:DeploymentDefaultVPCSubnetHref];
	}

	/*!
	 * Set the value of the DeploymentDescription input for this Choreo.
	*(optional, string) The deployment being created.
	 */
	-(void)setDeploymentDescription:(NSString*)DeploymentDescription {
		[super setInput:@"DeploymentDescription" toValue:DeploymentDescription];
	}

	/*!
	 * Set the value of the DeploymentNickname input for this Choreo.
	*(required, string) The nickname of the deployment being created.
	 */
	-(void)setDeploymentNickname:(NSString*)DeploymentNickname {
		[super setInput:@"DeploymentNickname" toValue:DeploymentNickname];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDeployment Choreo.
 */
@implementation TMBRightScale_CreateDeployment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create a RightScale Deployment.
 */
@implementation TMBRightScale_CreateDeployment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_CreateDeployment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/CreateDeployment"] autorelease];
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
		TMBRightScale_CreateDeployment_ResultSet *results = [[[TMBRightScale_CreateDeployment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateDeployment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_CreateDeployment_Inputs*)newInputSet {
		return [[[TMBRightScale_CreateDeployment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetServerSettings Choreo.
 */
@implementation TMBRightScale_GetServerSettings_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ServerID input for this Choreo.
	*(required, integer) The RightScale Server ID that is to be stopped.
	 */
	-(void)setServerID:(NSString*)ServerID {
		[super setInput:@"ServerID" toValue:ServerID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetServerSettings Choreo.
 */
@implementation TMBRightScale_GetServerSettings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve server settings for a specified RightScale Server ID.
 */
@implementation TMBRightScale_GetServerSettings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_GetServerSettings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/GetServerSettings"] autorelease];
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
		TMBRightScale_GetServerSettings_ResultSet *results = [[[TMBRightScale_GetServerSettings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetServerSettings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_GetServerSettings_Inputs*)newInputSet {
		return [[[TMBRightScale_GetServerSettings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateServer Choreo.
 */
@implementation TMBRightScale_CreateServer_Inputs

	/*!
	 * Set the value of the AKIImage input for this Choreo.
	*(optional, string) The URL to the AKI image.
	 */
	-(void)setAKIImage:(NSString*)AKIImage {
		[super setInput:@"AKIImage" toValue:AKIImage];
	}

	/*!
	 * Set the value of the ARIImage input for this Choreo.
	*(optional, string) The URL to the ARI Image.
	 */
	-(void)setARIImage:(NSString*)ARIImage {
		[super setInput:@"ARIImage" toValue:ARIImage];
	}

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, integer) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the CloudID input for this Choreo.
	*(optional, integer) The cloud region identifier. If undefined, the default is 1 (us-east).
	 */
	-(void)setCloudID:(NSString*)CloudID {
		[super setInput:@"CloudID" toValue:CloudID];
	}

	/*!
	 * Set the value of the EC2AvailabilityZone input for this Choreo.
	*(optional, string) The  EC2 availablity zone, for example: us-east-1a, or any.  Do not set, if also passing the vpc_subnet_href parameter.
	 */
	-(void)setEC2AvailabilityZone:(NSString*)EC2AvailabilityZone {
		[super setInput:@"EC2AvailabilityZone" toValue:EC2AvailabilityZone];
	}

	/*!
	 * Set the value of the EC2Image input for this Choreo.
	*(optional, string) The URL to AMI image.
	 */
	-(void)setEC2Image:(NSString*)EC2Image {
		[super setInput:@"EC2Image" toValue:EC2Image];
	}

	/*!
	 * Set the value of the EC2SSHKeyHref input for this Choreo.
	*(optional, string) The URL to the SSH Key.
	 */
	-(void)setEC2SSHKeyHref:(NSString*)EC2SSHKeyHref {
		[super setInput:@"EC2SSHKeyHref" toValue:EC2SSHKeyHref];
	}

	/*!
	 * Set the value of the EC2SecurityGroupsHref input for this Choreo.
	*(optional, string) The URL(s) to security group(s). Do not set, if also passing the vpc_subnet_href parameter.
	 */
	-(void)setEC2SecurityGroupsHref:(NSString*)EC2SecurityGroupsHref {
		[super setInput:@"EC2SecurityGroupsHref" toValue:EC2SecurityGroupsHref];
	}

	/*!
	 * Set the value of the InstanceType input for this Choreo.
	*(optional, string) The AWS instance type: small, medium, etc.
	 */
	-(void)setInstanceType:(NSString*)InstanceType {
		[super setInput:@"InstanceType" toValue:InstanceType];
	}

	/*!
	 * Set the value of the MaxSpotPrice input for this Choreo.
	*(optional, integer) The maximum price (a dollar value) dollars) per hour for the spot server.
	 */
	-(void)setMaxSpotPrice:(NSString*)MaxSpotPrice {
		[super setInput:@"MaxSpotPrice" toValue:MaxSpotPrice];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Pricing input for this Choreo.
	*(optional, string) AWS pricing.  Specify on_demand, or spot.
	 */
	-(void)setPricing:(NSString*)Pricing {
		[super setInput:@"Pricing" toValue:Pricing];
	}

	/*!
	 * Set the value of the ServerDeployment input for this Choreo.
	*(required, string) The URL of the deployment that this server wil be added to.
	 */
	-(void)setServerDeployment:(NSString*)ServerDeployment {
		[super setInput:@"ServerDeployment" toValue:ServerDeployment];
	}

	/*!
	 * Set the value of the ServerNickname input for this Choreo.
	*(required, string) The nickname for the server being created.
	 */
	-(void)setServerNickname:(NSString*)ServerNickname {
		[super setInput:@"ServerNickname" toValue:ServerNickname];
	}

	/*!
	 * Set the value of the ServerTemplate input for this Choreo.
	*(required, string) The URL to a server template.
	 */
	-(void)setServerTemplate:(NSString*)ServerTemplate {
		[super setInput:@"ServerTemplate" toValue:ServerTemplate];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The username obtained from RightScale.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VPCSubnet input for this Choreo.
	*(optional, string) The href to the VPC subnet.
	 */
	-(void)setVPCSubnet:(NSString*)VPCSubnet {
		[super setInput:@"VPCSubnet" toValue:VPCSubnet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateServer Choreo.
 */
@implementation TMBRightScale_CreateServer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a RightScale server instance.
 */
@implementation TMBRightScale_CreateServer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_CreateServer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/CreateServer"] autorelease];
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
		TMBRightScale_CreateServer_ResultSet *results = [[[TMBRightScale_CreateServer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateServer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_CreateServer_Inputs*)newInputSet {
		return [[[TMBRightScale_CreateServer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowArray Choreo.
 */
@implementation TMBRightScale_ShowArray_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ServerArrayID input for this Choreo.
	*(required, integer) The ID of a server array.
	 */
	-(void)setServerArrayID:(NSString*)ServerArrayID {
		[super setInput:@"ServerArrayID" toValue:ServerArrayID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowArray Choreo.
 */
@implementation TMBRightScale_ShowArray_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Display a comrephensive set of information about the querried array such as: server(s) state information, array templates used, array state, etc.
 */
@implementation TMBRightScale_ShowArray

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_ShowArray Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/ShowArray"] autorelease];
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
		TMBRightScale_ShowArray_ResultSet *results = [[[TMBRightScale_ShowArray_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowArray Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_ShowArray_Inputs*)newInputSet {
		return [[[TMBRightScale_ShowArray_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LaunchArrayInstance Choreo.
 */
@implementation TMBRightScale_LaunchArrayInstance_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ServerArrayID input for this Choreo.
	*(required, integer) The ID of a server array.
	 */
	-(void)setServerArrayID:(NSString*)ServerArrayID {
		[super setInput:@"ServerArrayID" toValue:ServerArrayID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LaunchArrayInstance Choreo.
 */
@implementation TMBRightScale_LaunchArrayInstance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Start an array instance.
 */
@implementation TMBRightScale_LaunchArrayInstance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_LaunchArrayInstance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/LaunchArrayInstance"] autorelease];
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
		TMBRightScale_LaunchArrayInstance_ResultSet *results = [[[TMBRightScale_LaunchArrayInstance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LaunchArrayInstance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_LaunchArrayInstance_Inputs*)newInputSet {
		return [[[TMBRightScale_LaunchArrayInstance_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StartServer Choreo.
 */
@implementation TMBRightScale_StartServer_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PollingTimeLimit input for this Choreo.
	*(optional, integer) Server status polling.  Enable by specifying a time limit - in minutes - for the duration of the server state polling.
	 */
	-(void)setPollingTimeLimit:(NSString*)PollingTimeLimit {
		[super setInput:@"PollingTimeLimit" toValue:PollingTimeLimit];
	}

	/*!
	 * Set the value of the ServerID input for this Choreo.
	*(required, integer) The RightScale Server ID that is to be stopped.
	 */
	-(void)setServerID:(NSString*)ServerID {
		[super setInput:@"ServerID" toValue:ServerID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StartServer Choreo.
 */
@implementation TMBRightScale_StartServer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "State" output from an execution of this Choreo.
	 * @return - NSString* (string) The server 'state' parsed from the Rightscale response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getState {
		return [super getOutputByName:@"State"];
	}
	
@end

/*!
 * Start a server associated with a particular Server ID.  Optionally, this Choreo can also poll the startup process and verify server startup.
 */
@implementation TMBRightScale_StartServer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_StartServer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/StartServer"] autorelease];
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
		TMBRightScale_StartServer_ResultSet *results = [[[TMBRightScale_StartServer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StartServer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_StartServer_Inputs*)newInputSet {
		return [[[TMBRightScale_StartServer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowServerIndex Choreo.
 */
@implementation TMBRightScale_ShowServerIndex_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowServerIndex Choreo.
 */
@implementation TMBRightScale_ShowServerIndex_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Display an index of all servers in a RightScale account.
 */
@implementation TMBRightScale_ShowServerIndex

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_ShowServerIndex Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/ShowServerIndex"] autorelease];
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
		TMBRightScale_ShowServerIndex_ResultSet *results = [[[TMBRightScale_ShowServerIndex_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowServerIndex Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_ShowServerIndex_Inputs*)newInputSet {
		return [[[TMBRightScale_ShowServerIndex_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the IndexDeployments Choreo.
 */
@implementation TMBRightScale_IndexDeployments_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Filter input for this Choreo.
	*(optional, string) An attributeName=AttributeValue filter pair. For example: nickname=mynick; OR description<>mydesc
	 */
	-(void)setFilter:(NSString*)Filter {
		[super setInput:@"Filter" toValue:Filter];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the inputFile input for this Choreo.
	*
	 */
	-(void)setinputFile:(NSString*)inputFile {
		[super setInput:@"inputFile" toValue:inputFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the IndexDeployments Choreo.
 */
@implementation TMBRightScale_IndexDeployments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of server assets grouped within a particular RightScale Deployment. 
 */
@implementation TMBRightScale_IndexDeployments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_IndexDeployments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/IndexDeployments"] autorelease];
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
		TMBRightScale_IndexDeployments_ResultSet *results = [[[TMBRightScale_IndexDeployments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the IndexDeployments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_IndexDeployments_Inputs*)newInputSet {
		return [[[TMBRightScale_IndexDeployments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowServer Choreo.
 */
@implementation TMBRightScale_ShowServer_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ServerID input for this Choreo.
	*(required, integer) The RightScale Server ID that is to be stopped.
	 */
	-(void)setServerID:(NSString*)ServerID {
		[super setInput:@"ServerID" toValue:ServerID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowServer Choreo.
 */
@implementation TMBRightScale_ShowServer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Display a comrephensive set of information about the querried server such as: state information, server templates used, SSH key href, etc.
 */
@implementation TMBRightScale_ShowServer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_ShowServer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/ShowServer"] autorelease];
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
		TMBRightScale_ShowServer_ResultSet *results = [[[TMBRightScale_ShowServer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowServer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_ShowServer_Inputs*)newInputSet {
		return [[[TMBRightScale_ShowServer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TerminateArrayInstances Choreo.
 */
@implementation TMBRightScale_TerminateArrayInstances_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ServerArrayID input for this Choreo.
	*(required, integer) The ID of a server array.
	 */
	-(void)setServerArrayID:(NSString*)ServerArrayID {
		[super setInput:@"ServerArrayID" toValue:ServerArrayID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TerminateArrayInstances Choreo.
 */
@implementation TMBRightScale_TerminateArrayInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Terminate an array instance.

 */
@implementation TMBRightScale_TerminateArrayInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_TerminateArrayInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/TerminateArrayInstances"] autorelease];
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
		TMBRightScale_TerminateArrayInstances_ResultSet *results = [[[TMBRightScale_TerminateArrayInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TerminateArrayInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_TerminateArrayInstances_Inputs*)newInputSet {
		return [[[TMBRightScale_TerminateArrayInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllOperationalArrayInstances Choreo.
 */
@implementation TMBRightScale_ListAllOperationalArrayInstances_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ServerArrayID input for this Choreo.
	*(required, integer) The ID of a server array.
	 */
	-(void)setServerArrayID:(NSString*)ServerArrayID {
		[super setInput:@"ServerArrayID" toValue:ServerArrayID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllOperationalArrayInstances Choreo.
 */
@implementation TMBRightScale_ListAllOperationalArrayInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * List all operational instances in an array.
 */
@implementation TMBRightScale_ListAllOperationalArrayInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_ListAllOperationalArrayInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/ListAllOperationalArrayInstances"] autorelease];
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
		TMBRightScale_ListAllOperationalArrayInstances_ResultSet *results = [[[TMBRightScale_ListAllOperationalArrayInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllOperationalArrayInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_ListAllOperationalArrayInstances_Inputs*)newInputSet {
		return [[[TMBRightScale_ListAllOperationalArrayInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StopServer Choreo.
 */
@implementation TMBRightScale_StopServer_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, integer) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PollingTimeLimit input for this Choreo.
	*(optional, integer) Server status polling.  Enable by specifying a time limit - in minutes - for the duration of the server state polling.
	 */
	-(void)setPollingTimeLimit:(NSString*)PollingTimeLimit {
		[super setInput:@"PollingTimeLimit" toValue:PollingTimeLimit];
	}

	/*!
	 * Set the value of the ServerID input for this Choreo.
	*(required, integer) The RightScale Server ID that is to be stopped.
	 */
	-(void)setServerID:(NSString*)ServerID {
		[super setInput:@"ServerID" toValue:ServerID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StopServer Choreo.
 */
@implementation TMBRightScale_StopServer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "State" output from an execution of this Choreo.
	 * @return - NSString* (string) The server 'state' parsed from the Rightscale response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getState {
		return [super getOutputByName:@"State"];
	}
	
@end

/*!
 * Stop a RightScale server instance. Optionally, this Choreo can also poll the stop process and verify server termination.
 */
@implementation TMBRightScale_StopServer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_StopServer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/StopServer"] autorelease];
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
		TMBRightScale_StopServer_ResultSet *results = [[[TMBRightScale_StopServer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StopServer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_StopServer_Inputs*)newInputSet {
		return [[[TMBRightScale_StopServer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowDeploymentIndex Choreo.
 */
@implementation TMBRightScale_ShowDeploymentIndex_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, string) The RightScale Account ID.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the DeploymentID input for this Choreo.
	*(required, integer) The DeploymentID to only list servers in this particular RightScale deployment.
	 */
	-(void)setDeploymentID:(NSString*)DeploymentID {
		[super setInput:@"DeploymentID" toValue:DeploymentID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ServerSettings input for this Choreo.
	*(optional, string) Display additional information about this RightScale deployment. Set True to enable.
	 */
	-(void)setServerSettings:(NSString*)ServerSettings {
		[super setInput:@"ServerSettings" toValue:ServerSettings];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowDeploymentIndex Choreo.
 */
@implementation TMBRightScale_ShowDeploymentIndex_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of server assets grouped within a particular RightScale Deployment ID. 
 */
@implementation TMBRightScale_ShowDeploymentIndex

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_ShowDeploymentIndex Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/ShowDeploymentIndex"] autorelease];
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
		TMBRightScale_ShowDeploymentIndex_ResultSet *results = [[[TMBRightScale_ShowDeploymentIndex_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowDeploymentIndex Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_ShowDeploymentIndex_Inputs*)newInputSet {
		return [[[TMBRightScale_ShowDeploymentIndex_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateServerXMLInput Choreo.
 */
@implementation TMBRightScale_CreateServerXMLInput_Inputs

	/*!
	 * Set the value of the ServerParameters input for this Choreo.
	*(required, xml) The XML file containing the required parameters for the server creation. See documentation for XML schema.
	 */
	-(void)setServerParameters:(NSString*)ServerParameters {
		[super setInput:@"ServerParameters" toValue:ServerParameters];
	}

	/*!
	 * Set the value of the ARIImage input for this Choreo.
	*(required, string) The URL to the ARI Image.
	 */
	-(void)setARIImage:(NSString*)ARIImage {
		[super setInput:@"ARIImage" toValue:ARIImage];
	}

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(required, integer) The Account ID obtained from RightScale.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the CloudID input for this Choreo.
	*(required, integer) The cloud region identifier. If undefined, the default is: 1 (us-east).
	 */
	-(void)setCloudID:(NSString*)CloudID {
		[super setInput:@"CloudID" toValue:CloudID];
	}

	/*!
	 * Set the value of the EC2AvailabilityZone input for this Choreo.
	*(optional, any) The  EC2 availablity zone, for example: us-east-1a, or any.  Do not set, if also passing the vpc_subnet_href parameter.
	 */
	-(void)setEC2AvailabilityZone:(NSString*)EC2AvailabilityZone {
		[super setInput:@"EC2AvailabilityZone" toValue:EC2AvailabilityZone];
	}

	/*!
	 * Set the value of the EC2Image input for this Choreo.
	*(required, string) The URL to AMI image.
	 */
	-(void)setEC2Image:(NSString*)EC2Image {
		[super setInput:@"EC2Image" toValue:EC2Image];
	}

	/*!
	 * Set the value of the EC2SSHKeyHref input for this Choreo.
	*(optional, any) The URL to the SSH Key.
	 */
	-(void)setEC2SSHKeyHref:(NSString*)EC2SSHKeyHref {
		[super setInput:@"EC2SSHKeyHref" toValue:EC2SSHKeyHref];
	}

	/*!
	 * Set the value of the EC2SecurityGroupsHref input for this Choreo.
	*(optional, any) The URL(s) to security group(s). Do not set, if also passing the vpc_subnet_href parameter.
	 */
	-(void)setEC2SecurityGroupsHref:(NSString*)EC2SecurityGroupsHref {
		[super setInput:@"EC2SecurityGroupsHref" toValue:EC2SecurityGroupsHref];
	}

	/*!
	 * Set the value of the InstanceType input for this Choreo.
	*(optional, any) The AWS instance type: small, medium, etc.
	 */
	-(void)setInstanceType:(NSString*)InstanceType {
		[super setInput:@"InstanceType" toValue:InstanceType];
	}

	/*!
	 * Set the value of the MaxSpotPrice input for this Choreo.
	*(required, integer) The maximum price (a dollar value) dollars) per hour for the spot server.
	 */
	-(void)setMaxSpotPrice:(NSString*)MaxSpotPrice {
		[super setInput:@"MaxSpotPrice" toValue:MaxSpotPrice];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The RightScale account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Pricing input for this Choreo.
	*(required, string) AWS pricing.  Specify on_demand, or spot.
	 */
	-(void)setPricing:(NSString*)Pricing {
		[super setInput:@"Pricing" toValue:Pricing];
	}

	/*!
	 * Set the value of the ServerDeployment input for this Choreo.
	*(optional, any) The URL of the deployment that this server wil be added to.
	 */
	-(void)setServerDeployment:(NSString*)ServerDeployment {
		[super setInput:@"ServerDeployment" toValue:ServerDeployment];
	}

	/*!
	 * Set the value of the ServerNickname input for this Choreo.
	*(optional, any) The nickname for the server being created.
	 */
	-(void)setServerNickname:(NSString*)ServerNickname {
		[super setInput:@"ServerNickname" toValue:ServerNickname];
	}

	/*!
	 * Set the value of the ServerTemplate input for this Choreo.
	*(optional, any) The URL to a server template.
	 */
	-(void)setServerTemplate:(NSString*)ServerTemplate {
		[super setInput:@"ServerTemplate" toValue:ServerTemplate];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The RightScale username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VPCSubnet input for this Choreo.
	*(required, string) The href to the VPC subnet
	 */
	-(void)setVPCSubnet:(NSString*)VPCSubnet {
		[super setInput:@"VPCSubnet" toValue:VPCSubnet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateServerXMLInput Choreo.
 */
@implementation TMBRightScale_CreateServerXMLInput_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Rightscale in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a RightScale server instance using a given XML template.
 */
@implementation TMBRightScale_CreateServerXMLInput

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRightScale_CreateServerXMLInput Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RightScale/CreateServerXMLInput"] autorelease];
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
		TMBRightScale_CreateServerXMLInput_ResultSet *results = [[[TMBRightScale_CreateServerXMLInput_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateServerXMLInput Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRightScale_CreateServerXMLInput_Inputs*)newInputSet {
		return [[[TMBRightScale_CreateServerXMLInput_Inputs alloc] init] autorelease];
	}
@end
	
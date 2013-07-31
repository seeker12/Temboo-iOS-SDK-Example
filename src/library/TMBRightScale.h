/*!
 * @header Temboo iOS SDK RightScale classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBRightScale.RunRightScript Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RunRightScript Choreo.
 */
@interface TMBRightScale_RunRightScript_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setRightScriptID:(NSString*)RightScriptID;
	-(void)setServerID:(NSString*)ServerID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RunRightScript Choreo.
 */
@interface TMBRightScale_RunRightScript_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Executes a specified RightScript.
 */
@interface TMBRightScale_RunRightScript : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_RunRightScript_Inputs*)newInputSet;
@end

/*! group TMBRightScale_RunRightScript Choreo */


/*! group TMBRightScale.GetArrayIndex Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetArrayIndex Choreo.
 */
@interface TMBRightScale_GetArrayIndex_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetArrayIndex Choreo.
 */
@interface TMBRightScale_GetArrayIndex_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of server assets grouped within a particular RightScale Array. 
 */
@interface TMBRightScale_GetArrayIndex : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_GetArrayIndex_Inputs*)newInputSet;
@end

/*! group TMBRightScale_GetArrayIndex Choreo */


/*! group TMBRightScale.CreateDeployment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateDeployment Choreo.
 */
@interface TMBRightScale_CreateDeployment_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setDeploymentDefaultEC2AvailabilityZone:(NSString*)DeploymentDefaultEC2AvailabilityZone;
	-(void)setDeploymentDefaultVPCSubnetHref:(NSString*)DeploymentDefaultVPCSubnetHref;
	-(void)setDeploymentDescription:(NSString*)DeploymentDescription;
	-(void)setDeploymentNickname:(NSString*)DeploymentNickname;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDeployment Choreo.
 */
@interface TMBRightScale_CreateDeployment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create a RightScale Deployment.
 */
@interface TMBRightScale_CreateDeployment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_CreateDeployment_Inputs*)newInputSet;
@end

/*! group TMBRightScale_CreateDeployment Choreo */


/*! group TMBRightScale.GetServerSettings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetServerSettings Choreo.
 */
@interface TMBRightScale_GetServerSettings_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServerID:(NSString*)ServerID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetServerSettings Choreo.
 */
@interface TMBRightScale_GetServerSettings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve server settings for a specified RightScale Server ID.
 */
@interface TMBRightScale_GetServerSettings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_GetServerSettings_Inputs*)newInputSet;
@end

/*! group TMBRightScale_GetServerSettings Choreo */


/*! group TMBRightScale.CreateServer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateServer Choreo.
 */
@interface TMBRightScale_CreateServer_Inputs : TMBChoreographyInputSet
	-(void)setAKIImage:(NSString*)AKIImage;
	-(void)setARIImage:(NSString*)ARIImage;
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setCloudID:(NSString*)CloudID;
	-(void)setEC2AvailabilityZone:(NSString*)EC2AvailabilityZone;
	-(void)setEC2Image:(NSString*)EC2Image;
	-(void)setEC2SSHKeyHref:(NSString*)EC2SSHKeyHref;
	-(void)setEC2SecurityGroupsHref:(NSString*)EC2SecurityGroupsHref;
	-(void)setInstanceType:(NSString*)InstanceType;
	-(void)setMaxSpotPrice:(NSString*)MaxSpotPrice;
	-(void)setPassword:(NSString*)Password;
	-(void)setPricing:(NSString*)Pricing;
	-(void)setServerDeployment:(NSString*)ServerDeployment;
	-(void)setServerNickname:(NSString*)ServerNickname;
	-(void)setServerTemplate:(NSString*)ServerTemplate;
	-(void)setUsername:(NSString*)Username;
	-(void)setVPCSubnet:(NSString*)VPCSubnet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateServer Choreo.
 */
@interface TMBRightScale_CreateServer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a RightScale server instance.
 */
@interface TMBRightScale_CreateServer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_CreateServer_Inputs*)newInputSet;
@end

/*! group TMBRightScale_CreateServer Choreo */


/*! group TMBRightScale.ShowArray Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowArray Choreo.
 */
@interface TMBRightScale_ShowArray_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServerArrayID:(NSString*)ServerArrayID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowArray Choreo.
 */
@interface TMBRightScale_ShowArray_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Display a comrephensive set of information about the querried array such as: server(s) state information, array templates used, array state, etc.
 */
@interface TMBRightScale_ShowArray : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_ShowArray_Inputs*)newInputSet;
@end

/*! group TMBRightScale_ShowArray Choreo */


/*! group TMBRightScale.LaunchArrayInstance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LaunchArrayInstance Choreo.
 */
@interface TMBRightScale_LaunchArrayInstance_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServerArrayID:(NSString*)ServerArrayID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LaunchArrayInstance Choreo.
 */
@interface TMBRightScale_LaunchArrayInstance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Start an array instance.
 */
@interface TMBRightScale_LaunchArrayInstance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_LaunchArrayInstance_Inputs*)newInputSet;
@end

/*! group TMBRightScale_LaunchArrayInstance Choreo */


/*! group TMBRightScale.StartServer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StartServer Choreo.
 */
@interface TMBRightScale_StartServer_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setPollingTimeLimit:(NSString*)PollingTimeLimit;
	-(void)setServerID:(NSString*)ServerID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StartServer Choreo.
 */
@interface TMBRightScale_StartServer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getState;	
@end

/*!
 * Start a server associated with a particular Server ID.  Optionally, this Choreo can also poll the startup process and verify server startup.
 */
@interface TMBRightScale_StartServer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_StartServer_Inputs*)newInputSet;
@end

/*! group TMBRightScale_StartServer Choreo */


/*! group TMBRightScale.ShowServerIndex Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowServerIndex Choreo.
 */
@interface TMBRightScale_ShowServerIndex_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowServerIndex Choreo.
 */
@interface TMBRightScale_ShowServerIndex_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Display an index of all servers in a RightScale account.
 */
@interface TMBRightScale_ShowServerIndex : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_ShowServerIndex_Inputs*)newInputSet;
@end

/*! group TMBRightScale_ShowServerIndex Choreo */


/*! group TMBRightScale.IndexDeployments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the IndexDeployments Choreo.
 */
@interface TMBRightScale_IndexDeployments_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setFilter:(NSString*)Filter;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
	-(void)setinputFile:(NSString*)inputFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the IndexDeployments Choreo.
 */
@interface TMBRightScale_IndexDeployments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of server assets grouped within a particular RightScale Deployment. 
 */
@interface TMBRightScale_IndexDeployments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_IndexDeployments_Inputs*)newInputSet;
@end

/*! group TMBRightScale_IndexDeployments Choreo */


/*! group TMBRightScale.ShowServer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowServer Choreo.
 */
@interface TMBRightScale_ShowServer_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServerID:(NSString*)ServerID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowServer Choreo.
 */
@interface TMBRightScale_ShowServer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Display a comrephensive set of information about the querried server such as: state information, server templates used, SSH key href, etc.
 */
@interface TMBRightScale_ShowServer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_ShowServer_Inputs*)newInputSet;
@end

/*! group TMBRightScale_ShowServer Choreo */


/*! group TMBRightScale.TerminateArrayInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TerminateArrayInstances Choreo.
 */
@interface TMBRightScale_TerminateArrayInstances_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServerArrayID:(NSString*)ServerArrayID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TerminateArrayInstances Choreo.
 */
@interface TMBRightScale_TerminateArrayInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Terminate an array instance.

 */
@interface TMBRightScale_TerminateArrayInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_TerminateArrayInstances_Inputs*)newInputSet;
@end

/*! group TMBRightScale_TerminateArrayInstances Choreo */


/*! group TMBRightScale.ListAllOperationalArrayInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllOperationalArrayInstances Choreo.
 */
@interface TMBRightScale_ListAllOperationalArrayInstances_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServerArrayID:(NSString*)ServerArrayID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllOperationalArrayInstances Choreo.
 */
@interface TMBRightScale_ListAllOperationalArrayInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * List all operational instances in an array.
 */
@interface TMBRightScale_ListAllOperationalArrayInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_ListAllOperationalArrayInstances_Inputs*)newInputSet;
@end

/*! group TMBRightScale_ListAllOperationalArrayInstances Choreo */


/*! group TMBRightScale.StopServer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StopServer Choreo.
 */
@interface TMBRightScale_StopServer_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setPassword:(NSString*)Password;
	-(void)setPollingTimeLimit:(NSString*)PollingTimeLimit;
	-(void)setServerID:(NSString*)ServerID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StopServer Choreo.
 */
@interface TMBRightScale_StopServer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getState;	
@end

/*!
 * Stop a RightScale server instance. Optionally, this Choreo can also poll the stop process and verify server termination.
 */
@interface TMBRightScale_StopServer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_StopServer_Inputs*)newInputSet;
@end

/*! group TMBRightScale_StopServer Choreo */


/*! group TMBRightScale.ShowDeploymentIndex Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowDeploymentIndex Choreo.
 */
@interface TMBRightScale_ShowDeploymentIndex_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setDeploymentID:(NSString*)DeploymentID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServerSettings:(NSString*)ServerSettings;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowDeploymentIndex Choreo.
 */
@interface TMBRightScale_ShowDeploymentIndex_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of server assets grouped within a particular RightScale Deployment ID. 
 */
@interface TMBRightScale_ShowDeploymentIndex : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_ShowDeploymentIndex_Inputs*)newInputSet;
@end

/*! group TMBRightScale_ShowDeploymentIndex Choreo */


/*! group TMBRightScale.CreateServerXMLInput Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateServerXMLInput Choreo.
 */
@interface TMBRightScale_CreateServerXMLInput_Inputs : TMBChoreographyInputSet
	-(void)setServerParameters:(NSString*)ServerParameters;
	-(void)setARIImage:(NSString*)ARIImage;
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setCloudID:(NSString*)CloudID;
	-(void)setEC2AvailabilityZone:(NSString*)EC2AvailabilityZone;
	-(void)setEC2Image:(NSString*)EC2Image;
	-(void)setEC2SSHKeyHref:(NSString*)EC2SSHKeyHref;
	-(void)setEC2SecurityGroupsHref:(NSString*)EC2SecurityGroupsHref;
	-(void)setInstanceType:(NSString*)InstanceType;
	-(void)setMaxSpotPrice:(NSString*)MaxSpotPrice;
	-(void)setPassword:(NSString*)Password;
	-(void)setPricing:(NSString*)Pricing;
	-(void)setServerDeployment:(NSString*)ServerDeployment;
	-(void)setServerNickname:(NSString*)ServerNickname;
	-(void)setServerTemplate:(NSString*)ServerTemplate;
	-(void)setUsername:(NSString*)Username;
	-(void)setVPCSubnet:(NSString*)VPCSubnet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateServerXMLInput Choreo.
 */
@interface TMBRightScale_CreateServerXMLInput_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a RightScale server instance using a given XML template.
 */
@interface TMBRightScale_CreateServerXMLInput : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRightScale_CreateServerXMLInput_Inputs*)newInputSet;
@end

/*! group TMBRightScale_CreateServerXMLInput Choreo */

/*!
 * @header Temboo iOS SDK Xively classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBXively.Devices.ActivateDevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ActivateDevice Choreo.
 */
@interface TMBXively_Devices_ActivateDevice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setActivationCode:(NSString*)ActivationCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ActivateDevice Choreo.
 */
@interface TMBXively_Devices_ActivateDevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Activates (or reactivates) a device given an authorization code. Returns the device API Key and Feed ID. 
 */
@interface TMBXively_Devices_ActivateDevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Devices_ActivateDevice_Inputs*)newInputSet;
@end

/*! group TMBXively.Devices_ActivateDevice Choreo */


/*! group TMBXively.Products.CreateProduct Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateProduct Choreo.
 */
@interface TMBXively_Products_CreateProduct_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCustomProduct:(NSString*)CustomProduct;
	-(void)setDatastreams:(NSString*)Datastreams;
	-(void)setDescription:(NSString*)Description;
	-(void)setName:(NSString*)Name;
	-(void)setPrivate:(NSString*)Private;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateProduct Choreo.
 */
@interface TMBXively_Products_CreateProduct_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getProductID;
	-(NSString*)getProductLocation;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Creates a new product batch.
 */
@interface TMBXively_Products_CreateProduct : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Products_CreateProduct_Inputs*)newInputSet;
@end

/*! group TMBXively.Products_CreateProduct Choreo */


/*! group TMBXively.Triggers.CreateTrigger Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateTrigger Choreo.
 */
@interface TMBXively_Triggers_CreateTrigger_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDatastreamID:(NSString*)DatastreamID;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setThresholdValue:(NSString*)ThresholdValue;
	-(void)setTriggerType:(NSString*)TriggerType;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTrigger Choreo.
 */
@interface TMBXively_Triggers_CreateTrigger_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;
	-(NSString*)getTriggerID;
	-(NSString*)getTriggerLocation;	
@end

/*!
 * Creates a new trigger.
 */
@interface TMBXively_Triggers_CreateTrigger : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Triggers_CreateTrigger_Inputs*)newInputSet;
@end

/*! group TMBXively.Triggers_CreateTrigger Choreo */


/*! group TMBXively.APIKeys.ListAllKeys Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllKeys Choreo.
 */
@interface TMBXively_APIKeys_ListAllKeys_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllKeys Choreo.
 */
@interface TMBXively_APIKeys_ListAllKeys_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a JSON or XML representation of all of the user's keys.
 */
@interface TMBXively_APIKeys_ListAllKeys : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_APIKeys_ListAllKeys_Inputs*)newInputSet;
@end

/*! group TMBXively.APIKeys_ListAllKeys Choreo */


/*! group TMBXively.Triggers.DeleteTrigger Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTrigger Choreo.
 */
@interface TMBXively_Triggers_DeleteTrigger_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setTriggerID:(NSString*)TriggerID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTrigger Choreo.
 */
@interface TMBXively_Triggers_DeleteTrigger_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Deletes the specified trigger.
 */
@interface TMBXively_Triggers_DeleteTrigger : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Triggers_DeleteTrigger_Inputs*)newInputSet;
@end

/*! group TMBXively.Triggers_DeleteTrigger Choreo */


/*! group TMBXively.APIKeys.DeleteKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteKey Choreo.
 */
@interface TMBXively_APIKeys_DeleteKey_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setMasterAPIKey:(NSString*)MasterAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteKey Choreo.
 */
@interface TMBXively_APIKeys_DeleteKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Deletes a specific API Key.
 */
@interface TMBXively_APIKeys_DeleteKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_APIKeys_DeleteKey_Inputs*)newInputSet;
@end

/*! group TMBXively.APIKeys_DeleteKey Choreo */


/*! group TMBXively.ReadWriteData.WriteData Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WriteData Choreo.
 */
@interface TMBXively_ReadWriteData_WriteData_Inputs : TMBChoreographyInputSet
	-(void)setFeedData:(NSString*)FeedData;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDatastreamID:(NSString*)DatastreamID;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setFeedType:(NSString*)FeedType;
	-(void)setTimestamp:(NSString*)Timestamp;
	-(void)setValue:(NSString*)Value;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WriteData Choreo.
 */
@interface TMBXively_ReadWriteData_WriteData_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Allows you to update your feed, including updating/creating new datastreams and datapoints. 
 */
@interface TMBXively_ReadWriteData_WriteData : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_WriteData_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_WriteData Choreo */


/*! group TMBXively.ReadWriteData.DeleteMultipleDatapoints Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteMultipleDatapoints Choreo.
 */
@interface TMBXively_ReadWriteData_DeleteMultipleDatapoints_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDatastreamID:(NSString*)DatastreamID;
	-(void)setDuration:(NSString*)Duration;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setStartDate:(NSString*)StartDate;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteMultipleDatapoints Choreo.
 */
@interface TMBXively_ReadWriteData_DeleteMultipleDatapoints_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponsStatusCode;	
@end

/*!
 * Deletes multiple datapoints from a single datastream given a start date, end date, and/or duration.
 */
@interface TMBXively_ReadWriteData_DeleteMultipleDatapoints : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_DeleteMultipleDatapoints_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_DeleteMultipleDatapoints Choreo */


/*! group TMBXively.APIKeys.RegenerateKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RegenerateKey Choreo.
 */
@interface TMBXively_APIKeys_RegenerateKey_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setMasterAPIKey:(NSString*)MasterAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RegenerateKey Choreo.
 */
@interface TMBXively_APIKeys_RegenerateKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAPIKeyLocation;
	-(NSString*)getNewAPIKey;	
@end

/*!
 * Allows you to regenerate a new key with the same attributes and permissions as a previous key.
 */
@interface TMBXively_APIKeys_RegenerateKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_APIKeys_RegenerateKey_Inputs*)newInputSet;
@end

/*! group TMBXively.APIKeys_RegenerateKey Choreo */


/*! group TMBXively.Triggers.ListAllTriggers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllTriggers Choreo.
 */
@interface TMBXively_Triggers_ListAllTriggers_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllTriggers Choreo.
 */
@interface TMBXively_Triggers_ListAllTriggers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns all triggers for the authenticated account.
 */
@interface TMBXively_Triggers_ListAllTriggers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Triggers_ListAllTriggers_Inputs*)newInputSet;
@end

/*! group TMBXively.Triggers_ListAllTriggers Choreo */


/*! group TMBXively.ReadWriteData.ReadGraph Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadGraph Choreo.
 */
@interface TMBXively_ReadWriteData_ReadGraph_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setColor:(NSString*)Color;
	-(void)setDatastreamID:(NSString*)DatastreamID;
	-(void)setDuration:(NSString*)Duration;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setFindPrevious:(NSString*)FindPrevious;
	-(void)setHeight:(NSString*)Height;
	-(void)setIntervalType:(NSString*)IntervalType;
	-(void)setInterval:(NSString*)Interval;
	-(void)setLegend:(NSString*)Legend;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLineSize:(NSString*)LineSize;
	-(void)setShowAxisLabels:(NSString*)ShowAxisLabels;
	-(void)setShowDetailedGrid:(NSString*)ShowDetailedGrid;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTimezone:(NSString*)Timezone;
	-(void)setTitle:(NSString*)Title;
	-(void)setWidth:(NSString*)Width;
	-(void)setYAxisMax:(NSString*)YAxisMax;
	-(void)setYAxisMin:(NSString*)YAxisMin;
	-(void)setYAxisScale:(NSString*)YAxisScale;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadGraph Choreo.
 */
@interface TMBXively_ReadWriteData_ReadGraph_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a customizable graph (Base64-encoded PNG image file) of datapoints from a specific datastream.
 */
@interface TMBXively_ReadWriteData_ReadGraph : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_ReadGraph_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_ReadGraph Choreo */


/*! group TMBXively.ReadWriteData.ReadFeed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadFeed Choreo.
 */
@interface TMBXively_ReadWriteData_ReadFeed_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDatastreams:(NSString*)Datastreams;
	-(void)setDuration:(NSString*)Duration;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setFeedType:(NSString*)FeedType;
	-(void)setFindPrevious:(NSString*)FindPrevious;
	-(void)setIntervalType:(NSString*)IntervalType;
	-(void)setInterval:(NSString*)Interval;
	-(void)setLimit:(NSString*)Limit;
	-(void)setShowUser:(NSString*)ShowUser;
	-(void)setStartDate:(NSString*)StartDate;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadFeed Choreo.
 */
@interface TMBXively_ReadWriteData_ReadFeed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns filterable data on a specific feed viewable by the authenticated account.
 */
@interface TMBXively_ReadWriteData_ReadFeed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_ReadFeed_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_ReadFeed Choreo */


/*! group TMBXively.Products.UpdateProduct Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateProduct Choreo.
 */
@interface TMBXively_Products_UpdateProduct_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCustomProduct:(NSString*)CustomProduct;
	-(void)setDatastreams:(NSString*)Datastreams;
	-(void)setDescription:(NSString*)Description;
	-(void)setName:(NSString*)Name;
	-(void)setPrivate:(NSString*)Private;
	-(void)setProductID:(NSString*)ProductID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateProduct Choreo.
 */
@interface TMBXively_Products_UpdateProduct_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Updates an existing product batch.
 */
@interface TMBXively_Products_UpdateProduct : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Products_UpdateProduct_Inputs*)newInputSet;
@end

/*! group TMBXively.Products_UpdateProduct Choreo */


/*! group TMBXively.Devices.UpdateDevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateDevice Choreo.
 */
@interface TMBXively_Devices_UpdateDevice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setNewSerialNumber:(NSString*)NewSerialNumber;
	-(void)setProductID:(NSString*)ProductID;
	-(void)setSerialNumber:(NSString*)SerialNumber;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateDevice Choreo.
 */
@interface TMBXively_Devices_UpdateDevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Updates a single device's serial number. 
 */
@interface TMBXively_Devices_UpdateDevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Devices_UpdateDevice_Inputs*)newInputSet;
@end

/*! group TMBXively.Devices_UpdateDevice Choreo */


/*! group TMBXively.APIKeys.ReadKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadKey Choreo.
 */
@interface TMBXively_APIKeys_ReadKey_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setMasterAPIKey:(NSString*)MasterAPIKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadKey Choreo.
 */
@interface TMBXively_APIKeys_ReadKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a JSON or XML representation of the specified APIKey.
 */
@interface TMBXively_APIKeys_ReadKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_APIKeys_ReadKey_Inputs*)newInputSet;
@end

/*! group TMBXively.APIKeys_ReadKey Choreo */


/*! group TMBXively.Devices.CreateDevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateDevice Choreo.
 */
@interface TMBXively_Devices_CreateDevice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setProductID:(NSString*)ProductID;
	-(void)setSerialNumbers:(NSString*)SerialNumbers;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDevice Choreo.
 */
@interface TMBXively_Devices_CreateDevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Creates a new device in a product batch for each serial number provided. When created, each device will be in a pre-registered state awaiting activation. Creating a non-product-affiliated device is not available through the Xively API, and can only be done through the browser-only Xively Developer Workbench.
 */
@interface TMBXively_Devices_CreateDevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Devices_CreateDevice_Inputs*)newInputSet;
@end

/*! group TMBXively.Devices_CreateDevice Choreo */


/*! group TMBXively.Products.ListAllProducts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllProducts Choreo.
 */
@interface TMBXively_Products_ListAllProducts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllProducts Choreo.
 */
@interface TMBXively_Products_ListAllProducts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a JSON representation of all products associated with the specified APIKey.
 */
@interface TMBXively_Products_ListAllProducts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Products_ListAllProducts_Inputs*)newInputSet;
@end

/*! group TMBXively.Products_ListAllProducts Choreo */


/*! group TMBXively.Products.DeleteProduct Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteProduct Choreo.
 */
@interface TMBXively_Products_DeleteProduct_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setProductID:(NSString*)ProductID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteProduct Choreo.
 */
@interface TMBXively_Products_DeleteProduct_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Deletes a product batch. This will also delete all devices and feeds associated with the specified product batch.
 */
@interface TMBXively_Products_DeleteProduct : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Products_DeleteProduct_Inputs*)newInputSet;
@end

/*! group TMBXively.Products_DeleteProduct Choreo */


/*! group TMBXively.APIKeys.UpdateKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateKey Choreo.
 */
@interface TMBXively_APIKeys_UpdateKey_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessMethods:(NSString*)AccessMethods;
	-(void)setCustomKey:(NSString*)CustomKey;
	-(void)setCustomPermissions:(NSString*)CustomPermissions;
	-(void)setCustomType:(NSString*)CustomType;
	-(void)setLabel:(NSString*)Label;
	-(void)setMasterAPIKey:(NSString*)MasterAPIKey;
	-(void)setPrivateAccess:(NSString*)PrivateAccess;
	-(void)setResourceFeedID:(NSString*)ResourceFeedID;
	-(void)setSourceIP:(NSString*)SourceIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateKey Choreo.
 */
@interface TMBXively_APIKeys_UpdateKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Updates an existing APIKey.
 */
@interface TMBXively_APIKeys_UpdateKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_APIKeys_UpdateKey_Inputs*)newInputSet;
@end

/*! group TMBXively.APIKeys_UpdateKey Choreo */


/*! group TMBXively.ReadWriteData.DeleteDatapoint Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDatapoint Choreo.
 */
@interface TMBXively_ReadWriteData_DeleteDatapoint_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDatastreamID:(NSString*)DatastreamID;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setTimestamp:(NSString*)Timestamp;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDatapoint Choreo.
 */
@interface TMBXively_ReadWriteData_DeleteDatapoint_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponsStatusCode;	
@end

/*!
 * Deletes a single existing datapoint for a specific timestamp.
 */
@interface TMBXively_ReadWriteData_DeleteDatapoint : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_DeleteDatapoint_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_DeleteDatapoint Choreo */


/*! group TMBXively.Devices.DeleteDevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDevice Choreo.
 */
@interface TMBXively_Devices_DeleteDevice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setProductID:(NSString*)ProductID;
	-(void)setSerialNumber:(NSString*)SerialNumber;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDevice Choreo.
 */
@interface TMBXively_Devices_DeleteDevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Deletes the device matching the provided serial number.
 */
@interface TMBXively_Devices_DeleteDevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Devices_DeleteDevice_Inputs*)newInputSet;
@end

/*! group TMBXively.Devices_DeleteDevice Choreo */


/*! group TMBXively.ReadWriteData.WriteFeedMetadata Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WriteFeedMetadata Choreo.
 */
@interface TMBXively_ReadWriteData_WriteFeedMetadata_Inputs : TMBChoreographyInputSet
	-(void)setFeedData:(NSString*)FeedData;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDescription:(NSString*)Description;
	-(void)setEmail:(NSString*)Email;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setFeedType:(NSString*)FeedType;
	-(void)setIcon:(NSString*)Icon;
	-(void)setPrivate:(NSString*)Private;
	-(void)setTags:(NSString*)Tags;
	-(void)setTitle:(NSString*)Title;
	-(void)setWebsite:(NSString*)Website;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WriteFeedMetadata Choreo.
 */
@interface TMBXively_ReadWriteData_WriteFeedMetadata_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Allows you to easily update the metadata of your feed.
 */
@interface TMBXively_ReadWriteData_WriteFeedMetadata : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_WriteFeedMetadata_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_WriteFeedMetadata Choreo */


/*! group TMBXively.ReadWriteData.ListAllFeeds Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllFeeds Choreo.
 */
@interface TMBXively_ReadWriteData_ListAllFeeds_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setContent:(NSString*)Content;
	-(void)setDistanceUnits:(NSString*)DistanceUnits;
	-(void)setDistance:(NSString*)Distance;
	-(void)setFeedType:(NSString*)FeedType;
	-(void)setFullTextSearch:(NSString*)FullTextSearch;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setShowUser:(NSString*)ShowUser;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStatus:(NSString*)Status;
	-(void)setTag:(NSString*)Tag;
	-(void)setUnits:(NSString*)Units;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllFeeds Choreo.
 */
@interface TMBXively_ReadWriteData_ListAllFeeds_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns filterable data on all feeds viewable by the authenticated account.
 */
@interface TMBXively_ReadWriteData_ListAllFeeds : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_ListAllFeeds_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_ListAllFeeds Choreo */


/*! group TMBXively.ReadWriteData.DeleteDatastream Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDatastream Choreo.
 */
@interface TMBXively_ReadWriteData_DeleteDatastream_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDatastreamID:(NSString*)DatastreamID;
	-(void)setFeedID:(NSString*)FeedID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDatastream Choreo.
 */
@interface TMBXively_ReadWriteData_DeleteDatastream_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Deletes a datastream. 
 */
@interface TMBXively_ReadWriteData_DeleteDatastream : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_DeleteDatastream_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_DeleteDatastream Choreo */


/*! group TMBXively.Triggers.UpdateTrigger Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateTrigger Choreo.
 */
@interface TMBXively_Triggers_UpdateTrigger_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setThresholdValue:(NSString*)ThresholdValue;
	-(void)setTriggerID:(NSString*)TriggerID;
	-(void)setTriggerType:(NSString*)TriggerType;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateTrigger Choreo.
 */
@interface TMBXively_Triggers_UpdateTrigger_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Updates an existing trigger.
 */
@interface TMBXively_Triggers_UpdateTrigger : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Triggers_UpdateTrigger_Inputs*)newInputSet;
@end

/*! group TMBXively.Triggers_UpdateTrigger Choreo */


/*! group TMBXively.APIKeys.CreateKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateKey Choreo.
 */
@interface TMBXively_APIKeys_CreateKey_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessMethods:(NSString*)AccessMethods;
	-(void)setCustomKey:(NSString*)CustomKey;
	-(void)setCustomPermissions:(NSString*)CustomPermissions;
	-(void)setCustomType:(NSString*)CustomType;
	-(void)setExpirationDate:(NSString*)ExpirationDate;
	-(void)setLabel:(NSString*)Label;
	-(void)setPrivateAccess:(NSString*)PrivateAccess;
	-(void)setResourceFeedID:(NSString*)ResourceFeedID;
	-(void)setSourceIP:(NSString*)SourceIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateKey Choreo.
 */
@interface TMBXively_APIKeys_CreateKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAPIKeyLocation;
	-(NSString*)getNewAPIKey;	
@end

/*!
 * Creates a new APIKey.
 */
@interface TMBXively_APIKeys_CreateKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_APIKeys_CreateKey_Inputs*)newInputSet;
@end

/*! group TMBXively.APIKeys_CreateKey Choreo */


/*! group TMBXively.ReadWriteData.WriteDatastreamMetadata Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WriteDatastreamMetadata Choreo.
 */
@interface TMBXively_ReadWriteData_WriteDatastreamMetadata_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCustomDatastreamData:(NSString*)CustomDatastreamData;
	-(void)setDatastreamID:(NSString*)DatastreamID;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setMaxValue:(NSString*)MaxValue;
	-(void)setMinValue:(NSString*)MinValue;
	-(void)setTags:(NSString*)Tags;
	-(void)setUnitSymbol:(NSString*)UnitSymbol;
	-(void)setUnitType:(NSString*)UnitType;
	-(void)setUnits:(NSString*)Units;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WriteDatastreamMetadata Choreo.
 */
@interface TMBXively_ReadWriteData_WriteDatastreamMetadata_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Allows you to easily update the metadata of your datastream.
 */
@interface TMBXively_ReadWriteData_WriteDatastreamMetadata : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_WriteDatastreamMetadata_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_WriteDatastreamMetadata Choreo */


/*! group TMBXively.Devices.ListAllDevices Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllDevices Choreo.
 */
@interface TMBXively_Devices_ListAllDevices_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setActivated:(NSString*)Activated;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setProductID:(NSString*)ProductID;
	-(void)setSerialNumber:(NSString*)SerialNumber;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllDevices Choreo.
 */
@interface TMBXively_Devices_ListAllDevices_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a paged list of devices belonging to a specific product.
 */
@interface TMBXively_Devices_ListAllDevices : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Devices_ListAllDevices_Inputs*)newInputSet;
@end

/*! group TMBXively.Devices_ListAllDevices Choreo */


/*! group TMBXively.Triggers.ReadTrigger Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadTrigger Choreo.
 */
@interface TMBXively_Triggers_ReadTrigger_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTriggerID:(NSString*)TriggerID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadTrigger Choreo.
 */
@interface TMBXively_Triggers_ReadTrigger_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a specific trigger for the authenticated account.
 */
@interface TMBXively_Triggers_ReadTrigger : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Triggers_ReadTrigger_Inputs*)newInputSet;
@end

/*! group TMBXively.Triggers_ReadTrigger Choreo */


/*! group TMBXively.Products.ReadProduct Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadProduct Choreo.
 */
@interface TMBXively_Products_ReadProduct_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setProductID:(NSString*)ProductID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadProduct Choreo.
 */
@interface TMBXively_Products_ReadProduct_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a JSON representation of a product. 
 */
@interface TMBXively_Products_ReadProduct : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Products_ReadProduct_Inputs*)newInputSet;
@end

/*! group TMBXively.Products_ReadProduct Choreo */


/*! group TMBXively.Devices.ReadDevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadDevice Choreo.
 */
@interface TMBXively_Devices_ReadDevice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setProductID:(NSString*)ProductID;
	-(void)setSerialNumber:(NSString*)SerialNumber;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadDevice Choreo.
 */
@interface TMBXively_Devices_ReadDevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a JSON representation of the device with the provided serial number.
 */
@interface TMBXively_Devices_ReadDevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_Devices_ReadDevice_Inputs*)newInputSet;
@end

/*! group TMBXively.Devices_ReadDevice Choreo */


/*! group TMBXively.ReadWriteData.WriteLocationData Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WriteLocationData Choreo.
 */
@interface TMBXively_ReadWriteData_WriteLocationData_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDisposition:(NSString*)Disposition;
	-(void)setDomain:(NSString*)Domain;
	-(void)setElevation:(NSString*)Elevation;
	-(void)setFeedID:(NSString*)FeedID;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setName:(NSString*)Name;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WriteLocationData Choreo.
 */
@interface TMBXively_ReadWriteData_WriteLocationData_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponseStatusCode;	
@end

/*!
 * Allows you to easily update the location data of your feed.
 */
@interface TMBXively_ReadWriteData_WriteLocationData : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBXively_ReadWriteData_WriteLocationData_Inputs*)newInputSet;
@end

/*! group TMBXively.ReadWriteData_WriteLocationData Choreo */

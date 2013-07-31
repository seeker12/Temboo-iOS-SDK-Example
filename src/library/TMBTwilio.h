/*!
 * @header Temboo iOS SDK Twilio classes
 *
 * Execute Choreographies from the Temboo Twilio bundle.
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

/*! group TMBTwilio.Queues.ListQueues Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListQueues Choreo.
 */
@interface TMBTwilio_Queues_ListQueues_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListQueues Choreo.
 */
@interface TMBTwilio_Queues_ListQueues_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of queues within a Twilio account.
 */
@interface TMBTwilio_Queues_ListQueues : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Queues_ListQueues_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Queues_ListQueues Choreo */


/*! group TMBTwilio.Conferences.DeleteParticipant Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteParticipant Choreo.
 */
@interface TMBTwilio_Conferences_DeleteParticipant_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setCallSID:(NSString*)CallSID;
	-(void)setConferenceSID:(NSString*)ConferenceSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteParticipant Choreo.
 */
@interface TMBTwilio_Conferences_DeleteParticipant_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual partipant from a conference.
 */
@interface TMBTwilio_Conferences_DeleteParticipant : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Conferences_DeleteParticipant_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Conferences_DeleteParticipant Choreo */


/*! group TMBTwilio.ShortCodes.UpdateShortCode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateShortCode Choreo.
 */
@interface TMBTwilio_ShortCodes_UpdateShortCode_Inputs : TMBChoreographyInputSet
	-(void)setAPIVersion:(NSString*)APIVersion;
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShortCodeSID:(NSString*)ShortCodeSID;
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod;
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL;
	-(void)setSmsMethod:(NSString*)SmsMethod;
	-(void)setSmsURL:(NSString*)SmsURL;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateShortCode Choreo.
 */
@interface TMBTwilio_ShortCodes_UpdateShortCode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Attempts to update an existing short code resource.
 */
@interface TMBTwilio_ShortCodes_UpdateShortCode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_ShortCodes_UpdateShortCode_Inputs*)newInputSet;
@end

/*! group TMBTwilio.ShortCodes_UpdateShortCode Choreo */


/*! group TMBTwilio.AvailablePhoneNumbers.LocalList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LocalList Choreo.
 */
@interface TMBTwilio_AvailablePhoneNumbers_LocalList_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAreaCode:(NSString*)AreaCode;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setContains:(NSString*)Contains;
	-(void)setDistance:(NSString*)Distance;
	-(void)setInLata:(NSString*)InLata;
	-(void)setInPostalCode:(NSString*)InPostalCode;
	-(void)setInRateCenter:(NSString*)InRateCenter;
	-(void)setInRegion:(NSString*)InRegion;
	-(void)setIsoCountryCode:(NSString*)IsoCountryCode;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setNearNumber:(NSString*)NearNumber;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LocalList Choreo.
 */
@interface TMBTwilio_AvailablePhoneNumbers_LocalList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of local available phone numbers that match the specified filters.
 */
@interface TMBTwilio_AvailablePhoneNumbers_LocalList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_AvailablePhoneNumbers_LocalList_Inputs*)newInputSet;
@end

/*! group TMBTwilio.AvailablePhoneNumbers_LocalList Choreo */


/*! group TMBTwilio.Accounts.UpdateAccount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccount Choreo.
 */
@interface TMBTwilio_Accounts_UpdateAccount_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStatus:(NSString*)Status;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccount Choreo.
 */
@interface TMBTwilio_Accounts_UpdateAccount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the name or status of a Twilio subaccount.
 */
@interface TMBTwilio_Accounts_UpdateAccount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Accounts_UpdateAccount_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Accounts_UpdateAccount Choreo */


/*! group TMBTwilio.Conferences.UpdateParticipant Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateParticipant Choreo.
 */
@interface TMBTwilio_Conferences_UpdateParticipant_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setCallSID:(NSString*)CallSID;
	-(void)setConferenceSID:(NSString*)ConferenceSID;
	-(void)setMuted:(NSString*)Muted;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateParticipant Choreo.
 */
@interface TMBTwilio_Conferences_UpdateParticipant_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the status of a conference participant.
 */
@interface TMBTwilio_Conferences_UpdateParticipant : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Conferences_UpdateParticipant_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Conferences_UpdateParticipant Choreo */


/*! group TMBTwilio.Recordings.ListRecordings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListRecordings Choreo.
 */
@interface TMBTwilio_Recordings_ListRecordings_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRecordings Choreo.
 */
@interface TMBTwilio_Recordings_ListRecordings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of recordings for the specified account.
 */
@interface TMBTwilio_Recordings_ListRecordings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Recordings_ListRecordings_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Recordings_ListRecordings Choreo */


/*! group TMBTwilio.Accounts.CreateAccount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccount Choreo.
 */
@interface TMBTwilio_Accounts_CreateAccount_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccount Choreo.
 */
@interface TMBTwilio_Accounts_CreateAccount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a Twilio subaccount.
 */
@interface TMBTwilio_Accounts_CreateAccount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Accounts_CreateAccount_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Accounts_CreateAccount Choreo */


/*! group TMBTwilio.OutgoingCallerIDs.UpdateCallerID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCallerID Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_UpdateCallerID_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setOutgoingCallerSID:(NSString*)OutgoingCallerSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCallerID Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_UpdateCallerID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing caller id.
 */
@interface TMBTwilio_OutgoingCallerIDs_UpdateCallerID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_OutgoingCallerIDs_UpdateCallerID_Inputs*)newInputSet;
@end

/*! group TMBTwilio.OutgoingCallerIDs_UpdateCallerID Choreo */


/*! group TMBTwilio.Queues.CreateQueue Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateQueue Choreo.
 */
@interface TMBTwilio_Queues_CreateQueue_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setMaxSize:(NSString*)MaxSize;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateQueue Choreo.
 */
@interface TMBTwilio_Queues_CreateQueue_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new queue within a Twilio account.
 */
@interface TMBTwilio_Queues_CreateQueue : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Queues_CreateQueue_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Queues_CreateQueue Choreo */


/*! group TMBTwilio.Conferences.GetParticipant Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetParticipant Choreo.
 */
@interface TMBTwilio_Conferences_GetParticipant_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setCallSID:(NSString*)CallSID;
	-(void)setConferencesSID:(NSString*)ConferencesSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetParticipant Choreo.
 */
@interface TMBTwilio_Conferences_GetParticipant_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves details for an individual participant of a conference.
 */
@interface TMBTwilio_Conferences_GetParticipant : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Conferences_GetParticipant_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Conferences_GetParticipant Choreo */


/*! group TMBTwilio.Notifications.GetNotification Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNotification Choreo.
 */
@interface TMBTwilio_Notifications_GetNotification_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setNotificationSID:(NSString*)NotificationSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNotification Choreo.
 */
@interface TMBTwilio_Notifications_GetNotification_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get comprehensive log information for a specified Notification SID. 
 */
@interface TMBTwilio_Notifications_GetNotification : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Notifications_GetNotification_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Notifications_GetNotification Choreo */


/*! group TMBTwilio.SMSMessages.GetMessage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMessage Choreo.
 */
@interface TMBTwilio_SMSMessages_GetMessage_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSMSMessageSID:(NSString*)SMSMessageSID;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMessage Choreo.
 */
@interface TMBTwilio_SMSMessages_GetMessage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a specific SMS from Twilio by allowing you to specify a message ID.
 */
@interface TMBTwilio_SMSMessages_GetMessage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_SMSMessages_GetMessage_Inputs*)newInputSet;
@end

/*! group TMBTwilio.SMSMessages_GetMessage Choreo */


/*! group TMBTwilio.Calls.MakeCall Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MakeCall Choreo.
 */
@interface TMBTwilio_Calls_MakeCall_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setApplicationSID:(NSString*)ApplicationSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFallbackMethod:(NSString*)FallbackMethod;
	-(void)setFallbackURL:(NSString*)FallbackURL;
	-(void)setFrom:(NSString*)From;
	-(void)setIfMachine:(NSString*)IfMachine;
	-(void)setMethod:(NSString*)Method;
	-(void)setRecord:(NSString*)Record;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSendDigits:(NSString*)SendDigits;
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod;
	-(void)setStatusCallback:(NSString*)StatusCallback;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
	-(void)setTimeout:(NSString*)Timeout;
	-(void)setTo:(NSString*)To;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MakeCall Choreo.
 */
@interface TMBTwilio_Calls_MakeCall_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Initiates a call from the specified Twilio account.
 */
@interface TMBTwilio_Calls_MakeCall : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Calls_MakeCall_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Calls_MakeCall Choreo */


/*! group TMBTwilio.IncomingPhoneNumbers.ListPhoneNumbers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPhoneNumbers Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setPhoneNumber:(NSString*)PhoneNumber;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhoneNumbers Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Twilio phone numbers purchased from Twilio or ported to Twilio.
 */
@interface TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_Inputs*)newInputSet;
@end

/*! group TMBTwilio.IncomingPhoneNumbers_ListPhoneNumbers Choreo */


/*! group TMBTwilio.Transcriptions.ListTranscriptions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTranscriptions Choreo.
 */
@interface TMBTwilio_Transcriptions_ListTranscriptions_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTranscriptions Choreo.
 */
@interface TMBTwilio_Transcriptions_ListTranscriptions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of transcriptions for the specified account.
 */
@interface TMBTwilio_Transcriptions_ListTranscriptions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Transcriptions_ListTranscriptions_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Transcriptions_ListTranscriptions Choreo */


/*! group TMBTwilio.Applications.GetApplication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetApplication Choreo.
 */
@interface TMBTwilio_Applications_GetApplication_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setApplicationSID:(NSString*)ApplicationSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetApplication Choreo.
 */
@interface TMBTwilio_Applications_GetApplication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the details for an individual application associated with your Twilio account.
 */
@interface TMBTwilio_Applications_GetApplication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Applications_GetApplication_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Applications_GetApplication Choreo */


/*! group TMBTwilio.Accounts.ListAccounts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAccounts Choreo.
 */
@interface TMBTwilio_Accounts_ListAccounts_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStatus:(NSString*)Status;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAccounts Choreo.
 */
@interface TMBTwilio_Accounts_ListAccounts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the subaccounts belonging to the main account.
 */
@interface TMBTwilio_Accounts_ListAccounts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Accounts_ListAccounts_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Accounts_ListAccounts Choreo */


/*! group TMBTwilio.Conferences.GetConference Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetConference Choreo.
 */
@interface TMBTwilio_Conferences_GetConference_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setConferenceSID:(NSString*)ConferenceSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetConference Choreo.
 */
@interface TMBTwilio_Conferences_GetConference_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns an individual conference.
 */
@interface TMBTwilio_Conferences_GetConference : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Conferences_GetConference_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Conferences_GetConference Choreo */


/*! group TMBTwilio.Applications.UpdateApplication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateApplication Choreo.
 */
@interface TMBTwilio_Applications_UpdateApplication_Inputs : TMBChoreographyInputSet
	-(void)setAPIVersion:(NSString*)APIVersion;
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setApplicationSID:(NSString*)ApplicationSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod;
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL;
	-(void)setSmsMethod:(NSString*)SmsMethod;
	-(void)setSmsStatusCallback:(NSString*)SmsStatusCallback;
	-(void)setSmsURL:(NSString*)SmsURL;
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod;
	-(void)setStatusCallback:(NSString*)StatusCallback;
	-(void)setVoiceApplicationSID:(NSString*)VoiceApplicationSID;
	-(void)setVoiceCallerIDLookup:(NSString*)VoiceCallerIDLookup;
	-(void)setVoiceFallbackMethod:(NSString*)VoiceFallbackMethod;
	-(void)setVoiceFallbackURL:(NSString*)VoiceFallbackURL;
	-(void)setVoiceMethod:(NSString*)VoiceMethod;
	-(void)setVoiceURL:(NSString*)VoiceURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateApplication Choreo.
 */
@interface TMBTwilio_Applications_UpdateApplication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing application within your account.
 */
@interface TMBTwilio_Applications_UpdateApplication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Applications_UpdateApplication_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Applications_UpdateApplication Choreo */


/*! group TMBTwilio.Recordings.DeleteRecording Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRecording Choreo.
 */
@interface TMBTwilio_Recordings_DeleteRecording_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setRecordingSID:(NSString*)RecordingSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRecording Choreo.
 */
@interface TMBTwilio_Recordings_DeleteRecording_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a recording from your account.
 */
@interface TMBTwilio_Recordings_DeleteRecording : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Recordings_DeleteRecording_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Recordings_DeleteRecording Choreo */


/*! group TMBTwilio.Calls.ListCalls Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCalls Choreo.
 */
@interface TMBTwilio_Calls_ListCalls_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFrom:(NSString*)From;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setParentCallSID:(NSString*)ParentCallSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setStatus:(NSString*)Status;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
	-(void)setTo:(NSString*)To;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCalls Choreo.
 */
@interface TMBTwilio_Calls_ListCalls_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of phone calls made to and from the specified account.
 */
@interface TMBTwilio_Calls_ListCalls : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Calls_ListCalls_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Calls_ListCalls Choreo */


/*! group TMBTwilio.IncomingPhoneNumbers.GetPhoneNumber Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPhoneNumber Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setIncomingPhoneNumberSID:(NSString*)IncomingPhoneNumberSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPhoneNumber Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns an individual phone number purchased from Twilio or ported to Twilio.
 */
@interface TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_Inputs*)newInputSet;
@end

/*! group TMBTwilio.IncomingPhoneNumbers_GetPhoneNumber Choreo */


/*! group TMBTwilio.Recordings.GetRecording Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecording Choreo.
 */
@interface TMBTwilio_Recordings_GetRecording_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setRecordingSID:(NSString*)RecordingSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecording Choreo.
 */
@interface TMBTwilio_Recordings_GetRecording_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an individual recording.
 */
@interface TMBTwilio_Recordings_GetRecording : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Recordings_GetRecording_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Recordings_GetRecording Choreo */


/*! group TMBTwilio.AvailablePhoneNumbers.TollFreeList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TollFreeList Choreo.
 */
@interface TMBTwilio_AvailablePhoneNumbers_TollFreeList_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAreaCode:(NSString*)AreaCode;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setContains:(NSString*)Contains;
	-(void)setIsoCountryCode:(NSString*)IsoCountryCode;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TollFreeList Choreo.
 */
@interface TMBTwilio_AvailablePhoneNumbers_TollFreeList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of toll-free available phone numbers that match the specified filters.
 */
@interface TMBTwilio_AvailablePhoneNumbers_TollFreeList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_AvailablePhoneNumbers_TollFreeList_Inputs*)newInputSet;
@end

/*! group TMBTwilio.AvailablePhoneNumbers_TollFreeList Choreo */


/*! group TMBTwilio.Calls.ListNotifications Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListNotifications Choreo.
 */
@interface TMBTwilio_Calls_ListNotifications_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setCallSID:(NSString*)CallSID;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListNotifications Choreo.
 */
@interface TMBTwilio_Calls_ListNotifications_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of notifications generated during a call.
 */
@interface TMBTwilio_Calls_ListNotifications : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Calls_ListNotifications_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Calls_ListNotifications Choreo */


/*! group TMBTwilio.IncomingPhoneNumbers.UpdatePhoneNumber Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePhoneNumber Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_Inputs : TMBChoreographyInputSet
	-(void)setAPIVersion:(NSString*)APIVersion;
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setIncomingPhoneNumberSID:(NSString*)IncomingPhoneNumberSID;
	-(void)setNewAccountSID:(NSString*)NewAccountSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSmsApplicationSID:(NSString*)SmsApplicationSID;
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod;
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL;
	-(void)setSmsMethod:(NSString*)SmsMethod;
	-(void)setSmsURL:(NSString*)SmsURL;
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod;
	-(void)setStatusCallback:(NSString*)StatusCallback;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
	-(void)setVoiceApplicationSID:(NSString*)VoiceApplicationSID;
	-(void)setVoiceCallerIDLookup:(NSString*)VoiceCallerIDLookup;
	-(void)setVoiceFallbackMethod:(NSString*)VoiceFallbackMethod;
	-(void)setVoiceFallbackURL:(NSString*)VoiceFallbackURL;
	-(void)setVoiceMethod:(NSString*)VoiceMethod;
	-(void)setVoiceURL:(NSString*)VoiceURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePhoneNumber Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing Twilio phone number.
 */
@interface TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_Inputs*)newInputSet;
@end

/*! group TMBTwilio.IncomingPhoneNumbers_UpdatePhoneNumber Choreo */


/*! group TMBTwilio.Applications.CreateApplication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateApplication Choreo.
 */
@interface TMBTwilio_Applications_CreateApplication_Inputs : TMBChoreographyInputSet
	-(void)setAPIVersion:(NSString*)APIVersion;
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod;
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL;
	-(void)setSmsMethod:(NSString*)SmsMethod;
	-(void)setSmsStatusCallback:(NSString*)SmsStatusCallback;
	-(void)setSmsURL:(NSString*)SmsURL;
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod;
	-(void)setStatusCallback:(NSString*)StatusCallback;
	-(void)setVoiceApplicationSID:(NSString*)VoiceApplicationSID;
	-(void)setVoiceCallerIDLookup:(NSString*)VoiceCallerIDLookup;
	-(void)setVoiceFallbackMethod:(NSString*)VoiceFallbackMethod;
	-(void)setVoiceFallbackURL:(NSString*)VoiceFallbackURL;
	-(void)setVoiceMethod:(NSString*)VoiceMethod;
	-(void)setVoiceURL:(NSString*)VoiceURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateApplication Choreo.
 */
@interface TMBTwilio_Applications_CreateApplication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new application within your account.
 */
@interface TMBTwilio_Applications_CreateApplication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Applications_CreateApplication_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Applications_CreateApplication Choreo */


/*! group TMBTwilio.ShortCodes.ListShortCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListShortCodes Choreo.
 */
@interface TMBTwilio_ShortCodes_ListShortCodes_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShortCode:(NSString*)ShortCode;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListShortCodes Choreo.
 */
@interface TMBTwilio_ShortCodes_ListShortCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Twilio short codes which can send and receive SMS messages with mobile phones.
 */
@interface TMBTwilio_ShortCodes_ListShortCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_ShortCodes_ListShortCodes_Inputs*)newInputSet;
@end

/*! group TMBTwilio.ShortCodes_ListShortCodes Choreo */


/*! group TMBTwilio.ConnectApps.GetConnectApp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetConnectApp Choreo.
 */
@interface TMBTwilio_ConnectApps_GetConnectApp_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setConnectAppSID:(NSString*)ConnectAppSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetConnectApp Choreo.
 */
@interface TMBTwilio_ConnectApps_GetConnectApp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the details for an individual Connect App associated with a Twilio account.
 */
@interface TMBTwilio_ConnectApps_GetConnectApp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_ConnectApps_GetConnectApp_Inputs*)newInputSet;
@end

/*! group TMBTwilio.ConnectApps_GetConnectApp Choreo */


/*! group TMBTwilio.ShortCodes.GetShortCode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetShortCode Choreo.
 */
@interface TMBTwilio_ShortCodes_GetShortCode_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShortCodeSID:(NSString*)ShortCodeSID;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShortCode Choreo.
 */
@interface TMBTwilio_ShortCodes_GetShortCode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an individual short code resource.
 */
@interface TMBTwilio_ShortCodes_GetShortCode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_ShortCodes_GetShortCode_Inputs*)newInputSet;
@end

/*! group TMBTwilio.ShortCodes_GetShortCode Choreo */


/*! group TMBTwilio.Notifications.ListNotifications Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListNotifications Choreo.
 */
@interface TMBTwilio_Notifications_ListNotifications_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setLogLevel:(NSString*)LogLevel;
	-(void)setMessageDate:(NSString*)MessageDate;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListNotifications Choreo.
 */
@interface TMBTwilio_Notifications_ListNotifications_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Return a list of all notifications generated for a specified account.
 */
@interface TMBTwilio_Notifications_ListNotifications : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Notifications_ListNotifications_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Notifications_ListNotifications Choreo */


/*! group TMBTwilio.Queues.ListQueueMembers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListQueueMembers Choreo.
 */
@interface TMBTwilio_Queues_ListQueueMembers_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setQueueSID:(NSString*)QueueSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListQueueMembers Choreo.
 */
@interface TMBTwilio_Queues_ListQueueMembers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of members in a given queue.
 */
@interface TMBTwilio_Queues_ListQueueMembers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Queues_ListQueueMembers_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Queues_ListQueueMembers Choreo */


/*! group TMBTwilio.Conferences.ListConferences Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListConferences Choreo.
 */
@interface TMBTwilio_Conferences_ListConferences_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setDateCreated:(NSString*)DateCreated;
	-(void)setDateUpdated:(NSString*)DateUpdated;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStatus:(NSString*)Status;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListConferences Choreo.
 */
@interface TMBTwilio_Conferences_ListConferences_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of conferences within an account.
 */
@interface TMBTwilio_Conferences_ListConferences : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Conferences_ListConferences_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Conferences_ListConferences Choreo */


/*! group TMBTwilio.ConnectApps.UpdateConnectApp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateConnectApp Choreo.
 */
@interface TMBTwilio_ConnectApps_UpdateConnectApp_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setAuthorizeRedirectURL:(NSString*)AuthorizeRedirectURL;
	-(void)setCompanyName:(NSString*)CompanyName;
	-(void)setConnectAppSID:(NSString*)ConnectAppSID;
	-(void)setDeauthorizeCallbackMethod:(NSString*)DeauthorizeCallbackMethod;
	-(void)setDeauthorizeCallbackURL:(NSString*)DeauthorizeCallbackURL;
	-(void)setDescription:(NSString*)Description;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setHomepageURL:(NSString*)HomepageURL;
	-(void)setPermissions:(NSString*)Permissions;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateConnectApp Choreo.
 */
@interface TMBTwilio_ConnectApps_UpdateConnectApp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the details for an individual Connect App associated with a Twilio account.
 */
@interface TMBTwilio_ConnectApps_UpdateConnectApp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_ConnectApps_UpdateConnectApp_Inputs*)newInputSet;
@end

/*! group TMBTwilio.ConnectApps_UpdateConnectApp Choreo */


/*! group TMBTwilio.Accounts.GetAccount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAccount Choreo.
 */
@interface TMBTwilio_Accounts_GetAccount_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccount Choreo.
 */
@interface TMBTwilio_Accounts_GetAccount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves general account information associated with the Twilio credentials provided.
 */
@interface TMBTwilio_Accounts_GetAccount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Accounts_GetAccount_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Accounts_GetAccount Choreo */


/*! group TMBTwilio.Notifications.DeleteNotification Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteNotification Choreo.
 */
@interface TMBTwilio_Notifications_DeleteNotification_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setNotificationSID:(NSString*)NotificationSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteNotification Choreo.
 */
@interface TMBTwilio_Notifications_DeleteNotification_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a notification from the account log.
 */
@interface TMBTwilio_Notifications_DeleteNotification : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Notifications_DeleteNotification_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Notifications_DeleteNotification Choreo */


/*! group TMBTwilio.Queues.DeleteQueue Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteQueue Choreo.
 */
@interface TMBTwilio_Queues_DeleteQueue_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setQueueSID:(NSString*)QueueSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteQueue Choreo.
 */
@interface TMBTwilio_Queues_DeleteQueue_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes an individual queue.
 */
@interface TMBTwilio_Queues_DeleteQueue : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Queues_DeleteQueue_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Queues_DeleteQueue Choreo */


/*! group TMBTwilio.SMSMessages.ListMessages Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMessages Choreo.
 */
@interface TMBTwilio_SMSMessages_ListMessages_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setDateSent:(NSString*)DateSent;
	-(void)setFrom:(NSString*)From;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
	-(void)setTo:(NSString*)To;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMessages Choreo.
 */
@interface TMBTwilio_SMSMessages_ListMessages_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of SMS messages from your Twilio account.
 */
@interface TMBTwilio_SMSMessages_ListMessages : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_SMSMessages_ListMessages_Inputs*)newInputSet;
@end

/*! group TMBTwilio.SMSMessages_ListMessages Choreo */


/*! group TMBTwilio.ConnectApps.ListConnectApps Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListConnectApps Choreo.
 */
@interface TMBTwilio_ConnectApps_ListConnectApps_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListConnectApps Choreo.
 */
@interface TMBTwilio_ConnectApps_ListConnectApps_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Connect Apps within your Twilio account.
 */
@interface TMBTwilio_ConnectApps_ListConnectApps : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_ConnectApps_ListConnectApps_Inputs*)newInputSet;
@end

/*! group TMBTwilio.ConnectApps_ListConnectApps Choreo */


/*! group TMBTwilio.IncomingPhoneNumbers.AddPhoneNumber Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddPhoneNumber Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_Inputs : TMBChoreographyInputSet
	-(void)setAPIVersion:(NSString*)APIVersion;
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAreaCode:(NSString*)AreaCode;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setPhoneNumber:(NSString*)PhoneNumber;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSmsApplicationSID:(NSString*)SmsApplicationSID;
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod;
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL;
	-(void)setSmsMethod:(NSString*)SmsMethod;
	-(void)setSmsURL:(NSString*)SmsURL;
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod;
	-(void)setStatusCallback:(NSString*)StatusCallback;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
	-(void)setVoiceApplicationSID:(NSString*)VoiceApplicationSID;
	-(void)setVoiceCallerIDLookup:(NSString*)VoiceCallerIDLookup;
	-(void)setVoiceFallbackMethod:(NSString*)VoiceFallbackMethod;
	-(void)setVoiceFallbackURL:(NSString*)VoiceFallbackURL;
	-(void)setVoiceMethod:(NSString*)VoiceMethod;
	-(void)setVoiceURL:(NSString*)VoiceURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPhoneNumber Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Purchases a new phone number for your Twilio account.
 */
@interface TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_Inputs*)newInputSet;
@end

/*! group TMBTwilio.IncomingPhoneNumbers_AddPhoneNumber Choreo */


/*! group TMBTwilio.IncomingPhoneNumbers.DeletePhoneNumber Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePhoneNumber Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setIncomingPhoneNumberSID:(NSString*)IncomingPhoneNumberSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePhoneNumber Choreo.
 */
@interface TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes an individual phone from Twilio.
 */
@interface TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_Inputs*)newInputSet;
@end

/*! group TMBTwilio.IncomingPhoneNumbers_DeletePhoneNumber Choreo */


/*! group TMBTwilio.SMSMessages.SendSMS Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendSMS Choreo.
 */
@interface TMBTwilio_SMSMessages_SendSMS_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setBody:(NSString*)Body;
	-(void)setFrom:(NSString*)From;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
	-(void)setTo:(NSString*)To;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendSMS Choreo.
 */
@interface TMBTwilio_SMSMessages_SendSMS_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sends an SMS to a specified phone number using the Twilio API.
 */
@interface TMBTwilio_SMSMessages_SendSMS : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_SMSMessages_SendSMS_Inputs*)newInputSet;
@end

/*! group TMBTwilio.SMSMessages_SendSMS Choreo */


/*! group TMBTwilio.OutgoingCallerIDs.DeleteCallerID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCallerID Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_DeleteCallerID_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setOutgoingCallerSID:(NSString*)OutgoingCallerSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCallerID Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_DeleteCallerID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes an existing caller id.
 */
@interface TMBTwilio_OutgoingCallerIDs_DeleteCallerID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_OutgoingCallerIDs_DeleteCallerID_Inputs*)newInputSet;
@end

/*! group TMBTwilio.OutgoingCallerIDs_DeleteCallerID Choreo */


/*! group TMBTwilio.Queues.GetQueue Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetQueue Choreo.
 */
@interface TMBTwilio_Queues_GetQueue_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setQueueSID:(NSString*)QueueSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetQueue Choreo.
 */
@interface TMBTwilio_Queues_GetQueue_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves details for an individual queue.
 */
@interface TMBTwilio_Queues_GetQueue : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Queues_GetQueue_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Queues_GetQueue Choreo */


/*! group TMBTwilio.Applications.DeleteApplication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteApplication Choreo.
 */
@interface TMBTwilio_Applications_DeleteApplication_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setApplicationSID:(NSString*)ApplicationSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteApplication Choreo.
 */
@interface TMBTwilio_Applications_DeleteApplication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes an application from your Twilio account.
 */
@interface TMBTwilio_Applications_DeleteApplication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Applications_DeleteApplication_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Applications_DeleteApplication Choreo */


/*! group TMBTwilio.Applications.ListApplications Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListApplications Choreo.
 */
@interface TMBTwilio_Applications_ListApplications_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListApplications Choreo.
 */
@interface TMBTwilio_Applications_ListApplications_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Twilio applications associated with your account.
 */
@interface TMBTwilio_Applications_ListApplications : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Applications_ListApplications_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Applications_ListApplications Choreo */


/*! group TMBTwilio.Calls.GetCall Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCall Choreo.
 */
@interface TMBTwilio_Calls_GetCall_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setCallSID:(NSString*)CallSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCall Choreo.
 */
@interface TMBTwilio_Calls_GetCall_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the single Call with a given id.
 */
@interface TMBTwilio_Calls_GetCall : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Calls_GetCall_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Calls_GetCall Choreo */


/*! group TMBTwilio.Calls.ListRecordings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListRecordings Choreo.
 */
@interface TMBTwilio_Calls_ListRecordings_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setCallSID:(NSString*)CallSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRecordings Choreo.
 */
@interface TMBTwilio_Calls_ListRecordings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of recordings generated during a call.
 */
@interface TMBTwilio_Calls_ListRecordings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Calls_ListRecordings_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Calls_ListRecordings Choreo */


/*! group TMBTwilio.Transcriptions.GetTranscription Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTranscription Choreo.
 */
@interface TMBTwilio_Transcriptions_GetTranscription_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
	-(void)setTranscriptionSID:(NSString*)TranscriptionSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTranscription Choreo.
 */
@interface TMBTwilio_Transcriptions_GetTranscription_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a an individual transcription of a recorded call.
 */
@interface TMBTwilio_Transcriptions_GetTranscription : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_Transcriptions_GetTranscription_Inputs*)newInputSet;
@end

/*! group TMBTwilio.Transcriptions_GetTranscription Choreo */


/*! group TMBTwilio.OutgoingCallerIDs.AddCallerID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddCallerID Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_AddCallerID_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setPhoneNumber:(NSString*)PhoneNumber;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCallerID Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_AddCallerID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a new caller id to a Twilio account.
 */
@interface TMBTwilio_OutgoingCallerIDs_AddCallerID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_OutgoingCallerIDs_AddCallerID_Inputs*)newInputSet;
@end

/*! group TMBTwilio.OutgoingCallerIDs_AddCallerID Choreo */


/*! group TMBTwilio.OutgoingCallerIDs.ListCallerIDs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCallerIDs Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_ListCallerIDs_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setFriendlyName:(NSString*)FriendlyName;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
	-(void)setPhoneNumber:(NSString*)PhoneNumber;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCallerIDs Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_ListCallerIDs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Outgoing Caller IDs for a Twilio account.
 */
@interface TMBTwilio_OutgoingCallerIDs_ListCallerIDs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_OutgoingCallerIDs_ListCallerIDs_Inputs*)newInputSet;
@end

/*! group TMBTwilio.OutgoingCallerIDs_ListCallerIDs Choreo */


/*! group TMBTwilio.OutgoingCallerIDs.GetCallerID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCallerID Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_GetCallerID_Inputs : TMBChoreographyInputSet
	-(void)setAccountSID:(NSString*)AccountSID;
	-(void)setAuthToken:(NSString*)AuthToken;
	-(void)setOutgoingCallerSID:(NSString*)OutgoingCallerSID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubAccountSID:(NSString*)SubAccountSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCallerID Choreo.
 */
@interface TMBTwilio_OutgoingCallerIDs_GetCallerID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an individual outgoing caller id resource.
 */
@interface TMBTwilio_OutgoingCallerIDs_GetCallerID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwilio_OutgoingCallerIDs_GetCallerID_Inputs*)newInputSet;
@end

/*! group TMBTwilio.OutgoingCallerIDs_GetCallerID Choreo */

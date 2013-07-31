/*!
 * @TMBGoodGuide.m
 *
 * Execute Choreographies from the Temboo GoodGuide bundle.
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

#import "TMBGoodGuide.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the QueryByUPC Choreo.
 */
@implementation TMBGoodGuide_QueryByUPC_Inputs

	/*!
	 * Set the value of the APIFormat input for this Choreo.
	*(optional, string) The response type supplied by GoodGuides. Default is simple. Other acceptable inputs are reference and badge.
	 */
	-(void)setAPIFormat:(NSString*)APIFormat {
		[super setInput:@"APIFormat" toValue:APIFormat];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by GoodGuide.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the UPC input for this Choreo.
	*(required, string) The UPC number of the product. This consists of 12 numerical barcode digits uniquely assigned to most products sold in North America.
	 */
	-(void)setUPC:(NSString*)UPC {
		[super setInput:@"UPC" toValue:UPC];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the QueryByUPC Choreo.
 */
@implementation TMBGoodGuide_QueryByUPC_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from GoodGuide.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about products based on the product's UPC code.
 */
@implementation TMBGoodGuide_QueryByUPC

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoodGuide_QueryByUPC Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GoodGuide/QueryByUPC"] autorelease];
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
		TMBGoodGuide_QueryByUPC_ResultSet *results = [[[TMBGoodGuide_QueryByUPC_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the QueryByUPC Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoodGuide_QueryByUPC_Inputs*)newInputSet {
		return [[[TMBGoodGuide_QueryByUPC_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the QueryByID Choreo.
 */
@implementation TMBGoodGuide_QueryByID_Inputs

	/*!
	 * Set the value of the APIFormat input for this Choreo.
	*(optional, string) The response type supplied by GoodGuide. Default is simple. Other acceptable inputs are reference and badge.
	 */
	-(void)setAPIFormat:(NSString*)APIFormat {
		[super setInput:@"APIFormat" toValue:APIFormat];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by GoodGuide.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) GoodGuide ID number of product.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the QueryByID Choreo.
 */
@implementation TMBGoodGuide_QueryByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from GoodGuide.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about products based on a GoodGuide product ID.
 */
@implementation TMBGoodGuide_QueryByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoodGuide_QueryByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GoodGuide/QueryByID"] autorelease];
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
		TMBGoodGuide_QueryByID_ResultSet *results = [[[TMBGoodGuide_QueryByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the QueryByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoodGuide_QueryByID_Inputs*)newInputSet {
		return [[[TMBGoodGuide_QueryByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBGoodGuide_Query_Inputs

	/*!
	 * Set the value of the APIFormat input for this Choreo.
	*(optional, string) The response type supplied by GoodGuides. Default is reference. Other acceptable inputs are simple and badge.
	 */
	-(void)setAPIFormat:(NSString*)APIFormat {
		[super setInput:@"APIFormat" toValue:APIFormat];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by GoodGuide.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The number of entries to return. Default is 20. Up to 50 entries can be returned at once.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) A text string used in the keyword search. By default, queries return product data only. Use the EntityType input to query other types of entities.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Acceptable values: best_match (for keyword searches, this is the default); rating (the overall GoodGuide rating); and name (sorted alphabetically).
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Acceptable values: 'desc' to sort descending (default for sort_by=rating and sort_by is best_match); 'asc' to sort ascending (default for sort_by is name).
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBGoodGuide_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from GoodGuide.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Queries the GoodGuide API by keyword and retrieves information on GoodGuide products.
 */
@implementation TMBGoodGuide_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoodGuide_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GoodGuide/Query"] autorelease];
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
		TMBGoodGuide_Query_ResultSet *results = [[[TMBGoodGuide_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoodGuide_Query_Inputs*)newInputSet {
		return [[[TMBGoodGuide_Query_Inputs alloc] init] autorelease];
	}
@end
	
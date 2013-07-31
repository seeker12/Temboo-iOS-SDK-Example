/*!
 * @TMBSocrata.m
 *
 * Execute Choreographies from the Temboo Socrata bundle.
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

#import "TMBSocrata.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBSocrata_SODA_Query_Inputs

	/*!
	 * Set the value of the AppToken input for this Choreo.
	*(optional, string) The App Token provided by Socrata.
	 */
	-(void)setAppToken:(NSString*)AppToken {
		[super setInput:@"AppToken" toValue:AppToken];
	}

	/*!
	 * Set the value of the Domain input for this Choreo.
	*(required, string) The domain used in the request (i.e. soda.demo.socrata.com).
	 */
	-(void)setDomain:(NSString*)Domain {
		[super setInput:@"Domain" toValue:Domain];
	}

	/*!
	 * Set the value of the Group input for this Choreo.
	*(optional, string) Groups results based on the column name provided.
	 */
	-(void)setGroup:(NSString*)Group {
		[super setInput:@"Group" toValue:Group];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, string) The maximum number of results to return. Used in combination with the Offset input for pagination. Defaults to 100.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, string) Indicates the starting point of the result set. Used in combination with the Limit input for pagination. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Determines how results will be sorted. This input can take a column name, and can sort in either ascending or descending order (i.e. datetime asc).
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the Resource input for this Choreo.
	*(required, string) The unique identifier for a dataset to retrieve (i.e 4tka-6guv or earthquakes).
	 */
	-(void)setResource:(NSString*)Resource {
		[super setInput:@"Resource" toValue:Resource];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), xml, csv, and rdf.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Search input for this Choreo.
	*(optional, string) A search clause. This wll do a full text search for a value.
	 */
	-(void)setSearch:(NSString*)Search {
		[super setInput:@"Search" toValue:Search];
	}

	/*!
	 * Set the value of the Select input for this Choreo.
	*(optional, string) Indicates which columns to return. If not specified, all columns will be returned.
	 */
	-(void)setSelect:(NSString*)Select {
		[super setInput:@"Select" toValue:Select];
	}

	/*!
	 * Set the value of the Where input for this Choreo.
	*(optional, string) Filters the results using a WHERE clause.
	 */
	-(void)setWhere:(NSString*)Where {
		[super setInput:@"Where" toValue:Where];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBSocrata_SODA_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Fields" output from an execution of this Choreo.
	 * @return - NSString* (json) This lists the fields returned in this response in a JSON array.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFields {
		return [super getOutputByName:@"Fields"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response form Socrata.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Types" output from an execution of this Choreo.
	 * @return - NSString* (json) This is a list of SODA2 types in a JSON array. These will match up in the same order as the fields in X-SODA2-Fields.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTypes {
		return [super getOutputByName:@"Types"];
	}
	
@end

/*!
 * Performs queries against data on the Socrata Platform.
 */
@implementation TMBSocrata_SODA_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSocrata_SODA_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Socrata/SODA/Query"] autorelease];
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
		TMBSocrata_SODA_Query_ResultSet *results = [[[TMBSocrata_SODA_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSocrata_SODA_Query_Inputs*)newInputSet {
		return [[[TMBSocrata_SODA_Query_Inputs alloc] init] autorelease];
	}
@end
	
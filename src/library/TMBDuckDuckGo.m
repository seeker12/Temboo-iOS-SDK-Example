/*!
 * @TMBDuckDuckGo.m
 *
 * Execute Choreographies from the Temboo DuckDuckGo bundle.
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

#import "TMBDuckDuckGo.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBDuckDuckGo_Query_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) Enter: xml, or json.  Default is set to xml.
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the NoHTML input for this Choreo.
	*(optional, integer) Enter 1 to remove HTML from text. Set only if Format=json.
	 */
	-(void)setNoHTML:(NSString*)NoHTML {
		[super setInput:@"NoHTML" toValue:NoHTML];
	}

	/*!
	 * Set the value of the NoRedirect input for this Choreo.
	*(optional, integer) Enter 1 to skip HTTP redirects.  This is useful for !bang commands. Set only if Format=json.
	 */
	-(void)setNoRedirect:(NSString*)NoRedirect {
		[super setInput:@"NoRedirect" toValue:NoRedirect];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, integer) Enter 1 to pretty-print the JSON output.
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Enter a search query.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the SkipDisambiguation input for this Choreo.
	*(optional, integer) Enter 1 to skip disambiguation. Set only if Format=json.
	 */
	-(void)setSkipDisambiguation:(NSString*)SkipDisambiguation {
		[super setInput:@"SkipDisambiguation" toValue:SkipDisambiguation];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBDuckDuckGo_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DuckDuckGo in XML or JSON format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Access DuckDuckGo web search functionality.  
 */
@implementation TMBDuckDuckGo_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDuckDuckGo_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DuckDuckGo/Query"] autorelease];
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
		TMBDuckDuckGo_Query_ResultSet *results = [[[TMBDuckDuckGo_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDuckDuckGo_Query_Inputs*)newInputSet {
		return [[[TMBDuckDuckGo_Query_Inputs alloc] init] autorelease];
	}
@end
	
/*!
 * @TMBPostgreSQL.m
 *
 * Execute Choreographies from the Temboo PostgreSQL bundle.
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

#import "TMBPostgreSQL.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the RunCommand Choreo.
 */
@implementation TMBPostgreSQL_RunCommand_Inputs

	/*!
	 * Set the value of the DatabaseName input for this Choreo.
	*(required, string) The name of the database to connect to.
	 */
	-(void)setDatabaseName:(NSString*)DatabaseName {
		[super setInput:@"DatabaseName" toValue:DatabaseName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password for the database user.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Port input for this Choreo.
	*(optional, integer) The database port. Defaults to 5432.
	 */
	-(void)setPort:(NSString*)Port {
		[super setInput:@"Port" toValue:Port];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The preferred format for the database results. Accepted formats are json (the default) and xml. This input only applies when providing a SELECT statement for the SQL input.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SQL input for this Choreo.
	*(required, multiline) A SQL statement to execute.
	 */
	-(void)setSQL:(NSString*)SQL {
		[super setInput:@"SQL" toValue:SQL];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The name or IP address of the database server.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The database username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the Version input for this Choreo.
	*(optional, decimal) The version of the Postgres database. Allowed values are 8 and 9 (the default).
	 */
	-(void)setVersion:(NSString*)Version {
		[super setInput:@"Version" toValue:Version];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RunCommand Choreo.
 */
@implementation TMBPostgreSQL_RunCommand_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResultData" output from an execution of this Choreo.
	 * @return - NSString* The data returned from the database. This output will only contain a value when a SELECT statement is provided. Results are returned as JSON or XML depending on the ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResultData {
		return [super getOutputByName:@"ResultData"];
	}

	/*!
	 * Retrieve the value of the "Success" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Indicates the result of the database command. The value will be "true" when the SQL statement executes successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSuccess {
		return [super getOutputByName:@"Success"];
	}
	
@end

/*!
 * Executes a SQL command for a Postgres database.
 */
@implementation TMBPostgreSQL_RunCommand

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPostgreSQL_RunCommand Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PostgreSQL/RunCommand"] autorelease];
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
		TMBPostgreSQL_RunCommand_ResultSet *results = [[[TMBPostgreSQL_RunCommand_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RunCommand Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPostgreSQL_RunCommand_Inputs*)newInputSet {
		return [[[TMBPostgreSQL_RunCommand_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the JSONToDB Choreo.
 */
@implementation TMBPostgreSQL_JSONToDB_Inputs

	/*!
	 * Set the value of the BatchFile input for this Choreo.
	*(required, json) The records to send to the database for the batch operation.
	 */
	-(void)setBatchFile:(NSString*)BatchFile {
		[super setInput:@"BatchFile" toValue:BatchFile];
	}

	/*!
	 * Set the value of the BatchMode input for this Choreo.
	*(optional, string) The type of batch operation to perform. Accepted values are: insert, update, or upsert.
	 */
	-(void)setBatchMode:(NSString*)BatchMode {
		[super setInput:@"BatchMode" toValue:BatchMode];
	}

	/*!
	 * Set the value of the DatabaseName input for this Choreo.
	*(required, string) The name of the database to connect to.
	 */
	-(void)setDatabaseName:(NSString*)DatabaseName {
		[super setInput:@"DatabaseName" toValue:DatabaseName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password for the database user.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Port input for this Choreo.
	*(optional, integer) The database port. Defaults to 5432.
	 */
	-(void)setPort:(NSString*)Port {
		[super setInput:@"Port" toValue:Port];
	}

	/*!
	 * Set the value of the RollbackOnError input for this Choreo.
	*(optional, boolean) Rollback if error occurs. Set to 1 to enable. Defaults to 0 (false).
	 */
	-(void)setRollbackOnError:(NSString*)RollbackOnError {
		[super setInput:@"RollbackOnError" toValue:RollbackOnError];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The name or IP address of the database server.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the TableName input for this Choreo.
	*(required, string) The database table that the batch operation is to be performed on.
	 */
	-(void)setTableName:(NSString*)TableName {
		[super setInput:@"TableName" toValue:TableName];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The database username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the Version input for this Choreo.
	*(optional, decimal) The version of the Postgres database. Allowed values are 8 and 9 (the default).
	 */
	-(void)setVersion:(NSString*)Version {
		[super setInput:@"Version" toValue:Version];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the JSONToDB Choreo.
 */
@implementation TMBPostgreSQL_JSONToDB_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Success" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Indicates the result of the batch operation. The value will be "true" when the SQL transaction executes successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSuccess {
		return [super getOutputByName:@"Success"];
	}
	
@end

/*!
 * Performs a batch operation in PostgreSQL with a set of records in JSON format.
 */
@implementation TMBPostgreSQL_JSONToDB

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPostgreSQL_JSONToDB Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PostgreSQL/JSONToDB"] autorelease];
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
		TMBPostgreSQL_JSONToDB_ResultSet *results = [[[TMBPostgreSQL_JSONToDB_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the JSONToDB Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPostgreSQL_JSONToDB_Inputs*)newInputSet {
		return [[[TMBPostgreSQL_JSONToDB_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the XMLToDB Choreo.
 */
@implementation TMBPostgreSQL_XMLToDB_Inputs

	/*!
	 * Set the value of the BatchFile input for this Choreo.
	*(required, xml) The records to send to the database for the batch operation.
	 */
	-(void)setBatchFile:(NSString*)BatchFile {
		[super setInput:@"BatchFile" toValue:BatchFile];
	}

	/*!
	 * Set the value of the BatchMode input for this Choreo.
	*(optional, string) The type of batch operation to perform. Accepted values are: insert, update, or upsert.
	 */
	-(void)setBatchMode:(NSString*)BatchMode {
		[super setInput:@"BatchMode" toValue:BatchMode];
	}

	/*!
	 * Set the value of the DatabaseName input for this Choreo.
	*(required, string) The name of the database to connect to.
	 */
	-(void)setDatabaseName:(NSString*)DatabaseName {
		[super setInput:@"DatabaseName" toValue:DatabaseName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password for the database user.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Port input for this Choreo.
	*(optional, integer) The database port. Defaults to 5432.
	 */
	-(void)setPort:(NSString*)Port {
		[super setInput:@"Port" toValue:Port];
	}

	/*!
	 * Set the value of the RollbackOnError input for this Choreo.
	*(optional, boolean) Rollback if error occurs. Set to 1 to enable. Defaults to 0 (false).
	 */
	-(void)setRollbackOnError:(NSString*)RollbackOnError {
		[super setInput:@"RollbackOnError" toValue:RollbackOnError];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The name or IP address of the database server.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the TableName input for this Choreo.
	*(required, string) The database table that the batch operation is to be performed on.
	 */
	-(void)setTableName:(NSString*)TableName {
		[super setInput:@"TableName" toValue:TableName];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The database username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the Version input for this Choreo.
	*(optional, decimal) The version of the Postgres database. Allowed values are 8 and 9 (the default).
	 */
	-(void)setVersion:(NSString*)Version {
		[super setInput:@"Version" toValue:Version];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToDB Choreo.
 */
@implementation TMBPostgreSQL_XMLToDB_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Success" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Indicates the result of the batch operation. The value will be "true" when the SQL transaction executes successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSuccess {
		return [super getOutputByName:@"Success"];
	}
	
@end

/*!
 * Performs a batch operation in PostgreSQL with a set of records in XML format.
 */
@implementation TMBPostgreSQL_XMLToDB

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPostgreSQL_XMLToDB Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PostgreSQL/XMLToDB"] autorelease];
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
		TMBPostgreSQL_XMLToDB_ResultSet *results = [[[TMBPostgreSQL_XMLToDB_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the XMLToDB Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPostgreSQL_XMLToDB_Inputs*)newInputSet {
		return [[[TMBPostgreSQL_XMLToDB_Inputs alloc] init] autorelease];
	}
@end
	
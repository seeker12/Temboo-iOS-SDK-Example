/*!
 * @header Temboo iOS SDK MySQL classes
 *
 * Execute Choreographies from the Temboo MySQL bundle.
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

/*! group TMBMySQL.XMLToDB Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the XMLToDB Choreo.
 */
@interface TMBMySQL_XMLToDB_Inputs : TMBChoreographyInputSet
	-(void)setBatchFile:(NSString*)BatchFile;
	-(void)setBatchMode:(NSString*)BatchMode;
	-(void)setDatabaseName:(NSString*)DatabaseName;
	-(void)setPassword:(NSString*)Password;
	-(void)setPort:(NSString*)Port;
	-(void)setRollbackOnError:(NSString*)RollbackOnError;
	-(void)setServer:(NSString*)Server;
	-(void)setTableName:(NSString*)TableName;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToDB Choreo.
 */
@interface TMBMySQL_XMLToDB_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getSuccess;	
@end

/*!
 * Performs a batch operation in MySQL with a set of records in XML format.
 */
@interface TMBMySQL_XMLToDB : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMySQL_XMLToDB_Inputs*)newInputSet;
@end

/*! group TMBMySQL_XMLToDB Choreo */


/*! group TMBMySQL.RunCommand Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RunCommand Choreo.
 */
@interface TMBMySQL_RunCommand_Inputs : TMBChoreographyInputSet
	-(void)setDatabaseName:(NSString*)DatabaseName;
	-(void)setPassword:(NSString*)Password;
	-(void)setPort:(NSString*)Port;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSQL:(NSString*)SQL;
	-(void)setServer:(NSString*)Server;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RunCommand Choreo.
 */
@interface TMBMySQL_RunCommand_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResultData;
	-(NSString*)getSuccess;	
@end

/*!
 * Executes a SQL command for a MySQL database.
 */
@interface TMBMySQL_RunCommand : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMySQL_RunCommand_Inputs*)newInputSet;
@end

/*! group TMBMySQL_RunCommand Choreo */


/*! group TMBMySQL.JSONToDB Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the JSONToDB Choreo.
 */
@interface TMBMySQL_JSONToDB_Inputs : TMBChoreographyInputSet
	-(void)setBatchFile:(NSString*)BatchFile;
	-(void)setBatchMode:(NSString*)BatchMode;
	-(void)setDatabaseName:(NSString*)DatabaseName;
	-(void)setPassword:(NSString*)Password;
	-(void)setPort:(NSString*)Port;
	-(void)setRollbackOnError:(NSString*)RollbackOnError;
	-(void)setServer:(NSString*)Server;
	-(void)setTableName:(NSString*)TableName;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the JSONToDB Choreo.
 */
@interface TMBMySQL_JSONToDB_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getSuccess;	
@end

/*!
 * Performs a batch operation in MySQL with a set of records in JSON format.
 */
@interface TMBMySQL_JSONToDB : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMySQL_JSONToDB_Inputs*)newInputSet;
@end

/*! group TMBMySQL_JSONToDB Choreo */

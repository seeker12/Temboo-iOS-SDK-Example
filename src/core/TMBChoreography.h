/*!
 * @header Temboo Choreography
 *
 * A Choreography in the Temboo Library
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
 * @author     Temboo, Inc.
 * @copyright  2013 Temboo, Inc.
 * @license    http://www.apache.org/licenses/LICENSE-2.0 Apache License 2.0
 * @version    1.7
 */
#import <Foundation/Foundation.h>
#import "TMBTembooResource.h"

@class JSONKit;
@class TMBChoreographyExecution;

@protocol TMBChoreographyDelegate <NSObject>
@required
-(void)choreographyDidFailWithError:(NSError*)error;
-(void)choreographyDidFinishExecuting:(id)result;
@end

@interface TMBChoreographyInputSet : NSObject
@property (nonatomic, copy) NSString *credential;
-(NSDictionary*)description;
@end

@interface TMBChoreographyResultSet : NSObject
@property (nonatomic, readonly, retain) NSDate *endTime;
@property (nonatomic, readonly, copy) NSString *status;
@property (nonatomic, readonly, copy) NSString *executionId;
@property (nonatomic, readonly, copy) NSDictionary *outputs;
@property (nonatomic, readonly, retain) NSDate *startTime;
-(id)initWithResponse:(NSDictionary*)document;
@end

@interface TMBChoreography : TMBTembooResource
@property (nonatomic, readonly, assign) id<TMBChoreographyDelegate> choreoDelegate;
-(id)initWithSession:(TMBTembooSession*)session andUri:(TMBTembooUri*)uri;
-(void)executeWithInputs:(TMBChoreographyInputSet*)inputs delegate:(id<TMBChoreographyDelegate>)d;
-(TMBChoreographyInputSet*)newInputSet;
-(TMBChoreographyInputSet*)newInputSetWithInputs:(NSDictionary *)i;
@end

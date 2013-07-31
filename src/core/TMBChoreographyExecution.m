/*!
 * @file TMBChoreographyExecution.m
 */
#import "TMBChoreographyExecution.h"
#import "TMBChoreography.h"
#import "TMBTembooResource.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"

/*!
 * Class extension, obscure "protected" members
 */
@interface TMBChoreographyExecution()
	/*! The execution ID assigned to this execution by the Temboo server */
	@property (nonatomic, copy) NSString *executionId;
	/*! The final result of this execution */
	@property (nonatomic, copy) NSString *finalResult;
	/*! The result set returned by the Temboo server upon the execution's completion */
	@property (nonatomic, retain) TMBChoreographyResultSet *resultSet;
@end

/*!
 * An executed/executing instance of a choreography
 */
@implementation TMBChoreographyExecution

//
// Synthesize class properties
//
@synthesize executionId;
@synthesize finalResult;
@synthesize resultSet;

/*! Base path for all choreography executions */
static NSString *const BASE_PATH = @"/choreo-executions";

// Possible execution states for a choreography
static NSString *const STATUS_ERROR					= @"ERROR";
static NSString *const STATUS_RUNNING				= @"RUNNING";
static NSString *const STATUS_SUCCESS				= @"SUCCESS";
static NSString *const STATUS_TERMINATED_LIMIT		= @"TERMINATED_LIMIT";
static NSString *const STATUS_TERMINATED_MANUALLY	= @"TERMINATED_MANUALLY";

/*!
 * Initialize with a valid Temboo session and existing execution ID
 *
 * @param s
 *		The TMBTembooSession that owns this choreography execution
 * @param execId
 *		The execution ID assigned to this execution by the Temboo server
 *
 * @return The initialized TMBChoreographyExecution instance
 */
-(id)initWithSession:(TMBTembooSession*)s andExecutionId:(NSString*)execId {
	// Build custom URI
	TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:[NSString stringWithFormat:@"%@/%@", BASE_PATH, execId]] autorelease];
	
	if(self = [super initWithSession:s andUri:uri]) {
		self.executionId = execId;
	}
	
	return self;
}

/*!
 * Release retained resources
 */
-(void) dealloc {
	[executionId release];
	[finalResult release];
	[resultSet release];
	[super dealloc];
}

/*!
 * @return This execution's execution ID
 */
-(NSString*)description {
	return [NSString stringWithString:self.executionId];
}

/*!
 * Get this executions results if available
 *
 * @return A TMBChoreographyResultSet instance if the execution has completed and results
 *		   are available, nil otherwise.
 */
-(TMBChoreographyResultSet*)getResultSet {
		
	if(!self.resultSet){
		NSString *status = [self getStatus];
	}
	
	return self.resultSet;
}

/*!
 * @return The completion status of this execution.  If the execution has already completed
 *		   this method simply returns the execution's final status.  Otherwise a request is
 *		   made to the Temboo server for the current status.
 */
-(NSString*)getStatus {
	
	NSString *status = self.finalResult;
	
	// TODO - seems like we need synchronization here
	if(!status){
		NSDictionary *response = [self.session getContentForUri:self.uri];
		
		if(response){
			// Grab the execution status
			status = [[response valueForKey:@"execution"] valueForKey:@"status"];
			// If it's still running we simply return that fact, otherwise...
			if(![status isEqualToString:STATUS_RUNNING]){
				if([status isEqualToString:STATUS_SUCCESS]){
					// Request outputs from server
					NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObject:@"outputs" forKey:@"view"];
					// Retrieve outputs
					response = [self.session getContentForUri:self.uri andParameters:params];
				}
				
				// Grab the execution results
				self.resultSet	 = [[[TMBChoreographyResultSet alloc] initWithResponse:response] autorelease];
				self.finalResult = status;
			}
		}
	}
	
	return status;
}

@end

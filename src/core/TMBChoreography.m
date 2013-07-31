/*!
 * @file TMBChoreography.m
 */
#import "TMBChoreography.h"
#import "TMBChoreographyExecution.h"
#import "TMBException.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"
#import "JSONKit.h"

/*!
 * Class extension - obscure "protected" members
 */
@interface TMBChoreographyInputSet()
	/*! The underlying collection of choreo inputs this class represents */
	@property (nonatomic, retain) NSMutableArray *inputs;

-(id)init;
-(id)initWithInputs:(NSDictionary*)inputs;
-(void)setInput:(NSString*)name toValue:(NSString*)value;
@end

/*!
 * Encapsulates choreo inputs and formats them for the Temboo REST API
 */
@implementation TMBChoreographyInputSet

//
// Synthesize class properties
//
@synthesize inputs;
@synthesize credential;

/*!
 * Initialize an empty TMBChoreographyInputSet
 *
 * @return An empty TMBChoreographyInputSet instance
 */
-(id)init {
	return [self initWithInputs:nil];
}

/*!
 * Initialize a TMBChoreographyInputSet with the provided inputs
 *
 * @param i
 *		A collection of key/value pairs to be used as choreography inputs
 *
 * @return An initialized TMBChoreographyInputSet instance containing the provided inputs
 */
-(id)initWithInputs:(NSDictionary*)i {
	
	if(self = [super init]){
		// Create our inputs array
		self.inputs = [[NSMutableArray alloc] init];
		
		if(i && [i count]){
			// Add values
			for(id key in i){
				[self setInput:key toValue:[i valueForKey:key]];
			}
		}
	}
	
	return self;
}

/*!
 * Release retained resources
 */
-(void)dealloc {
	[credential release];
	[inputs release];
	[super dealloc];
}

/*!
 * @return A dictionary with a single key "inputs" mapped to this class's underlying array
 *		   of key/value pairs as required by the Temboo REST API
 */
-(NSMutableDictionary*)description {
	// Set inputs under top-level "inputs" key in dict
	NSMutableDictionary *i = [NSMutableDictionary dictionaryWithObject:self.inputs forKey:@"inputs"];
	
	if(self.credential){
		// User specified a credential to be used, include it outside the "inputs" dict
		[i setValue:self.credential forKey:@"preset"];
	}
	
	return i;
}

/*!
 * Sets an input key/value pair.
 *
 * Note that this method does not enforce the inputs be limited to a single value for a given
 * key - if the same key is added multiple times, those key/value pairs will *all* be included
 * with any future request utilizing this TMBChoreographyInputSet instance.
 *
 * @param name
 *		The input name to set
 * @param value
 *		The input's value
 *
 * @return void
 */
-(void)setInput:(NSString*)name toValue:(NSString*)value {
	NSDictionary* input = [[[NSDictionary alloc] initWithObjectsAndKeys:name, @"name", value, @"value", nil] autorelease];
	[self.inputs addObject:input];
}

@end

/******************************************************************************/

/*!
 * Class extension - obscure "protected" members
 */
@interface TMBChoreographyResultSet()
	/*! The time at which the choreography execution completed */	
	@property (nonatomic, readwrite, retain) NSDate *endTime;
	/*! The execution completion status */
	@property (nonatomic, readwrite, copy) NSString *status;
	/*! The choreography's execution ID as assigned by the Temboo server */
	@property (nonatomic, readwrite, copy) NSString *executionId;
	/*! The choreography's outputs */
	@property (nonatomic, readwrite, copy) NSDictionary *outputs;
	/*! The time at which the choreography execution started */	
	@property (nonatomic, readwrite, retain) NSDate *startTime;

-(id)initWithResponse:(NSDictionary*)document;
-(NSString*)getOutputByName:(NSString*)name;
@end

/*!
 * Encapsulates choreography execution output
 */
@implementation TMBChoreographyResultSet

//
// Synthesize class properties
//
@synthesize endTime;
@synthesize executionId;
@synthesize outputs;
@synthesize status;
@synthesize startTime;

/*!
 * Initialize with a Temboo server response
 *
 * @param document
 *		The parsed result from the Temboo server
 *
 * @return An initialized TMBChoreographyResultSet instance
 */
-(id)initWithResponse:(NSDictionary*)document {
		
	if(self = [super init]){
		NSDictionary* execution = [document valueForKey:@"execution"];
		
		// Grab outputs from top-level document
		self.outputs		= [document valueForKey:@"output"];
		
		// Convert milliseconds since epoch to NSDate*
		self.endTime		= [NSDate dateWithTimeIntervalSince1970:[[execution valueForKey:@"endtime"] doubleValue]];
		self.startTime		= [NSDate dateWithTimeIntervalSince1970:[[execution valueForKey:@"starttime"] doubleValue]];
		
		self.executionId	= [execution valueForKey:@"id"];
		self.status			= [execution valueForKey:@"status"];
	}
		
	return self;	
}

/*!
 * Release retained resources
 */
-(void)dealloc {
	[endTime release];
	[executionId release];
	[outputs release];
	[status release];
	[startTime release];
	[super dealloc];
}

/*!
 * Get the value of a given output
 *
 * @param name
 *		The name of the output to return the value for
 *
 * @return The value for input with the name provided
 *
 * @throws TMBNotFoundException if no output with the given name is found
 */
-(NSString*)getOutputByName:(NSString*)name {
	// Look up the value for the specified output
	NSString *output = [self.outputs valueForKey:name];
	
	if(!output){
		// Output specified is invalid
		[TMBNotFoundException throwWithReason:[NSString stringWithFormat:@"Invalid output specified: '%@'", name]];
	}
	
	//NSLog(@"%s - Returning output '%@' (%@): %@", __PRETTY_FUNCTION__, name, [output class], output);
	return output;
}

@end

/******************************************************************************/

/*!
 * Class extension - obscure "protected" members
 */
@interface TMBChoreography()
@property (nonatomic, readwrite, assign) id<TMBChoreographyDelegate> choreoDelegate;
@property (nonatomic, retain) NSMutableData *responseData;
-(TMBChoreographyExecution*)executeAsyncWithInputs:(TMBChoreographyInputSet*)inputs;
-(TMBChoreographyExecution*)executeAsyncWithInputs:(TMBChoreographyInputSet*)inputs storingResult:(BOOL)store;
-(void)executeWithInputs:(TMBChoreographyInputSet*)inputs andParameters:(NSDictionary*)params delegate:(id<TMBChoreographyDelegate>)d;
@end

/*!
 * A choreography in the Temboo Library
 */
@implementation TMBChoreography

/*! The base path for all choreos in the Library */
static NSString *const BASE_PATH = @"/choreos";

@synthesize choreoDelegate;
@synthesize responseData;

/*!
 * Initialize with an existing session and uri
 *
 * @param session
 *		The session under which this choreography will be executed
 * @param uri
 *		A URI fragment corresponding to the method call in the REST API that accesses this choreography
 *
 * @return An initialized TMBChoreography instance
 */
-(id)initWithSession:(TMBTembooSession *)session andUri:(TMBTembooUri *)uri {
	TMBTembooUri *choreoUri = [uri prependPath:BASE_PATH];
	
	if(self = [super initWithSession:session andUri:choreoUri]){
		self.responseData = [NSMutableData data];
	}
	
	return self;
}

/*! NSURLConnectionDelegate Protocol implmementation */
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append the data chunk to data already received
    [self.responseData appendData:data];
}

/*! NSURLConnectionDelegate Protocol implmementation */
- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
	// Notify
	[self.choreoDelegate choreographyDidFailWithError:error];
}

/*! NSURLConnectionDelegate Protocol implmementation */
- (void) connectionDidFinishLoading:(NSURLConnection *) connection {
	NSLog(@"%s - Success! Received %d bytes of data", __PRETTY_FUNCTION__, [responseData length]);
	//[connection release];
	
	// Allow subclass to wrap the response in the expected result type
	NSDictionary *response = [self.responseData objectFromJSONData];
	
	NSDictionary *error = [response objectForKey:@"error"];
	
	if(error)
		[self.choreoDelegate choreographyDidFailWithError:[NSError errorWithDomain:@"TMBChoreographyError" code:0 userInfo:error]];
	else	
		[self choreographyDidFinishExecuting:response];
}

-(void)dealloc {
	[responseData release];
	[super dealloc];
}

/*!
 * Asynchronous execution, storing results
 *
 * @param inputs
 *		The inputs to use when executing this choreography
 *
 * @return TMBChoreographyExecution
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(TMBChoreographyExecution*)executeAsyncWithInputs:(TMBChoreographyInputSet*)inputs {
	return [self executeAsyncWithInputs:inputs storingResult:TRUE];
}

/*!
 * Asynchronous execution, optionally storing results
 *
 * @param inputs
 *		The inputs to use when executing this choreography
 * @param storingResults
 *		TRUE to request the server store the execution results, FALSE otherwise
 *
 * @return TMBChoreographyExecution
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(TMBChoreographyExecution*)executeAsyncWithInputs:(TMBChoreographyInputSet*)inputs storingResult:(BOOL)store {
	
	// Notify server that we want an asynchronous execution
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObject:@"async" forKey:@"mode"];
	
	if(store) {
		// Notify server we want to store results
		[params setObject:@"true" forKey:@"store_results"];
	}
	
	// Initiate the server request
	NSDictionary *response = [self executeWithInputs:inputs andParameters:params];
	
	// Extract the Execution ID from the response
	NSString* executionId = [response objectForKey:@"id"];
	
	// Return a new autorleased TMBChoreographExecution
	return [[[TMBChoreographyExecution alloc] initWithSession:self.session andExecutionId:executionId] autorelease];
}

/*!
 * Synchronous execution with inputs
 *
 * @param inputs
 *		The inputs to use when executing this choreography
 *
 * @return The parsed server result
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(void)executeWithInputs:(TMBChoreographyInputSet*)inputs delegate:(id<TMBChoreographyDelegate>)d {
	[self executeWithInputs:inputs andParameters:Nil delegate:d];
}

/**
 * Synchronous execution with inputs and parameters
 *
 * @param inputs
 *		The inputs to use when executing this choreography
 * @param params
 *		Query string parameters to include with the request
 *
 * @return The parsed server result
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(void)executeWithInputs:(TMBChoreographyInputSet*)inputs andParameters:(NSMutableDictionary*)params delegate:(id<TMBChoreographyDelegate>)d {
	
	if(nil == inputs)
		inputs = [self newInputSet];
	
	// Set and retain a reference to the TMBChoregraphyDelegate that initiated the request
	self.choreoDelegate = d;
	
	// Initiate the server request
	[super.session postContentToUri:self.uri withParameters:params andInputs:[inputs description] delegate:self];
}

/*!
 * @return A new, empty TMBChoreographyInputSet
 */
-(TMBChoreographyInputSet*)newInputSet {
	return [self newInputSetWithInputs:nil];
}

/*!
 * Creates a new TMBChoreographyInputSet populated with the key/value inputs provided
 *
 * @param inputs
 *		The inputs to populate the input set with
 *
 * @return A new TMBChoreographyInputSet which includes the provided input arguments
 */
-(TMBChoreographyInputSet*)newInputSetWithInputs:(NSDictionary*)i {
	return [[[TMBChoreographyInputSet alloc] initWithInputs:i] autorelease];
}

@end
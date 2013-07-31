//
//  TMBTembooSession.m
//  ios-sdk-src
//
//  Created by Reid Simonton on 12/11/12.
//  Copyright 2012 Temboo, Inc. All rights reserved.
//
#import "JSONKit.h"
#import "TMBChoreography.h"
#import "TMBException.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"
#import "TMBUtil.h"

/*!
 * Class extension - obscure "protected" properties and methods
 */
@interface TMBTembooSession ()
	/*! Account-specific Temboo subdomain */
	@property (nonatomic, copy) NSString *host;
	/*! The client's account org */
	@property (nonatomic, copy) NSString *keyName;
	/*! The client's account account */
	@property (nonatomic, copy) NSString *account;
	/*! The client's account keyVal */
	@property (nonatomic, copy) NSString *keyVal;
	@property (nonatomic, assign) id delegate;
	@property (nonatomic, retain) NSURLConnection *urlConnection;

-(NSString*)buildQueryString:(NSDictionary*)params;
-(NSURL*)buildUrlForPath:(NSString*)path;
-(NSURL*)buildUrlForPath:(NSString*)path andParameters:(NSDictionary*)params;
-(void)doRESTRequestUsingMethod:(NSString*)method toUri:(TMBTembooUri*)uri withParameters:(NSMutableDictionary*)params andInputs:(NSDictionary*)inputs delegate:(id)d;
-(void)setHeadersForRequest:(NSMutableURLRequest*)request;
-(NSString*)URLEncode:(NSString*)source;
@end

/*!
 * TMBTembooSession class implementation
 */
@implementation TMBTembooSession

//
// "Protected" static class constants
//
/*! Base path for all Temboo REST requests */
static NSString* const BASE_PATH = @"/arcturus-web/api-1.0";

/*! iOS SDK request signature */
static NSString* const CLIENT_IDENTIFIER = @"iOSSDK_1.76";

/*! Transport mechanism leveraged for REST requests */
static NSString* const REQUEST_PROTOCOL	= @"https";

/*! Temboo TLD for REST requests */
static NSString* const TMB_DOMAIN = @"temboolive.com";

/*! GET request method */
static NSString* const REQUEST_METHOD_GET = @"GET";

/*! POST request method */
static NSString* const REQUEST_METHOD_POST = @"POST";

//
// Synthesize properties
//
@synthesize host;
@synthesize account;
@synthesize keyName;
@synthesize keyVal;
@synthesize delegate;
@synthesize urlConnection;


/*!
 * Initialize a TMBTembooSession for an active Temboo account
 *
 * @param acct
 *		A valid Temboo account account
 * @param key
 *		A valid Temboo Application Key account
 * @param val
 *		The corresponding Application Key value
 *
 * @return An initialized (but not yet authenticated) TMBTembooSession instance
 */
-(id)initWithAccount:(NSString*)acct appKeyName:(NSString*)key andAppKeyValue:(NSString*)val {
		
	if(self = [super init]){
		self.account = acct;
		self.keyName = key;
		self.keyVal  = val;
		
		// e.g. foo.temboolive.com for keyName "foo"
		self.host = [NSString stringWithFormat:@"%@.%@", self.account, TMB_DOMAIN];
	}
	
	return self;
}
 

/*!
 * Build a fully-qualified, normalized URL for a given resource path
 *
 * @param path
 *		The path to use for constructing the URL
 *
 * @return NSURL based on the provided path
 */
-(NSURL*)buildUrlForPath:(NSString*)path {
	return [self buildUrlForPath:path andParameters:nil];
}

/*!
 * Build a fully-qualified, normalized URL for a given resource path and a set of parameters
 *
 * @param path
 *		The path to use for constructing the URL
 * @param params
 *		Key/value pairs to include as the URL's query string.  May be nil.
 *
 * @return NSURL based on the provided path and parameters
 */
-(NSURL*)buildUrlForPath:(NSString*)path andParameters:(NSDictionary*)params {
	// Initialize the URL with protocol, host and path
	NSMutableString *urlStr = [NSMutableString stringWithFormat:@"%@://%@%@", REQUEST_PROTOCOL, self.host, path];
	
	if(params != nil){
		// Build and append the query string
		[urlStr appendFormat:@"?%@", [self buildQueryString:params]];
	}
	
	return [NSURL URLWithString:urlStr];
}

-(void)dealloc {
	[account release];
	[host release];
	[keyName release];
	[keyVal release];
	[urlConnection release];
	[super dealloc];
}

/*!
 * Performs a synchronous request to the Temboo server REST API at the specified method, uri, parameters,
 * and inputs.  Returns a pointer to the parsed response.
 *
 * @param method
 *		The HTTP request method to use when making the request, GET or POST
 * @param uri
 *		The REST API path to issue the request to
 * @param params
 *		Optional parameters to include with the GET request in the URL's query string. Note that
 *		this class uses the parameter "source_id" internally - if this variable is present in the
 *		provided parameters its value will be overwritten.
 * @param inputs
 *		Choreo inputs to include in the request (POST-only), optional
 *
 * @return A pointer to the parsed server response
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(void)doRESTRequestUsingMethod:(NSString*)method toUri:(TMBTembooUri*)uri withParameters:(NSMutableDictionary*)params andInputs:(NSDictionary*)inputs delegate:(id)d {
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSDictionary *result = nil;
	
	self.delegate = d;
	
	if(params == nil){
		// Initialize, as we always include at least one internal parameter
		params = [[[NSMutableDictionary alloc] init] autorelease];
	}
	
	// Required for all requests - set or overwrite
	[params setValue:CLIENT_IDENTIFIER forKey:@"source_id"];
	
	// Expand the TMBTembooUri to include our request base path
	TMBTembooUri *fullUri = [uri prependPath:BASE_PATH];
	
	// Build the fully qualified URL for the REST request
	NSURL *url = [self buildUrlForPath:[fullUri description] andParameters:params];
	
	// Initialize the request with our url
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
	
	// Make sure request method is valid
	if(!([method isEqualToString:REQUEST_METHOD_GET] || [method isEqualToString:REQUEST_METHOD_POST])) {
		[TMBException throwWithReason:[NSString stringWithFormat:@"Unsupported request method specified: %@", method]];
	}
	
	// Set the request method
	[request setHTTPMethod:method];
	
	// If request method is POST and inputs are present, include them in the request body
	if([method isEqualToString:REQUEST_METHOD_POST]) {
		[request setHTTPBody:[inputs JSONData]];
	}
	
	// Add required Temboo request headers
	[self setHeadersForRequest:request];	
	
	@try {
		// Make synchronous request
		self.urlConnection = [NSURLConnection connectionWithRequest:request delegate:self.delegate]; //initWith sendSynchronousRequest:request returningResponse:&response error:&error];
		
		if(urlConnection) {
			// Create the NSMutableData to hold the received data as it's received from the server
			NSLog(@"%s - Successfully created async urlConnection, waiting...", __PRETTY_FUNCTION__);
		} else {
			[TMBHTTPException throwWithReason:@"Failed to create async connection with Temboo server"]; 
		}
		/*
		 // Confirm we got a response
		 if(data == nil){
		 if(error)
		 [TMBException throwWithReason:[NSString stringWithFormat:@"%@ - %@", [error localizedDescription], [error localizedRecoverySuggestion]]];
		 else
		 [TMBException throwWithReason:@"POST request failed, an unknown error occurred"];
		 }
		 
		 // Decode the JSON result and retain, as we will return it
		 result = [[data objectFromJSONData] retain];
		 
		 // Check the resulting status code
		 int statusCode = [response statusCode];
		 
		 if(statusCode < 200 || statusCode > 300) {
		 [TMBHTTPException throwWithReason:@"An HTTP error occurred" andStatus:statusCode];
		 }
		 */
	}
	@catch (NSException *e) {
		// Attempting to recover from exceptions is generally discouraged unless the code
		// in question is a library, which we are.
		[result release];	// ok even if nil
		[pool drain];
		@throw e;
	}
	
	// Cleanup
	[pool drain];
}

/*!
 * Perform a synchronous GET request to the Temboo server REST API at the specified uri,
 * and return a pointer to the parsed response.
 *
 * @param uri
 *		The REST API path to issue the request to
 *
 * @return A pointer to the parsed server response
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(void)getContentForUri:(TMBTembooUri*)uri delegate:(id)d {
	[self getContentForUri:uri withParameters:Nil delegate:d];
}

/*!
 * Performs a synchronous GET request to the Temboo server REST API at the specified uri with the
 * provided parameters, and return a pointer to the parsed response.
 *
 * @param uri
 *		The REST API path to issue the request to
 * @param params
 *		Optional parameters to include with the GET request in the URL's query string. Note that
 *		this class uses the parameter "source_id" internally - if this variable is present in the
 *		provided parameters its value will be overwritten
 *
 * @return A pointer to the parsed server response
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(void)getContentForUri:(TMBTembooUri*)uri withParameters:(NSMutableDictionary*)params delegate:(id)d {
	[self doRESTRequestUsingMethod:REQUEST_METHOD_GET toUri:uri withParameters:params andInputs:nil delegate:(id)d];
}

/*!
 * Builds a URL query string from the provided set of key/value pairs. The keys
 * and values are URL-encoded as part of the process.
 *
 * @param params
 *		The key/value pairs to use in building the query string
 *
 * @return The properly encoded query string, or nil if no pairs are present
 *
 * @see TMBTembooSession.URLEncode
 */
-(NSString*)buildQueryString:(NSDictionary*)params{
	
	NSString *query = nil;
		
	if(params){
		// We'll temporarily hold each key/value pair in an array
		NSMutableArray *pairs = [[[NSMutableArray alloc] init] autorelease];
		
		for(id key in params) {
			// Encode key and value, join with "=", append to the array
			[pairs addObject:[NSString stringWithFormat:@"%@=%@", [self URLEncode:key], [self URLEncode:[params objectForKey:key]]]];
		}
	
		// Join array members together with "&"
		query = [[pairs componentsJoinedByString:@"&"] retain];
	}
	
	return [query autorelease];	// Ok if nil
}

/*!
 * Performs a synchronous POST request to the Temboo server REST API at the specified uri and
 * returns a pointer to the parsed response.
 *
 * @param uri
 *		The REST API path to issue the request to
 *
 * @return A pointer to the parsed server response
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(void)postContentToUri:(TMBTembooUri*)uri delegate:(id)d {
	[self postContentToUri:uri withParameters:Nil andInputs:Nil delegate:d];
}

/*!
 * Performs a synchronous POST request to the Temboo server REST API at the specified uri with the
 * provided parameters and inputs, and returns a pointer to the parsed response.
 *
 * @param uri
 *		The REST API path to issue the request to
 * @param params
 *		Optional parameters to include with the GET request in the URL's query string. Note that
 *		this class uses the parameter "source_id" internally - if this variable is present in the
 *		provided parameters its value will be overwritten
 * @param inputs
 *		Optional inputs to include in the request body
 *
 * @return A pointer to the parsed server response
 *
 * @throws TMBHTTPException If an HTTP error occurs
 * @throws TMBException if an error occurs during the request
 */
-(void)postContentToUri:(TMBTembooUri*)uri withParameters:(NSMutableDictionary*)params andInputs:(NSDictionary*)inputs delegate:(id)d {
	[self doRESTRequestUsingMethod:REQUEST_METHOD_POST toUri:uri withParameters:params andInputs:inputs delegate:d];
}

/*!
 * Convenience method, sets request headers common to all Temboo REST API requests
 *
 * @param request
 *		The request to add the headers to
 *
 * @return void
 */
-(void)setHeadersForRequest:(NSMutableURLRequest*)request {
	// Build header values where required
	NSString *xTembooDomain	= [NSString stringWithFormat:@"%@/master", self.account];
	NSString *authHeader	= [TMBUtil buildBasicAuthenticationHeaderForUsername:self.keyName andPassword:self.keyVal];
	
	// Set headers
	[request setAllHTTPHeaderFields:
		[NSDictionary dictionaryWithObjectsAndKeys:
			@"application/json", @"Accept",
			@"application/json", @"Content-Type",
			xTembooDomain, @"x-temboo-domain",
			authHeader, @"Authorization",
			nil]];
}

/*!
 * URL-encode an arbitrary String
 *
 * @param source
 *		The string to encode
 *
 * @param The encoded string
 */
-(NSString*)URLEncode:(NSString*)source {
	// Aparently by default only a small subset of these chars are escaped by defualt
	static NSString *toEscape = @"!*'();:@&=+$,/?%#[]";
	// Core Foundation string methods have their own memory management requirements...
	NSString *encoded = (NSString*)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)source, NULL, (CFStringRef)toEscape, kCFStringEncodingUTF8);
	// ...so return and set free, which we typically don't have to do with NS classes
	return [encoded autorelease];
}

@end

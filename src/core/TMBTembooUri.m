#import "TMBTembooUri.h"
#import "TMBException.h"

/*!
 * Class extension - attempt to obscure "protected" members
 */
@interface TMBTembooUri()
	/*! Array of segments that comprise a URI */
	@property (nonatomic, retain) NSMutableArray *uriSegments;

	-(BOOL)segmentIsValid:(NSString*)segment;
	-(NSArray*)splitStringPath:(NSString*)path;
	-(void)validatePathSegments:(NSArray *)segments;
@end

/*!
 * TMBTembooUri class implementation
 */
@implementation TMBTembooUri

/*! Delimiter used to build URI strings */
static NSString* const URI_DELIMITER = @"/";

//
// Snythesize class properties
//
@synthesize uriSegments;

/*!
 * Initialize a new TMBTembooUri with a given set of path segments
 *
 * @param segments
 *		The segments used to initialize the URI
 *
 * @return The initialized TMBTembooUri
 *
 * @throws TMBException if an invalid path segment is provided, or if the segment validation
 *		   RegEx cannot be initialized
 */
-(id)initWithSegments:(NSArray*)segments {
	
	if(self = [super init]){
		// Make sure path is valid
		[self validatePathSegments:segments];
		
		// This class has the ability to modify the path internally, so represent
		// path segements with a mutable array instance
		self.uriSegments = [NSMutableArray arrayWithArray:segments];
	}
	
	return self;
}										

/*!
 * Initialize a new TMBTembooUri with a string.  The string must be a valid URI
 *
 * @param str
 *		The string to use in initializing the TMBTembooUri
 *
 * @returns The initialized TMBTembooUri
 *
 * @throws TMBException if an invalid path segment is provided, or if the segment validation
 *		   RegEx cannot be initialized
 */
-(id)initWithString:(NSString*)str {
	// Split on the delimiter into array and hand off
	return [self initWithSegments:[self splitStringPath:str]];
}

-(void)dealloc {
	[uriSegments release];
	[super dealloc];
}

/*!
 * @return A string representation of the URI, including a leading slash and no trailing slash.
 *		   if this class has no path defined this method returns nil.
 */
-(NSString*)description {
	NSString *uri = nil;
	
	if(uriSegments && [uriSegments count] > 0)
		uri = [NSString stringWithFormat:@"/%@", [uriSegments componentsJoinedByString:URI_DELIMITER]];
	
	return uri;
}

/*!
 * A new autoreleased TMBTembooUri representing this URI's path with the provided
 * path prepended. Leading/trailing path delimiters are stripped prior to the path
 * fragment being prepended.
 *
 * @param path
 *		The path fragment to prepend
 *
 * @return A new TMBTembooUri with the provided fragment prepended
 *
 * @throws TMBException if an illegal path segment is encountered in the provided fragment
 */
-(TMBTembooUri*)prependPath:(NSString *)path {
	// Split
	NSMutableArray *segments = [NSMutableArray arrayWithArray:[self splitStringPath:path]];
	// Validate
	[self validatePathSegments:segments];
	// Append existing segments
	[segments addObjectsFromArray:self.uriSegments];
	// Re-set
	return [[[TMBTembooUri alloc] initWithSegments:segments] autorelease];
}

/*!
 * Validates a path's candidate segment to ensure it is valid for use with a TMBTembooUri
 *
 * @param segment
 *		The segment to validate
 *
 * @return True if the segment is valid, false otherwise
 *
 * @throws TMBException if the segment is invalid, or if the validation RegEx cannot be initialized
 */
-(BOOL)segmentIsValid:(NSString*)segment {
	NSError* error = nil;
	NSRegularExpression *segmentValidator = [NSRegularExpression regularExpressionWithPattern:@"^\\w[\\w\\-\\.@]*$" options:0 error:&error];
	if(!segmentValidator && error)
		[TMBException throwWithReason:[error localizedDescription]];
	
	return 1 == [segmentValidator numberOfMatchesInString:segment options:0 range:NSMakeRange(0, [segment length])]; 
}

/*!
 * Splits a string path into its segments. Leading and trailing path delimiters
 * are trimmed prior to splitting.
 *
 * @param path
 *		The path to work with
 *
 * @return An array containing the path's segments
 */
-(NSArray*)splitStringPath:(NSString*)path {
	// Trim leading/trailing path delimiters
	NSString *trimmed = [path stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:URI_DELIMITER]];
	// Split on the delimiter into array and hand off
	return [trimmed componentsSeparatedByString:URI_DELIMITER];
}

/*!
 * Validates a path's segments are valid for use with a TMBTembooUri
 *
 * @param segments
 *		The segments to validate
 *
 * @return void
 *
 * @throws TMBException if an invalid segment is discovered or if the path validation
 *		   RegEx cannot be initialized
 */
-(void)validatePathSegments:(NSArray*)segments {
	for(id segment in segments){
		if(![self segmentIsValid:segment])
			[TMBException throwWithReason:[NSString stringWithFormat:@"Invalid path segment: %@", segment]];
	}
}

@end

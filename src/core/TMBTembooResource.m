#import "TMBTembooResource.h"
#import "TMBTembooUri.h";
#import "TMBTembooSession.h";

/*!
 * Class extension - attempt to hide "protected" members
 */
@interface TMBTembooResource()
	/*! The session which owns this resource */
	@property (nonatomic, readwrite, retain) TMBTembooSession *session;
	/*! A URI fragment corresponding to the method call in the REST API that accesses this resource */
	@property (nonatomic, readwrite, retain) TMBTembooUri *uri;
	
	-(id)initWithSession:(TMBTembooSession*)session andUri:(TMBTembooUri*)uri;
@end

/*!
 * TMBTembooResource class implementation
 */
@implementation TMBTembooResource

//
// Synthesize class properties
//
@synthesize session;
@synthesize uri;

/*!
 * Initialize a RESTful resource with a session and URI
 *
 * @param s
 *		The session that owns this resource
 * @param u
 *		A URI fragment corresponding to the method call in the REST API that accesses this resource
 *
 * @return The initialized TMBTembooResource instance
 */
-(id)initWithSession:(TMBTembooSession *)s andUri:(TMBTembooUri *)u {
	
	if(self = [super init]){
		self.session = s;
		self.uri = u;
	}
	
	return self;
}

/*!
 * Release retained resources
 */
-(void)dealloc {
	[session release];
	[uri release];
	[super dealloc];
}

/*!
 * @return This TMBTembooResource's TMBTembooUri's description
 *
 * @see TMBTembooUri.description
 */
-(NSString*)description {
	return [self.uri description];
}

@end

#import "TMBUtil.h"
#import "NSString+Base64.h"

@implementation TMBUtil

/*!
 * Builds a "Basic" authentication header for the provided username and password.
 *
 * @param username
 *		The username to use for authentication
 * @param password
 *		The password to use for authentication
 *
 * @return The encoded authentication string
 */
+(NSString*)buildBasicAuthenticationHeaderForUsername:(NSString*)username andPassword:(NSString*)password {
	// Build string username:password	
	NSString *raw = [NSString stringWithFormat:@"%@:%@", username, password];
	// UTF8-escape		  
	NSString *escaped = [raw stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	// Base64-encode
	NSString *encoded = [escaped base64EncodedString];
	// Add "Basic " prefix
	return [NSString stringWithFormat:@"Basic %@", encoded];
}

@end

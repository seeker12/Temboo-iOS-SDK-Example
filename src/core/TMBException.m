//
//  TMBException.m
//  ios-sdk-src
//
//  Created by Reid Simonton on 1/3/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//
#import "TMBException.h"

@interface TMBException()
+(void)throwWithName:(Class)type andReason:(NSString*)message;
+(void)throwWithName:(Class)type reason:(NSString *)message andUserInfo:(NSDictionary*)info;
@end

@implementation TMBException

+(void)throwWithReason:(NSString*)message {
	[self throwWithName:[self class] reason:message andUserInfo:nil];
}

+(void)throwWithName:(Class)type andReason:(NSString*)message {
	[self throwWithName:type reason:message andUserInfo:nil];
}

+(void)throwWithName:(Class)type reason:(NSString*)message andUserInfo:(NSDictionary*)info {
	@throw [super exceptionWithName:NSStringFromClass(type) reason:message userInfo:info];
}

@end

@implementation TMBHTTPException

+(void)throwWithReason:(NSString*)message andStatus:(NSInteger)status {
	NSDictionary *userInfo = [NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%d", status] forKey:@"status"];
	[super throwWithName:[self class] reason:message andUserInfo:userInfo];
}

@end


@implementation TMBNotFoundException

+(void)throwWithReason:(NSString*)message {
	[super throwWithName:[self class] andReason:message];
}

@end
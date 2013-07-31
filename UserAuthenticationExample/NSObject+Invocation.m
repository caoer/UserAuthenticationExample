//
//  NSObject+Invocation.m
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import "NSObject+Invocation.h"
#import "NSInvocation+Utilities.h"
#import <objc/runtime.h>

@implementation NSObject (Invocation)
- (id)buildInvocation:(NSInvocation**)invocationReceiver {
    return [NSInvocation buildInvocation:invocationReceiver withTarget:self];
}
@end

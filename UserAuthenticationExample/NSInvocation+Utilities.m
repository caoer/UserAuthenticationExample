//
//  RamencoderHelper
//
//  Created by zitao xiong on 10/13/12.
//  Copyright (c) 2012 Nanaimostudio. All rights reserved.

#import "NSInvocation+Utilities.h"

#import "InvocationBuilder.h"


@implementation NSInvocation (Utilities)

+ (id)buildInvocation:(NSInvocation **)invocationReceiver withTarget:(id)target {
    InvocationBuilder* builder = [[InvocationBuilder alloc] initWithReceiver:invocationReceiver target:target];
    return builder;
}

@end

//
//  RamencoderHelper
//
//  Created by zitao xiong on 10/13/12.
//  Copyright (c) 2012 Nanaimostudio. All rights reserved.

#import "InvocationBuilder.h"


@interface InvocationBuilder () {
    NSInvocation *_invocation;
    NSInvocation * __autoreleasing *_receiver;
    id _target;
}

@property (nonatomic, strong) NSInvocation* invocation;

@end


@implementation InvocationBuilder

@synthesize invocation = _invocation;

- (id)initWithReceiver:(NSInvocation**)invocationReceiver target:(id)target {
    NSAssert(NULL != invocationReceiver, @"The invocation being built should be stored somewhere.");
    _receiver = invocationReceiver;
    _target = target;
    return self;
}

#pragma mark -

- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation setTarget:_target];
    
    self.invocation = invocation;
    *_receiver = invocation;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {
	NSMethodSignature* signature = [_target methodSignatureForSelector:selector];
	return signature;
}

@end

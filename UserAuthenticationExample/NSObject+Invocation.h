//
//  NSObject+Invocation.h
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Invocation)
- (id)buildInvocation:(NSInvocation**)invocationReceiver;
@end

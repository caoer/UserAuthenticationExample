//
//  RamencoderHelper
//
//  Created by zitao xiong on 10/13/12.
//  Copyright (c) 2012 Nanaimostudio. All rights reserved.

#import <Foundation/Foundation.h>


@interface NSInvocation (Utilities)

+ (id)buildInvocation:(NSInvocation **)invocationReceiver withTarget:(id)target;

@end

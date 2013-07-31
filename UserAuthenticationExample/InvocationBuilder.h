//
//  RamencoderHelper
//
//  Created by zitao xiong on 10/13/12.
//  Copyright (c) 2012 Nanaimostudio. All rights reserved.

#import <Foundation/Foundation.h>


/** A builder of NSInvocation objects. Wraps up any message sent to it with all of the message arguments
 to a NSInvocation instance.
 */
@interface InvocationBuilder : NSProxy

- (id)initWithReceiver:(NSInvocation **)invocationReceiver target:(id)target;

@end

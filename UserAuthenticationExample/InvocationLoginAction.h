//
//  LoginAction.h
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InvocationLoginAction : NSObject
- (id)initWithInvocation:(NSInvocation *)onSuccessInvocation;
+ (void)performAuthorizedAction:(NSInvocation*)action;
@end

//
//  LoginAction.m
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import "InvocationLoginAction.h"
#import "AccountManager.h"
#import "LoginViewController.h"

@interface InvocationLoginAction()
@property (nonatomic, strong) NSInvocation *onSuccessInvocation;
@end

@implementation InvocationLoginAction
- (id)initWithInvocation:(NSInvocation *)onSuccessInvocation {
	if (self = [super init]) {
        
		_onSuccessInvocation = onSuccessInvocation;
		[_onSuccessInvocation retainArguments];
	}
	return self;
}


+ (void)performAuthorizedAction:(NSInvocation*)action {
    if ([[AccountManager shared] isLoggedIn]) {
		[action invoke];
	}
    else {
        [action retainArguments];
        LoginViewController *vc = [[LoginViewController alloc] init];
        vc.onSuccessInvocation = action;
        
        [[[[[UIApplication sharedApplication] delegate] window] rootViewController] presentViewController:vc animated:YES completion:^{
            
        }];
    }
}

@end

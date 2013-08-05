//
//  AccountManager.m
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import "AccountManager.h"
#import "LoginViewController.h"

@implementation AccountManager
SYNTHESIZE_SINGLETON_FOR_CLASS(AccountManager)
+ (void)ensureLoggedIn:(void (^)(void))block {
    if ([self shared].isLoggedIn) {
        block();
    }
    else {
        LoginViewController *vc = [[LoginViewController alloc] init];
        vc.onSuccessLoggedInBlock = block;
        [[[[[UIApplication sharedApplication] delegate] window] rootViewController] presentViewController:vc animated:YES completion:^{
            
        }];
    }
}
@end

void ensureLoggedIn(void (^block)()) {
    if ([AccountManager shared].isLoggedIn) {
        block();
    }
    else {
        LoginViewController *vc = [[LoginViewController alloc] init];
        vc.onSuccessLoggedInBlock = block;
        [[[[[UIApplication sharedApplication] delegate] window] rootViewController] presentViewController:vc animated:YES completion:^{
            
        }];
    }
}
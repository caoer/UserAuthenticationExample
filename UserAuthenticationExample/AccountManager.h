//
//  AccountManager.h
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GCDSingleton.h"

@interface AccountManager : NSObject
SYNTHESIZE_SINGLETON_FOR_CLASS_HEADER(AccountManager)

@property (nonatomic, assign, getter = isLoggedIn)BOOL loggedIn;

+ (void)ensureLoggedIn:(void (^)(void))block;

@end

void ensureLoggedIn(void (^block)());
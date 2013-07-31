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
@property (nonatomic, assign, getter = isLoggedIn)BOOL loggedIn;

SYNTHESIZE_SINGLETON_FOR_CLASS_HEADER(AccountManager)
@end

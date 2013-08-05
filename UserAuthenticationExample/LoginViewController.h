//
//  LoginViewController.h
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
- (IBAction)onLoginButton:(id)sender;


#pragma mark - Example 0
@property (nonatomic, copy)id afterLoginBlock;

#pragma makr - Example 1 Invocation
@property (nonatomic, strong)NSInvocation *onSuccessInvocation;

#pragma mark - Example 2 Block
@property (nonatomic, copy)id onSuccessLoggedInBlock;
@end

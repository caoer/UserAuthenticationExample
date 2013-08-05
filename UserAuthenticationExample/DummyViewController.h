//
//  DummyViewController.h
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DummyViewController : UIViewController
- (IBAction)onActionRequireUserSignInSimple:(id)sender;
- (IBAction)onLogoutButton:(id)sender;
- (IBAction)onActionRequireUserSigninInvocation:(id)sender;
- (IBAction)OnActionRequireUserSignInBlock:(id)sender;
- (IBAction)OnActionRequireUserSignInCBlock:(id)sender;

@end

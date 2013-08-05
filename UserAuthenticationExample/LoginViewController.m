//
//  LoginViewController.m
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import "LoginViewController.h"
#import "AccountManager.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLoginButton:(id)sender {
    //Add real authentication here
    [AccountManager shared].loggedIn = YES;
    [self dismissViewControllerAnimated:YES completion:^{
        if (self.afterLoginBlock) {
            ((void (^)(void))self.afterLoginBlock)();
            self.afterLoginBlock = nil;
        }
        
        if (self.onSuccessInvocation) {
            [self.onSuccessInvocation invoke];
            self.onSuccessInvocation = nil;
        }
        
        if (self.onSuccessLoggedInBlock) {
            ((void (^)(void))self.onSuccessLoggedInBlock)();
            self.onSuccessLoggedInBlock = nil;
        }
    }];
}

- (void)dealloc {
    
}
@end

//
//  DummyViewController.m
//  UserAuthenticationExample
//
//  Created by Zitao Xiong on 7/31/13.
//  Copyright (c) 2013 nanaimostudio. All rights reserved.
//

#import "DummyViewController.h"
#import "LoginViewController.h"
#import "AccountManager.h"
#import "InvocationLoginAction.h"
#import "NSInvocation+Utilities.h"
#import "InvocationBuilder.h"
#import "NSObject+Invocation.h"

@interface DummyViewController ()

@end

@implementation DummyViewController

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

- (IBAction)onActionRequireUserSignInSimple:(id)sender {
    if ([AccountManager shared].isLoggedIn) {
        [self doActionAfterLoggedIn];
    }
    else {
        LoginViewController *vc = [[LoginViewController alloc] init];
        vc.afterLoginBlock = ^{
            [self doActionAfterLoggedIn];
        };
        [self presentViewController:vc animated:YES completion:^{
            
        }];
    }
}

- (IBAction)onActionRequireUserSigninInvocation:(id)sender {
    __autoreleasing NSInvocation *invocation = nil;

    [[self buildInvocation:&invocation] doActionAfterLoggedIn];
    [InvocationLoginAction performAuthorizedAction:invocation];
}


- (IBAction)onLogoutButton:(id)sender {
    [AccountManager shared].loggedIn = NO;
}

- (void)doActionAfterLoggedIn {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You are awesome"
                                                    message:@"Wow, you logged in!! That's good!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}
@end

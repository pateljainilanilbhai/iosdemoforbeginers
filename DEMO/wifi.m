//
//  ViewController.m
//  project
//
//  Created by Patel on 31/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "wifi.h"
#import "signin.h"

@interface wifi ()

@end

@implementation wifi

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.navigationController.navigationBar setHidden:true ];
    self.labelpass.layer.cornerRadius=10;
    self.labelpass.layer.masksToBounds = true;
    self.labeluser.layer.cornerRadius=10;
    self.labeluser.layer.masksToBounds = true;
    self.txt_password.layer.cornerRadius=10;
  self.txt_password.layer.masksToBounds = true;
    self.txt_username.layer.cornerRadius=10;
    self.txt_username.layer.masksToBounds = true;
    self.signup.layer.cornerRadius= 25;
     self.signin.layer.cornerRadius= 5;
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0]];
     [self.navigationController.navigationBar setHidden:false];
    self.txt_password.delegate=self;
    self.txt_username.delegate=self;
    
}
- (IBAction)signin:(id)sender
{
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSString *user = [prefs valueForKey:@"username"];
    NSString *pass = [prefs valueForKey:@"password"];
    NSLog(@"%@ %@",user,pass);
    if ([user isEqualToString:self.txt_username.text] && [pass isEqualToString:self.txt_password.text] )
    {
        signin *regg = [self.storyboard instantiateViewControllerWithIdentifier:@"signin"];
        [self.navigationController pushViewController:regg animated:YES];
    }
    else
    {
        self.alertmessage.text=@"Invalid Credentials";
    }
    
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

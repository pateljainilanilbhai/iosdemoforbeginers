//
//  signup.m
//  project
//
//  Created by Patel on 31/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "signup.h"

@interface signup ()

@end

@implementation signup

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *color = [UIColor whiteColor];
    self.name.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Your Full Name" attributes:@{NSForegroundColorAttributeName: color}];
    
    self.username.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"User Name" attributes:@{NSForegroundColorAttributeName: color}];
    
    self.password.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{NSForegroundColorAttributeName: color}];
    
    self.phone.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Mobile Number" attributes:@{NSForegroundColorAttributeName: color}];
    
    self.text.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Receieved Text Code" attributes:@{NSForegroundColorAttributeName: color}];
    self.signupbutton.layer.cornerRadius= 10;
     [self.navigationController.navigationBar setHidden:false];
    self.username.delegate=self;
    self.password.delegate=self;
    self.name.delegate=self;
    self.phone.delegate=self;
    self.text.delegate=self;
    
}
- (IBAction)saveall:(id)sender {
    if(![self.name.text isEqualToString:@""]&&![self.username.text isEqualToString:@""]&&![self.password.text isEqualToString:@""]&&![self.phone.text isEqualToString:@""]&&[self.text.text isEqualToString:@"12345"]){
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.name.text forKey:@"name"];
    [defaults setObject:self.username.text forKey:@"username"];
    [defaults setObject:self.password.text forKey:@"password"];
    [defaults setObject:self.phone.text forKey:@"phone"];
    [defaults setObject:self.text.text forKey:@"code"];
    [defaults synchronize];
        NSLog(@"done saving ");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)message:(id)sender {
}
@end

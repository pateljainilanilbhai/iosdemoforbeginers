//
//  ViewController.m
//  MyFirstDemo
//
//  Created by Patel on 27/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "finaldemo.h"

@interface finaldemo ()

@end

@implementation finaldemo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [self.navigationController.navigationBar setHidden:false];
    self.username.delegate=self;
    self.passwordd.delegate=self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)registerBtnClick:(id)sender
{
    RegisterVC *reg = [self.storyboard instantiateViewControllerWithIdentifier:@"RegisterVC"];
    [self.navigationController pushViewController:reg animated:YES];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end

//
//  ViewController.m
//  dreams
//
//  Created by Patel on 27/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "calculator.h"
#import "scientific.h"

@interface calculator ()

@end

@implementation calculator
- (IBAction)sum:(id)sender {
    //[c setText:[@((int)[[a text] intValue]+(int)[[b text] intValue]) stringValue]];
    c.text = [NSString stringWithFormat:@"%@",@((int)[[a text] intValue]+(int)[[b text] intValue])];
    a.delegate=self;
    b.delegate=self;
    
}

- (IBAction)sub:(id)sender {
    [c setText:[@((int)[[a text] intValue]-(int)[[b text] intValue]) stringValue]];
}
- (IBAction)mul:(id)sender {
     [c setText:[@((int)[[a text] intValue]*(int)[[b text] intValue]) stringValue]];
}
- (IBAction)div:(id)sender {
    [c setText:[@((int)[[a text] intValue]/(int)[[b text] intValue]) stringValue]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [self.navigationController.navigationBar setHidden:false];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sci:(id)sender {
    scientific *reg = [self.storyboard instantiateViewControllerWithIdentifier:@"scientific"];
    [self.navigationController pushViewController:reg animated:YES];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end

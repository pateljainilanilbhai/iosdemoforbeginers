//
//  scientific.m
//  dreams
//
//  Created by Patel on 28/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "scientific.h"
#import "Math.h"
#import "factt.h"

@interface scientific ()

@end

@implementation scientific

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     [self.navigationController.navigationBar setHidden:false];
    num.delegate=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sqr:(id)sender {
    [ans setText:[@(sqrt((int)[[num text] intValue])) stringValue]];
    
}
- (IBAction)fa:(id)sender {
    factt *regg = [self.storyboard instantiateViewControllerWithIdentifier:@"factt"];
    [self.navigationController pushViewController:regg animated:YES];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

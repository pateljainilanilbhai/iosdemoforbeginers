//
//  factt.m
//  dreams
//
//  Created by Patel on 28/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "factt.h"

@interface factt ()
{
    
    IBOutlet UITextField *num;
    IBOutlet UILabel *anss;
    
}

@end

@implementation factt

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (long) multiplyNumbers:(int)n
{
    if (n >= 1)
        return n*[self multiplyNumbers:(n-1)];
    else
        return 1;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)dofact:(id)sender {
    int k=[num.text intValue];
    long ans=[self multiplyNumbers:k];
    [anss setText:[NSString stringWithFormat:@"%ld",ans]];
    
    
}
@end

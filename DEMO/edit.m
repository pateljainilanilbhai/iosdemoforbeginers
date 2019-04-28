//
//  edit.m
//  sql
//
//  Created by Patel on 09/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "edit.h"

@interface edit ()
{
    DBmanager *db;
}
@end

@implementation edit

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [super viewDidLoad];
    self.name.delegate=self;
    self.email.delegate=self;
    self.password.delegate=self;
    db = [[DBmanager alloc] init];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
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

- (IBAction)save:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd mm yyyy"];
    
    NSString *stringFromDate = [formatter stringFromDate:self.birthdate.date];
    
    
    BOOL suc = [db addTablewithData:self.name.text Email:self.email.text Password:self.password.text BDate:stringFromDate];
    
    if (suc)
    {
        NSLog(@"Success");
        
        [self.navigationController popViewControllerAnimated:YES];
        
    }
    else
    {
        NSLog(@"Fail");
    
        [self.navigationController popViewControllerAnimated:YES];
        
    }
}

@end

//
//  edit.h
//  sql
//
//  Created by Patel on 09/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "FMDatabase.h"
#import "DBmanager.h"


@interface edit : UIViewController <UITextFieldDelegate>
- (IBAction)save:(id)sender;
-(BOOL)textFieldShouldReturn:(UITextField *)textField;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UIDatePicker *birthdate;
@property (strong, nonatomic) IBOutlet UITextField *password;
@end

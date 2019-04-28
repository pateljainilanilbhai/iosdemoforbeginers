//
//  RegisterVC.h
//  MyFirstDemo
//
//  Created by Patel on 28/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterVC : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) IBOutlet UITextField *fullname;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *password;

@end

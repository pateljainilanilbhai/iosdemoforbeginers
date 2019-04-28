//
//  ViewController.h
//  project
//
//  Created by Patel on 31/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface wifi : UIViewController <UITextFieldDelegate>


@property (strong, nonatomic) IBOutlet UILabel *labeluser;
@property (strong, nonatomic) IBOutlet UILabel *labelpass;
@property (strong, nonatomic) IBOutlet UITextField *txt_username;
@property (strong, nonatomic) IBOutlet UITextField *txt_password;
@property (strong, nonatomic) IBOutlet UIButton *signup;
@property (strong, nonatomic) IBOutlet UIButton *signin;
@property (strong, nonatomic) IBOutlet UILabel *alertmessage;


@end


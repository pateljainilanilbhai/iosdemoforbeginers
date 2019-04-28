//
//  ViewController.h
//  MyFirstDemo
//
//  Created by Patel on 27/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterVC.h"

@interface finaldemo : UIViewController <UITextFieldDelegate>
{
    
}
- (IBAction)registerBtnClick:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *passwordd;

@end


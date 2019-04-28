//
//  EditInfoViewController.h
//  sqlliteproject
//
//  Created by Patel on 09/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol EditInfoViewControllerDelegate

-(void)editingInfoWasFinished;

@end
@interface EditInfoViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtFirstname;

@property (weak, nonatomic) IBOutlet UITextField *txtLastname;

@property (weak, nonatomic) IBOutlet UITextField *txtAge;

- (IBAction)saveInfo:(id)sender;
@property (nonatomic, strong) id<EditInfoViewControllerDelegate> delegate;
@property (nonatomic) int recordIDToEdit;
@end

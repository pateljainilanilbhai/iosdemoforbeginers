//
//  ViewController.h
//  actionsheet
//
//  Created by Patel on 04/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestViewController.h"

@interface ACTIONSHEET : UIViewController <UIActionSheetDelegate>

   @property (nonatomic,strong) UIViewController *TestViewController;

- (IBAction)showNormalActionSheet:(id)sender;

- (IBAction)showDeleteConfirmation:(id)sender;

- (IBAction)showColorsActionSheet:(id)sender;
@property (nonatomic, strong) UIPopoverController *userDataPopover;

- (IBAction)pressed:(id)sender;
- (IBAction)pre:(id)sender;


@end


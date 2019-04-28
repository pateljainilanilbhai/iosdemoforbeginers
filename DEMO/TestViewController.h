//
//  TestViewController.h
//  actionsheet
//
//  Created by Patel on 04/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController <UITextFieldDelegate>
{
    NSArray *PickerData ;
}
@property (strong, nonatomic) IBOutlet UIPickerView *pick;
@property (strong, nonatomic) IBOutlet UITextField *name;


@end

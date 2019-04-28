//
//  ViewController.m
//  actionsheet
//
//  Created by Patel on 04/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "ACTIONSHEET.h"
#import "TestViewController.h"

@interface ACTIONSHEET ()

@end

@implementation ACTIONSHEET

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showNormalActionSheet:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"What do you want to do with the file?"
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:@"Delete it"
                                                    otherButtonTitles:@"Copy", @"Move", @"Duplicate", nil];
    
    [actionSheet showInView:self.view];
}
- (IBAction)showDeleteConfirmation:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Really delete the selected contact?"
                                                             delegate:self
                                                    cancelButtonTitle:@"No, I changed my mind"
                                               destructiveButtonTitle:@"Yes, delete it"
                                                    otherButtonTitles:nil];
    
    [actionSheet showInView:self.view];
}
- (IBAction)showColorsActionSheet:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Pick a color:"
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Red", @"Green", @"Blue", @"Orange", @"Purple", nil];
    
    [actionSheet showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (actionSheet.tag == 100) {
        NSLog(@"The Normal action sheet.");
    }
    else if (actionSheet.tag == 200){
        NSLog(@"The Delete confirmation action sheet.");
    }
    else{
        NSLog(@"The Color selection action sheet.");
    }
    
    NSLog(@"Index = %d - Title = %@", buttonIndex, [actionSheet buttonTitleAtIndex:buttonIndex]);
}
-(void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex{
    if (actionSheet.tag == 300) {
        NSLog(@"From willDismissWithButtonIndex - Selected Color: %@", [actionSheet buttonTitleAtIndex:buttonIndex]);
    }
}



- (IBAction)pressed:(id)sender {
//    TestViewController *testViewController = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
//
//
//    self.userDataPopover = [[UIPopoverController alloc] initWithContentViewController:testViewController];
//    self.userDataPopover.popoverContentSize = CGSizeMake(320.0, 400.0);
//    [self.userDataPopover presentPopoverFromRect:[(UIButton *)sender frame]
//                                          inView:self.view
//                        permittedArrowDirections:UIPopoverArrowDirectionAny
//                                        animated:YES];
//
    
}

- (IBAction)pre:(id)sender {
   
    self.userDataPopover = [[UIPopoverController alloc] initWithContentViewController:self];
    self.userDataPopover.popoverContentSize = CGSizeMake(320.0, 400.0);
    [self.userDataPopover presentPopoverFromRect:[(UIButton *)sender frame]
                                          inView:self.view
                        permittedArrowDirections:UIPopoverArrowDirectionAny
                                        animated:YES];
    
    
}
@end

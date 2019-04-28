//
//  ViewController.h
//  sql
//
//  Created by Patel on 09/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMDatabase.h"
#import "DBmanager.h"
#import "edit.h"
@interface sql : UIViewController <UITextFieldDelegate>
{
    
}
@property (weak, nonatomic) IBOutlet UITableView *tblPeople;
@property (strong, nonatomic) IBOutlet UITextField *query;
-(void)editingInfoWasFinished;
- (IBAction)add:(id)sender;
- (IBAction)execute:(id)sender;

@end


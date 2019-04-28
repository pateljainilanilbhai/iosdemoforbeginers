//
//  ViewController.h
//  sqlliteproject
//
//  Created by Patel on 08/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManagerr.h"
#import "EditInfoViewController.h"
@interface sqllitedatabase : UIViewController <UITableViewDelegate, UITableViewDataSource, EditInfoViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tblPeople;


- (IBAction)addNewRecord:(id)sender;

@end


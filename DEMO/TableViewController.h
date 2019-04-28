//
//  ViewController.h
//  tablev
//
//  Created by Patel on 01/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tabledatacell.h"

@interface TableViewController : UIViewController
{
    IBOutlet UITableView *tbl_data;
    
}
@property (strong, nonatomic) IBOutlet UIButton *adduser;


@end


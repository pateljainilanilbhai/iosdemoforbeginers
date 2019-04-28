//
//  dataCell.h
//  tablev
//
//  Created by Patel on 01/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dataCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *email;
@property (strong, nonatomic) IBOutlet UILabel *password;
@property (strong, nonatomic) IBOutlet UILabel *bdate;


@end

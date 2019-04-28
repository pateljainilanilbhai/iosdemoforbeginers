//
//  dataCell.h
//  tablev
//
//  Created by Patel on 01/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tabledatacell : UITableViewCell <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imgg;
@property (strong, nonatomic) IBOutlet UITextView *dataa;
@property (strong, nonatomic) IBOutlet UILabel *username;

@end

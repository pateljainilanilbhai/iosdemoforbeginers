//
//  dataCell.m
//  tablev
//
//  Created by Patel on 01/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "tabledatacell.h"

@implementation tabledatacell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.dataa.delegate=self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


@end

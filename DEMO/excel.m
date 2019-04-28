//
//  ViewController.m
//  excel
//
//  Created by Patel on 02/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "excel.h"

@interface excel ()

@end

@implementation excel

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    int y=0;
    int z=0;
    for(int j=0;j<20;j++)
    {
        int x=0;
        UIView *row = [[UIView alloc] initWithFrame:CGRectMake(0, y+1, 1000, 50)];
        for(int i=0;i<10;i++){
            UIView *v =[[UIView alloc] initWithFrame:CGRectMake(x+1,0,100,50)];
            CGRect someRect = CGRectMake(0.0, 0.0, 100.0, 50.0);
            UITextField* text = [[UITextField alloc] initWithFrame:someRect];
            text.delegate=self;
            [v addSubview:text];
            v.backgroundColor = [UIColor grayColor];
            [row addSubview:v];
            x=x+1+100;
        }
        [self.scroll addSubview:row];
        y=y+50+1;
        z=x;
    }
    self.scroll.contentSize=CGSizeMake(1000,1500);
     [self.navigationController.navigationBar setHidden:false];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end

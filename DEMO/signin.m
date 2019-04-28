//
//  signin.m
//  project
//
//  Created by Patel on 31/02/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "signin.h"

@interface signin ()

@end

@implementation signin

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.navigationBar setHidden:true];
    self.logout.layer.cornerRadius=5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

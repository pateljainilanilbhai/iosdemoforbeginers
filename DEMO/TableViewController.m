//
//  ViewController.m
//  tablev
//
//  Created by Patel on 01/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [self.navigationController.navigationBar setHidden:false];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
int user=20;
- (IBAction)adduser:(id)sender {
    user++;
    [self tableView:tbl_data numberOfRowsInSection:(NSInteger)user];
    [self tableView:tbl_data cellForRowAtIndexPath:[NSIndexPath indexPathForRow:(NSInteger)user inSection:(NSInteger)0]];
    [tbl_data reloadData];
}
- (BOOL)tableView:(UITableView *)tableView
canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section {
    return user;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"dataCell";
    
    tabledatacell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
    
    if (cell == nil) {
        cell = [[tabledatacell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    [cell.imgg setImage:[UIImage imageNamed:[NSString stringWithFormat:@"Unknown-%ld.png",indexPath.row%7] ]];
    [cell.dataa setText:[NSString stringWithFormat:@"%ld:",indexPath.row]];
    [cell.username setText:[NSString stringWithFormat:@"USER-%ld",indexPath.row]];
    return cell;
}

// Default is 1 if not implemented
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


#pragma mark - TableView delegate


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath {
    NSLog(@"Cell %ld Clicked",indexPath.row);
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        [tableView reloadData]; // tell table to refresh now
    }
}


@end

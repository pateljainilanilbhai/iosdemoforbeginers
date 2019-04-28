//
//  ViewController.m
//  DEMO
//
//  Created by Patel on 10/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.navigationController.navigationBar setTintColor:[UIColor greenColor]];
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)tableView:(UITableView *)tableView
canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section {
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"dataCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                           cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    if(indexPath.row==0)
    {
        cell.textLabel.text=@"DAY 1:LOGIN PAGE";
    }
    else if(indexPath.row==1)
    {
        cell.textLabel.text=@"DAY 2:WIFI HOTSPOT LOGIN";
    }
    else if(indexPath.row==2)
    {
        cell.textLabel.text=@"DAY 3:CALCULATOR";
    }
    else if(indexPath.row==3)
    {
        cell.textLabel.text=@"DAY 4:TABLEVIEW CHAT";
    }
    else if(indexPath.row==4)
    {
        cell.textLabel.text=@"DAY 5:COLLECTION VIEW";
    }
    else if(indexPath.row==5)
    {
        cell.textLabel.text=@"DAY 6:CAMERA";
    }
    else if(indexPath.row==6)
    {
        cell.textLabel.text=@"DAY 7:SCROLL VIEW EXCEL";
    }
    else if(indexPath.row==7)
    {
        cell.textLabel.text=@"DAY 8:SQL WITH FMDB";
    }
    else if(indexPath.row==8)
    {
        cell.textLabel.text=@"DAY 9:ACTION SHEET";
    }
    else if(indexPath.row==9)
    {
        cell.textLabel.text=@"DAY 10:GESTURES AND ACCELEROMETER";
    }
    else if(indexPath.row==10)
    {
        cell.textLabel.text=@"DAY 11:TAB VIEW CONTROLLER";
    }
    else if(indexPath.row==11)
    {
        cell.textLabel.text=@"DAY 12:SQLLITEDATABASE";
    }
    
    
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
    if(indexPath.row==0)
    {
        finaldemo *reg = [self.storyboard instantiateViewControllerWithIdentifier:@"finaldemo"];
        [self.navigationController pushViewController:reg animated:YES];
    }
    else if(indexPath.row==1)
    {
        wifi *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"wifi"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==2)
    {
        calculator *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"calculator"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==3)
    {
        TableViewController *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"TableViewController"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==4)
    {
        view *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==5)
    {
        Cameraviewcontroller *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"Cameraviewcontroller"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==6)
    {
        excel *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"excel"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==7)
    {
        sql *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"sql"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==8)
    {
        ACTIONSHEET *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"ACTIONSHEET"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==9)
    {
        PanViewController *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"PanViewController"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==10)
    {
        UITabBarController *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"tab"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
    else if(indexPath.row==11)
    {
        sqllitedatabase *reg1 = [self.storyboard instantiateViewControllerWithIdentifier:@"sqllitedatabase"];
        [self.navigationController pushViewController:reg1 animated:YES];
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        [tableView reloadData]; // tell table to refresh now
    }
}


@end

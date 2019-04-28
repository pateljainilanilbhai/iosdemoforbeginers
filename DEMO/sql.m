//
//  ViewController.m
//  database
//
//  Created by Shruri on 30/05/18.
//  Copyright © 2018 Shruri. All rights reserved.
//

#import "sql.h"
#import "AppDelegate.h"
#import "dataCell.h"

@interface sql ()
{
    DBmanager *db;

}
@end

@implementation sql

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tblPeople.delegate = self;
    self.tblPeople.dataSource = self;
    self.tblPeople.rowHeight=137;
    db = [[DBmanager alloc] init];
    self.query.delegate=self;
    [db getUserData];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewDidAppear:(BOOL)animated
{
    [self.tblPeople reloadData];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//- (IBAction)adduser:(id)sender {
//    user++;
//    [self tableView:tbl_data numberOfRowsInSection:(NSInteger)user];
//    [self tableView:tbl_data cellForRowAtIndexPath:[NSIndexPath indexPathForRow:(NSInteger)user inSection:(NSInteger)0]];
//    [tbl_data reloadData];
//}
- (BOOL)tableView:(UITableView *)tableView
canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section {
    return [db getUserDataresult].count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"dataCell";
    
    dataCell *cell = [tableView dequeueReusableCellWithIdentifier:
                      cellIdentifier];
    
    if (cell == nil) {
        cell = [[dataCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSMutableArray *a=[[NSMutableArray alloc]init];
    a=[db getUserDataresult] ;
    NSLog(@"%ld", (long)indexPath.row);
    
    cell.name.text=[[a objectAtIndex:indexPath.row] objectAtIndex:1];
    cell.email.text=[[a objectAtIndex:indexPath.row] objectAtIndex:2];
    cell.password.text=[[a objectAtIndex:indexPath.row] objectAtIndex:3];
    cell.bdate.text=[[a objectAtIndex:indexPath.row] objectAtIndex:4];
    
    
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

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the selected record.
        // Find the record ID.
        NSMutableArray *a=[[NSMutableArray alloc]init];
        a=[db getUserDataresult];
        int recordIDToDelete = [[[a objectAtIndex:indexPath.row] objectAtIndex:0] intValue];
        
        // Prepare the query.
        NSString *query = [NSString stringWithFormat:@"DELETE FROM userData WHERE id='%d';", recordIDToDelete];
        
        // Execute the query.
        [db executesomequery:query];
        
        // Reload the table view.
        [self.tblPeople reloadData];
    }
}


- (IBAction)add:(id)sender {
    [self performSegueWithIdentifier:@"idSegueEditInfo" sender:self];
}

- (IBAction)execute:(id)sender {
    [db executesomequery:self.query.text];
}
- (IBAction)reload:(id)sender {
     [self.tblPeople reloadData];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}



@end

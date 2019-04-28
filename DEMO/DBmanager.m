

#import "DBmanager.h"



@implementation DBmanager

-(BOOL)addTablewithData:(NSString *)name Email:(NSString *)email Password:(NSString *)password BDate:(NSString *)bDate
{
    appDel  = (AppDelegate *) [UIApplication sharedApplication].delegate;
    FMDatabase *data = [FMDatabase databaseWithPath:appDel.databasePath];
    
    [data open];
    int lastvalue=[[[NSUserDefaults standardUserDefaults] valueForKey:@"idd"] intValue];
    BOOL success = [data executeUpdate:@"INSERT INTO userData (id,name,email,password,bdate) VALUES (?,?,?,?,?);",[NSString stringWithFormat:@"%d",lastvalue],name,email,password,bDate,nil];
    [data close];
    lastvalue++;
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d",lastvalue] forKey:@"idd"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return success;
}

-(NSMutableArray *)getUserData
{
    NSMutableArray *data = [[NSMutableArray alloc] init];
    
    appDel  = (AppDelegate *) [UIApplication sharedApplication].delegate;
    
    FMDatabase *db = [FMDatabase databaseWithPath:appDel.databasePath];
    
    [db open];
    
    FMResultSet *result = [db executeQuery:@"SELECT * FROM userData"];
    
    while ([result next])
    {
        NSLog(@"id :- %@",[result stringForColumn:@"id"]);
        NSLog(@"name :- %@",[result stringForColumn:@"name"]);
        NSLog(@"email :- %@",[result stringForColumn:@"email"]);
        NSLog(@"password :- %@",[result stringForColumn:@"password"]);
        NSLog(@"bDate :- %@",[result stringForColumn:@"bdate"]);
    }
    
    return data;
}
-(void)executesomequery:(NSString *)s
{
    appDel  = (AppDelegate *) [UIApplication sharedApplication].delegate;
    FMDatabase *data = [FMDatabase databaseWithPath:appDel.databasePath];
    
    [data open];
    BOOL success = [data executeUpdate:s];
    if(success)
    {
        NSLog(@"query %@",s);
    }
    [data close];
}

-(NSMutableArray *)getUserDataresult
{
    
    
    appDel  = (AppDelegate *) [UIApplication sharedApplication].delegate;
    
    FMDatabase *db = [FMDatabase databaseWithPath:appDel.databasePath];
    
    [db open];
    
    FMResultSet *result = [db executeQuery:@"SELECT * FROM userData"];
    NSMutableArray *d=[[NSMutableArray alloc]init];
    while ([result next])
    {
//        NSLog(@"name :- %@",[result stringForColumn:@"name"]);
//        NSLog(@"email :- %@",[result stringForColumn:@"email"]);
//        NSLog(@"password :- %@",[result stringForColumn:@"password"]);
//        NSLog(@"bDate :- %@",[result stringForColumn:@"bdate"]);
        NSMutableArray *data = [[NSMutableArray alloc] init];
        [data addObject:[result stringForColumn:@"id"]];
        [data addObject:[result stringForColumn:@"name"]];
        [data addObject:[result stringForColumn:@"email"]];
        [data addObject:[result stringForColumn:@"password"]];
        [data addObject:[result stringForColumn:@"bdate"]];
        [d addObject:data];
    }
    return d;
}

@end

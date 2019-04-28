

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "AppDelegate.h"
@class AppDelegate;
@interface DBmanager : NSObject
{
    AppDelegate *appDel;

}
-(BOOL)addTablewithData:(NSString *)name Email:(NSString *)email Password:(NSString *)password BDate:(NSString *)bDate;
-(NSMutableArray *)getUserData;
-(NSMutableArray *)getUserDataresult;
-(void)executesomequery:(NSString *)s;
@property (nonatomic) int idd;
@end

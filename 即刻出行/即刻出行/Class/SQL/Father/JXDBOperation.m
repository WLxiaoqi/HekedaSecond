//
//  JXDBOperation.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXDBOperation.h"


static NSString *_tableName = kDBTableName;

@implementation JXDBOperation

+ (NSString *)dbPath{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *path = [paths lastObject];
    
    NSString *dbPath = [path stringByAppendingPathComponent:@"myDb.sqlite"];
    
    return dbPath;
}

- (instancetype)init{
    
    self = [super initWithPath:[JXDBOperation dbPath]];
    
    if (self) {
        
        NSLog(@"%@", self.path);
        
        __weak typeof(self) mySelf = self;
        
        [self inDatabase:^(FMDatabase *db) {
            
            if (![mySelf createTable]) {
                NSLog(@"创建表失败");
            }
            
        }];
    }
    
    return self;
}

//创建一张表
- (BOOL)createTable{
    
    NSString *sqlCreatetable = [NSString stringWithFormat:@"create table if not exists '%@' (%@ varchar(255), %@ blob, primary key (%@)) ;",_tableName,kFirstColumn, kSecondColumn, kThirdColumn];
                                
    BOOL success = [_db executeUpdate:sqlCreatetable];
    return success;
    
}

@end

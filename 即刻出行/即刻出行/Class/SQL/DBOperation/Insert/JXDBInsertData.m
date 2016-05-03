//
//  JXDBInsertData.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXDBInsertData.h"


@implementation JXDBInsertData

//通过数据类型插入数据
- (void)insertWithClassName:(NSString *)name object:(id)idObj type:(NSInteger)type{
    [self inDatabase:^(FMDatabase *db) {
        //插入数据
        NSString *sql = [NSString stringWithFormat:@"INSERT INTO %@ (%@,%@,%@) VALUES (?,?,?)",kDBTableName,kFirstColumn,kSecondColumn, kThirdColumn];
        
        if ([db executeUpdate:sql,name,idObj,[NSNumber numberWithInteger:type]]) {
            NSLog(@"插入数据成功");
        }
    }];
}

@end

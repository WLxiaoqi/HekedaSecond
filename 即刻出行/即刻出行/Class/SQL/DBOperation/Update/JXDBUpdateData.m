//
//  JXDBUpdateData.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXDBUpdateData.h"

@implementation JXDBUpdateData

//通过数据类型更新数据
- (void)updateDataWhereType:(NSInteger)type withData:(id)changeValue{
    
    [self inDatabase:^(FMDatabase *db) {
        
        NSString *sql = [NSString stringWithFormat:@"UPDATE %@ set %@ = ? WHERE type = ?;",kDBTableName,kSecondColumn];
        
        if ([db executeUpdate:sql,changeValue,[NSNumber numberWithInteger:type]]) {
            NSLog(@"更新成功");
        }
        
    }];
}

@end

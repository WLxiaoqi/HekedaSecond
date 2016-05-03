//
//  JXDBSelectData.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXDBSelectData.h"

@implementation JXDBSelectData

//通过数据类型查询数据
- (id)selectDataWithType:(NSInteger)type{
    
    NSString *sql = [NSString stringWithFormat:@"select %@ from %@ where type = %zi;",kSecondColumn,kDBTableName,type];
    
    __block NSData *data = nil;
    [self inDatabase:^(FMDatabase *db) {
        FMResultSet *set = [db executeQuery:sql];
        
        if ([set next]) {
            data = [set dataForColumn:kSecondColumn];
        }
    }];
    return data;
}


@end

//
//  JXDBInsertData.h
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import <Foundation/Foundation.h>
#import "JXDBOperation.h"

@interface JXDBInsertData : JXDBOperation

//通过数据类型插入数据
- (void)insertWithClassName:(NSString *)name object:(id)idObj type:(NSInteger)type;

@end

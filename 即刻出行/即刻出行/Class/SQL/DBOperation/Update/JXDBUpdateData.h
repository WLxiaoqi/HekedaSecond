//
//  JXDBUpdateData.h
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import <Foundation/Foundation.h>
#import "JXDBOperation.h"

@interface JXDBUpdateData : JXDBOperation

//通过数据类型更新数据
- (void)updateDataWhereType:(NSInteger)type withData:(id)changeValue;

@end

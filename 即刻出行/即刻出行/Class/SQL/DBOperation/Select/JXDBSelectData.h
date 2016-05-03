//
//  JXDBSelectData.h
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import <Foundation/Foundation.h>
#import "JXDBOperation.h"

@interface JXDBSelectData : JXDBOperation

//通过数据类型查询数据
- (id)selectDataWithType:(NSInteger)type;

@end

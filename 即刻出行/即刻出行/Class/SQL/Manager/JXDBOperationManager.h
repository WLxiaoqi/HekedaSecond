//
//  JXDBOperationManager.h
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import <Foundation/Foundation.h>
#import "JXDBInsertData.h"
#import "JXDBDeleteData.h"
#import "JXDBUpdateData.h"
#import "JXDBSelectData.h"


@interface JXDBOperationManager : NSObject

@property (nonatomic, strong) JXDBInsertData *insertData;

@property (nonatomic, strong) JXDBDeleteData *deleteData;

@property (nonatomic, strong) JXDBUpdateData *updateData;

@property (nonatomic, strong) JXDBSelectData *selectData;

+ (id)manager;

@end

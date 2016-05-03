//
//  JXDBOperationManager.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXDBOperationManager.h"

@implementation JXDBOperationManager

+ (id)manager{
    
    return [[self alloc] init];
}

- (instancetype)init{
    
    self = [super init];
    if (self) {
        
        self.insertData = [[JXDBInsertData alloc] init];
        
        self.deleteData = [[JXDBDeleteData alloc] init];
        
        self.updateData = [[JXDBUpdateData alloc] init];
        
        self.selectData = [[JXDBSelectData alloc] init];
        
    }
    return self;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    static JXDBOperationManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [super allocWithZone:zone];
    });
    
    return manager;
}

@end

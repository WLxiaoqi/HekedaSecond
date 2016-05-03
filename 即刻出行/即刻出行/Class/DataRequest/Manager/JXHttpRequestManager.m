//
//  JXHttpRequestManager.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXHttpRequestManager.h"

@implementation JXHttpRequestManager

+ (id)manager{
    
    return [[self alloc] init];
}

- (instancetype)init{
    
    self = [super init];
    
    if (self) {
        
        self.messageRequest = [[JXHttpMessageRequest alloc] init];
        
        self.loginRequest = [[JXHttpLoginRequest alloc] init];
        
    }
    
    return self;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    static JXHttpRequestManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [super allocWithZone:zone];
    });
    
    return manager;
}

@end

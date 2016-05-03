//
//  JXHttpRequestManager.h
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import <Foundation/Foundation.h>
#import "JXHttpMessageRequest.h"
#import "JXHttpLoginRequest.h"

@interface JXHttpRequestManager : NSObject

@property (nonatomic, strong) JXHttpMessageRequest *messageRequest;

@property (nonatomic, strong) JXHttpLoginRequest *loginRequest;

+ (id)manager;

@end

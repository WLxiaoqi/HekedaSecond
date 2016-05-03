//
//  JXHttpLoginRequest.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import <Foundation/Foundation.h>
#import "JXHttpRequest.h"

@interface JXHttpLoginRequest :JXHttpRequest

- (void)loginPostRequestWithUrlPath:(NSString *)urlPath parameter:(NSDictionary *)param success:(void(^)(id responObject))success failure:(void(^)(NSError *error))failure;

@end

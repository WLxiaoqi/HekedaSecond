//
//  JXHttpMessageRequest.h
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import <Foundation/Foundation.h>
#import "JXHttpRequest.h"

@interface JXHttpMessageRequest : JXHttpRequest

- (void)messageGetRequestWithUrlPath:(NSString *)urlPath parameter:(NSDictionary *)param success:(void(^)(id responObject))success failure:(void(^)(NSError *error))failure;

@end

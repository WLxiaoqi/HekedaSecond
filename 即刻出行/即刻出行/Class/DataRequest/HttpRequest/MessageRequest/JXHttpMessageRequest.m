//
//  JXHttpMessageRequest.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXHttpMessageRequest.h"

@implementation JXHttpMessageRequest

- (void)messageGetRequestWithUrlPath:(NSString *)urlPath parameter:(NSDictionary *)param success:(void(^)(id responObject))success failure:(void(^)(NSError *error))failure{
    
    [self GET:urlPath parameters:param progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}


@end

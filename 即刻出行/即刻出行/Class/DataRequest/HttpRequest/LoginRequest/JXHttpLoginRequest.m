//
//  JXHttpLoginRequest.h
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXHttpLoginRequest.h"

@implementation JXHttpLoginRequest

- (void)loginPostRequestWithUrlPath:(NSString *)urlPath parameter:(NSDictionary *)param success:(void(^)(id responObject))success failure:(void(^)(NSError *error))failure{
    
    [self POST:urlPath parameters:param progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

@end

//
//  JXHttpRequest.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.

#import "JXHttpRequest.h"
#import "JXRequestUrlPath.h"

@implementation JXHttpRequest

- (instancetype)init{
    
    self = [super initWithBaseURL:[NSURL URLWithString:kBaseUrlPath]];
    
    return self;
}

@end

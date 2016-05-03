//
//  UIView+Frame.h
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

@property(nonatomic, assign, readwrite) CGFloat x;

@property(nonatomic, assign, readwrite) CGFloat y;

@property(nonatomic, assign, readwrite) CGFloat width;

@property(nonatomic, assign, readwrite) CGFloat height;

/**
 *  获取该模块尺寸的最右边的X
 *
 *  @param CGFloat 返回数据的类型
 *
 *  @return 获取该模块尺寸的最右边的X
 */
-(CGFloat)getFrame_right;

/**
 *  获取该模块尺寸的最下边的Y
 *
 *  @param CGFloat 返回数据的类型
 *
 *  @return 获取该模块尺寸的最下边的Y
 */
-(CGFloat)getFrame_Bottom;

@end

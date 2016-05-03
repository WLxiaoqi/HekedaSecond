//
//  UIView+Frame.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)


-(void)setX:(CGFloat)x{
    
    CGRect frame=self.frame;
    frame.origin.x=x;
    self.frame=frame;
    
}

-(void)setY:(CGFloat)y{
    
    CGRect frame=self.frame;
    frame.origin.y=y;
    self.frame=frame;
    
}


-(void)setWidth:(CGFloat)width{
    
    CGRect frame=self.frame;
    frame.size.width=width;
    self.frame=frame;
}

-(void)setHeight:(CGFloat)height{
    
    CGRect frame=self.frame;
    frame.size.height=height;
    self.frame=frame;
    
}

-(CGFloat)x{
    return self.frame.origin.x;
}

-(CGFloat)y{
    return self.frame.origin.y;
}

-(CGFloat)width{
    return self.frame.size.width;
}

-(CGFloat)height{
    return self.frame.size.height;
}

-(CGFloat)getFrame_right
{
    return self.frame.origin.x + self.frame.size.width;
}

-(CGFloat)getFrame_Bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

@end

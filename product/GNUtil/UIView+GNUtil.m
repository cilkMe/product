//
//  UIView+GNUtil.m
//  product
//
//  Created by Admin on 2018/8/30.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "UIView+GNUtil.h"

@implementation UIView (GNUtil)
-(void)setX:(CGFloat)x {
    CGRect r = self.frame;
    r.origin.x = x;
    self.frame = r;
}
-(void)setY:(CGFloat)y {
    CGRect r = self.frame;
    r.origin.y = y;
    self.frame = r;
}
-(void)setF_width:(CGFloat)width {
    CGRect r = self.frame;
    r.size.width = width;
    self.frame = r;
}
-(void)setF_height:(CGFloat)height {
    CGRect r = self.frame;
    r.size.height = height;
    self.frame = r;
}

-(CGFloat)f_right {
    return self.x + self.f_width;
}

-(CGFloat)f_bottom {
    return self.y + self.f_height;
}

-(CGFloat)x {
    return self.frame.origin.x;
}
-(CGFloat)y {
    return self.frame.origin.y;
}
-(CGFloat)f_width {
    return self.frame.size.width;
}
-(CGFloat)f_height {
    return self.frame.size.height;
}

@end

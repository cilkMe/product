//
//  UIView+GNUtil.h
//  product
//
//  Created by Admin on 2018/8/30.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GNUtil)
@property(nonatomic)CGFloat x;
@property(nonatomic)CGFloat y;
@property(nonatomic)CGFloat f_width;
@property(nonatomic)CGFloat f_height;
@property(nonatomic,readonly)CGFloat f_right;
@property(nonatomic,readonly)CGFloat f_bottom;
@end

//
//  UIButton+GNUtil.h
//  product
//
//  Created by Admin on 2018/8/30.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (GNUtil)
- (void)verticalImageAndTitle:(CGFloat)spacing;
// 图片在下文字在上
- (void)verticalTitleTopAndImageDown:(CGFloat)spacing;
// 图片在右文字在左
- (void)horizontalTitleLeftAndImageRight:(CGFloat)spacing;
@end

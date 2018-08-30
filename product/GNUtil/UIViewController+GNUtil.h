//
//  UIViewController+GNUtil.h
//  MarketEleven
//
//  Created by Bergren Lam on 8/7/14.
//  Copyright (c) 2014 Meinekechina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (GNUtil)

+ (UIViewController *)viewControllerWithStoryboard:(NSString *)storyboard identifier:(NSString *)identify;
+ (UIViewController *)currentViewController;
@end

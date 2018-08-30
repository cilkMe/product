//
//  UIViewController+GNUtil.m
//  MarketEleven
//
//  Created by Bergren Lam on 8/7/14.
//  Copyright (c) 2014 Meinekechina. All rights reserved.
//

#import "UIViewController+GNUtil.h"


@implementation UIViewController (GNUtil)

+ (UIViewController *)viewControllerWithStoryboard:(NSString *)storyboard identifier:(NSString *)identify
{
    NSString *name = storyboard;
    if (!name) name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIMainStoryboardFile"];
    
    if (!name) name = @"MainStoryboard";
    
    UIStoryboard *stryBoard=[UIStoryboard storyboardWithName:name bundle:nil];
    return  [stryBoard instantiateViewControllerWithIdentifier:identify];
}

+ (UIViewController *)currentViewController{
    UIViewController *VC = keyWindows.rootViewController;
    if ([VC isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)VC;
        UINavigationController *nav = (UINavigationController *)tabBarController.selectedViewController;
        UIViewController * baseVC = (UIViewController *)nav.visibleViewController;
        return baseVC;
    } else{
        return VC;
    }
}
@end

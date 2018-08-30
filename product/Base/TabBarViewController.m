//
//  TabBarViewController.m
//  product
//
//  Created by Admin on 2018/8/30.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"white"]];

    UIViewController *home = [[UIViewController alloc] init];
    home.view.backgroundColor = [UIColor orangeColor];
    
    [self addChildViewController:home title:@"首页" image:@"" imageSlected:@""];
    UIViewController *other = [[UIViewController alloc] init];
    other.view.backgroundColor = [UIColor purpleColor];
    [self addChildViewController:other title:@"首页" image:@"" imageSlected:@""];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)addChildViewController:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image imageSlected:(NSString *)imageSelected{
    childVc.tabBarItem.title = title;
    UIImage *IM =  [UIImage imageNamed:image];
    IM = [IM imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.image = IM;
    UIImage *img = [UIImage imageNamed:imageSelected];
    img = [img imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = img;
    NSMutableDictionary *dictNormal = [NSMutableDictionary dictionary];
    dictNormal[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    dictNormal[NSForegroundColorAttributeName] = [UIColor colorWithHexString:@"#3A3C49"];
    [childVc.tabBarItem setTitleTextAttributes:dictNormal forState:UIControlStateNormal];
    NSMutableDictionary *dictSelected = [NSMutableDictionary dictionary];
    dictSelected[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    dictSelected[NSForegroundColorAttributeName] = [UIColor colorWithHexString:@"#FF593C"];
    [childVc.tabBarItem setTitleTextAttributes:dictSelected forState:UIControlStateSelected];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:childVc];
    nav.navigationBar.barTintColor = [UIColor colorWithHexString:@"#2d2d2d"];
    //    nav.navigationBar.barTintColor = [UIColor whiteColor];
    [self addChildViewController:nav];
}

@end

//
//  UIViewController+GetInstanceTypeByXibORStoryboard.m
//  DMFunctionalUnitDemo
//
//  Created by 李二狗 on 2017/7/19.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#define __MainBundle   [NSBundle mainBundle]

#import "UIViewController+GetInstanceTypeByXibORStoryboard.h"

@implementation UIViewController (GetInstanceTypeByXibORStoryboard)

+ (NSString *)storyboardID
{
    return NSStringFromClass([self class]);
}

+ (instancetype)controllerInstanceFromStoryboardWithName:(NSString *)aStoryboardName
{
    return [[UIStoryboard storyboardWithName:aStoryboardName bundle:__MainBundle] instantiateViewControllerWithIdentifier:[self storyboardID]];
}

/**
 *  获取当前window中的最顶层ViewController
 *
 */
+ (UIViewController *)DMBase_topViewController{
    return [self DMBase_topViewController:[UIApplication sharedApplication].keyWindow.rootViewController];
}
+ (UIViewController *)DMBase_topViewControllerWithWindow:(UIWindow *)window {
    return [self DMBase_topViewController:window? window.rootViewController : [UIApplication sharedApplication].keyWindow.rootViewController];
}
+ (UIViewController *)DMBase_topViewController:(UIViewController *)rootViewController
{
    
    if (rootViewController.presentedViewController) {
        return [self DMBase_topViewController:rootViewController.presentedViewController];
    }
    
    if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)rootViewController;
        return [self DMBase_topViewController:[navigationController.viewControllers lastObject]];
    }
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabController = (UITabBarController *)rootViewController;
        return [self DMBase_topViewController:tabController.selectedViewController];
    }
    return rootViewController;
}

@end

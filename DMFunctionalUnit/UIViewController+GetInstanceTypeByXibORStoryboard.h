//
//  UIViewController+GetInstanceTypeByXibORStoryboard.h
//  DMFunctionalUnitDemo
//
//  Created by 李二狗 on 2017/7/19.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (GetInstanceTypeByXibORStoryboard)

+ (NSString *)storyboardID;
+ (instancetype)controllerInstanceFromStoryboardWithName:(NSString *)aStoryboardName;
+ (UIViewController *)DMBase_topViewControllerWithWindow:(UIWindow *)window;

/**
 *  获取最顶层的viewController
 *
 */
+ (UIViewController *)DMBase_topViewController;

@end
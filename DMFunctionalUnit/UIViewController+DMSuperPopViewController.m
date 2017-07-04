//
//  UIViewController+DMSuperPopViewController.m
//  DMFunctionalUnitDemo
//
//  Created by 李二狗 on 2017/7/4.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "UIViewController+DMSuperPopViewController.h"

@implementation UIViewController (DMSuperPopViewController)

- (BOOL)dm_superPopToViewControllerClass:(Class)aClass animated:(BOOL)animated
{
    if (!self.navigationController) {
        return NO;
    }
    NSArray *viewControllers = self.navigationController.viewControllers;
    for (int i = (int)viewControllers.count-1; i >= 0; i--) {
        UIViewController *controller = viewControllers[i];
        if ([controller isKindOfClass:aClass]) {
            [self.navigationController popToViewController:controller animated:animated];
            return YES;
        }
    }
    return NO;
}

- (BOOL)dm_removeMidStackControllsToViewControllerClass:(Class)aClass
{
    if (!self.navigationController) {
        return NO;
    }
    NSMutableArray *viewControllers = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    for (int i = (int)viewControllers.count-2; i >= 0; i--) {
        UIViewController *controller = viewControllers[i];
        if ([controller isKindOfClass:aClass]) {
            self.navigationController.viewControllers = viewControllers;
            return YES;
        } else {
            [viewControllers removeObject:controller];
        }
    }
    return NO;
}
@end

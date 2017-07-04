//
//  UIViewController+DMSuperPopViewController.h
//  DMFunctionalUnitDemo
//
//  Created by 李二狗 on 2017/7/4.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (DMSuperPopViewController)


/**
 回退到targetController。如果当前堆栈存在多个，则只返回最靠近顶层堆栈的那个。如果不是堆栈，无效操作
 当前页面需要禁用侧滑手势
 @param aClass 越级跳转到目标控制器
 @param animated pop动画
 @return 是否正确执行
 */
- (BOOL)dm_superPopToViewControllerClass:(Class)aClass animated:(BOOL)animated;



/**
 移除到 aClass，越级回跳 移除中间的 vc、 aClass 是target vc
 在 viewDidAppear 中调用。
 处理跳转到当前controller之后，移除堆栈下面到 aClass 之前的所有控制器。便于回退
 
 @param aClass 移除控制器的终点控制器（此控制器不移除）
 @return 操作成功
 */
- (BOOL)dm_removeMidStackControllsToViewControllerClass:(Class)aClass;


@end

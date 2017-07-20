//
//  DMNavigationBarConfig.h
//  DMFunctionalUnitDemo
//
//  Created by 李二狗 on 2017/7/20.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DMNavigationBarConfig : NSObject

+(void)setDefaultBackButtonImage:(UIImage *)backButtonImage navBarBackgroundImage:(UIImage *)backgroundImage defaultTitleTextAttributes:(NSDictionary<NSString *,id> *)titleTextAttributes;

+ (UIImage *)defaultBackButtonImage;

+ (UIImage *)navBarBackgroundImage;

+(NSDictionary<NSString *,id> *)defaultTitleTextAttributes;


+(void)setDefaultBackButtonImage:(UIImage *)backButtonImage navBarBackgroundColors:(NSArray<UIColor *> *)navBarColors defaultTitleTextAttributes:(NSDictionary<NSString *,id> *)titleTextAttributes;

+ (NSArray<NSString *> *)navBarBackgroundColors;
@end

//
//  DMNavigationBarConfig.m
//  DMFunctionalUnitDemo
//
//  Created by 李二狗 on 2017/7/20.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "DMNavigationBarConfig.h"
#import "UIColor+dm_color.h"
#import "UIImage+dm_image.h"

#define kScreenWidth  [[UIScreen mainScreen] bounds].size.width

static UIImage *defaultBackButtonImage;
static UIImage *navBarBackgroundImage;
static NSDictionary<NSString *,id> *defaultTitleTextAttributes;
static NSArray<UIColor *> *navBarBackgroundColors;

@implementation DMNavigationBarConfig


+(void)setDefaultBackButtonImage:(UIImage *)backButtonImage navBarBackgroundColors:(NSArray<NSString *> *)navBarColors defaultTitleTextAttributes:(NSDictionary<NSString *,id> *)titleTextAttributes
{
    navBarBackgroundColors = navBarColors?navBarColors:@[];
    UIImage *backgroundImage = [UIImage dm_getImageFromColors:navBarBackgroundColors withFrame:CGRectMake(0, 0,kScreenWidth,64)];
    [DMNavigationBarConfig setDefaultBackButtonImage:backButtonImage navBarBackgroundImage:backgroundImage defaultTitleTextAttributes:titleTextAttributes];
}


+(void)setDefaultBackButtonImage:(UIImage *)backButtonImage navBarBackgroundImage:(UIImage *)backgroundImage defaultTitleTextAttributes:(NSDictionary<NSString *,id> *)titleTextAttributes
{

    defaultBackButtonImage = backButtonImage?backButtonImage:nil;
    navBarBackgroundImage = backgroundImage?backgroundImage:nil;
    defaultTitleTextAttributes = titleTextAttributes?[titleTextAttributes copy]:nil;
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:navBarBackgroundImage forBarMetrics:UIBarMetricsDefault];
    [navBar setTitleTextAttributes:titleTextAttributes];

    UIBarButtonItem *barButtonItem = [UIBarButtonItem appearance];
    [barButtonItem
     setBackButtonBackgroundImage:[backButtonImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, backButtonImage.size.width, 0, 0)
                                                        resizingMode:UIImageResizingModeStretch]
     forState:UIControlStateNormal
     barMetrics:UIBarMetricsDefault];
    [barButtonItem setBackButtonTitlePositionAdjustment:UIOffsetMake(-1000, -100)
                                                         forBarMetrics:UIBarMetricsDefault];
}

+ (UIImage *)defaultBackButtonImage
{
    return defaultBackButtonImage;
}

+ (UIImage *)navBarBackgroundImage{
    return navBarBackgroundImage;
}

+(NSDictionary<NSString *,id> *)defaultTitleTextAttributes
{
    return defaultTitleTextAttributes;
}
+ (NSArray<UIColor *> *)navBarBackgroundColors
{
    return navBarBackgroundColors;
}

@end

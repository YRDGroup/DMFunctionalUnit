//
//  UIColor+dm_color.h
//  DMContactStoreDemo
//
//  Created by 李二狗 on 2017/7/3.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (dm_color)

//颜色生成相关

+ (UIColor*)dm_colorWithHex:(NSInteger)hexValue;

+ (UIColor*)dm_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

+ (UIColor*)dm_colorWithHexString:(NSString *)hexStr;

+ (UIColor*)dm_colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alphaValue;


//随机颜色
+ (UIColor *)dm_randomColor;


@end

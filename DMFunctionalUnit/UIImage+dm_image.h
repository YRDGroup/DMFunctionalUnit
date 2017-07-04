//
//  UIImage+dm_image.h
//  DMContactStoreDemo
//
//  Created by 李二狗 on 2017/7/3.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (dm_image)

/**
 //颜色生成图片

 @param color 图片颜色
 @return 结果图片
 */
+ (UIImage *)dm_imageWithColor:(UIColor *)color;


/**
 颜色数组生成渐变色

 @param colors 颜色数组，如果为1种，则为纯色
 @param frame 图片大小
 @return 结果图片
 */
+ (UIImage*)dm_getImageFromColors:(NSArray*)colors withFrame:(CGRect)frame;

@end

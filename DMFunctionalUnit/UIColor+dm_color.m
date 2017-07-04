//
//  UIColor+dm_color.m
//  DMContactStoreDemo
//
//  Created by 李二狗 on 2017/7/3.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "UIColor+dm_color.h"

@implementation UIColor (dm_color)

+ (UIColor*)dm_colorWithHex:(NSInteger)hexValue
{
    return [UIColor dm_colorWithHex:hexValue alpha:1.0];
}

+ (UIColor*)dm_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue
{
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0 alpha:alphaValue];
}


+ (UIColor*)dm_colorWithHexString:(NSString *)hexStr {
    @autoreleasepool {
        NSString *cleanString_1 =
        [hexStr stringByReplacingOccurrencesOfString:@"#" withString:@""];
        NSString *cleanString =
        [cleanString_1 stringByReplacingOccurrencesOfString:@"0x"
                                                 withString:@""];
        if ([cleanString length] == 3) {
            cleanString = [NSString
                           stringWithFormat:@"%@%@%@%@%@%@",
                           [cleanString substringWithRange:NSMakeRange(0, 1)],
                           [cleanString substringWithRange:NSMakeRange(0, 1)],
                           [cleanString substringWithRange:NSMakeRange(1, 1)],
                           [cleanString substringWithRange:NSMakeRange(1, 1)],
                           [cleanString substringWithRange:NSMakeRange(2, 1)],
                           [cleanString substringWithRange:NSMakeRange(2, 1)]];
        }
        if ([cleanString length] == 6) {
            cleanString = [cleanString stringByAppendingString:@"ff"];
        }
        
        unsigned int baseValue;
        [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
        
        float red = ((baseValue >> 24) & 0xFF) / 255.0f;
        float green = ((baseValue >> 16) & 0xFF) / 255.0f;
        float blue = ((baseValue >> 8) & 0xFF) / 255.0f;
        float alpha = ((baseValue >> 0) & 0xFF) / 255.0f;
        
        return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    }
}

+ (UIColor*)dm_colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alphaValue {
    @autoreleasepool {
        NSString *cleanString_1 =
        [hexStr stringByReplacingOccurrencesOfString:@"#" withString:@""];
        NSString *cleanString =
        [cleanString_1 stringByReplacingOccurrencesOfString:@"0x"
                                                 withString:@""];
        if ([cleanString length] == 3) {
            cleanString = [NSString
                           stringWithFormat:@"%@%@%@%@%@%@",
                           [cleanString substringWithRange:NSMakeRange(0, 1)],
                           [cleanString substringWithRange:NSMakeRange(0, 1)],
                           [cleanString substringWithRange:NSMakeRange(1, 1)],
                           [cleanString substringWithRange:NSMakeRange(1, 1)],
                           [cleanString substringWithRange:NSMakeRange(2, 1)],
                           [cleanString substringWithRange:NSMakeRange(2, 1)]];
        }
        if ([cleanString length] == 6) {
            cleanString = [cleanString stringByAppendingString:@"ff"];
        }
        
        unsigned int baseValue;
        [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
        
        float red = ((baseValue >> 24) & 0xFF) / 255.0f;
        float green = ((baseValue >> 16) & 0xFF) / 255.0f;
        float blue = ((baseValue >> 8) & 0xFF) / 255.0f;
        float alpha1 = ((baseValue >> 0) & 0xFF) / 255.0f;
        
        UIColor *color =
        [UIColor colorWithRed:red green:green blue:blue alpha:alpha1];
        color = [color colorWithAlphaComponent:alphaValue];
        
        return color;
    }
}


+ (UIColor *)dm_randomColor {
    CGFloat hue = (arc4random() % 256 / 256.0); // 0.0 to 1.0
    CGFloat saturation =
    (arc4random() % 128 / 256.0) + 0.5; // 0.5 to 1.0,away from white
    CGFloat brightness =
    (arc4random() % 128 / 256.0) + 0.5; // 0.5 to 1.0,away from black
    return [UIColor colorWithHue:hue
                      saturation:saturation
                      brightness:brightness
                           alpha:1];
}


@end

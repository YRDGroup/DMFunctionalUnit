//
//  ViewController.m
//  DMFunctionalUnitDemo
//
//  Created by 李二狗 on 2017/7/4.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+dm_color.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"的哥";
    
    
    self.view.backgroundColor = [UIColor dm_randomColor];
    // Do any additional setup after loading the view, typically from a nib.
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

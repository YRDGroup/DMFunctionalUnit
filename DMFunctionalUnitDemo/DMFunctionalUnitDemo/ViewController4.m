//
//  ViewController4.m
//  DMFunctionalUnitDemo
//
//  Created by 李二狗 on 2017/7/4.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "ViewController4.h"
#import "UIViewController+DMSuperPopViewController.h"

@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
 
}


- (IBAction)removeAndPop:(id)sender {
    
    BOOL success = [self dm_removeMidStackControllsToViewControllerClass:NSClassFromString(@"ViewController")];
    NSLog(@"dm_removeMidStackControllsToViewControllerClass结果：%d",success);
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)superpop:(id)sender {
    
    [self dm_superPopToViewControllerClass:NSClassFromString(@"ViewController") animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

# DMFunctionalUnit
拆分各种功能组件，便于复用和梳理

##生成渐变色图片
```objective-c
    UINavigationBar *navBar = [UINavigationBar appearance];
    // 1.2.设置导航栏背景
    UIColor *firstColor = [UIColor dm_colorWithHex:0x369aff];
    UIColor *lastColor = [UIColor dm_colorWithHex:0x39d7fc];
    [navBar setBackgroundImage:[UIImage dm_getImageFromColors:@[firstColor,lastColor] withFrame:CGRectMake(0, 0,kScreenWidth,64)] forBarMetrics:UIBarMetricsDefault];
    // 1.3.设置导航栏的文字
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
```

## 超级回跳

### 移除底部堆栈式回跳
```objective-c
- (IBAction)removeAndPop:(id)sender {
    
    BOOL success = [self dm_removeMidStackControllsToViewControllerClass:NSClassFromString(@"ViewController")];
    NSLog(@"dm_removeMidStackControllsToViewControllerClass结果：%d",success);
    
    [self.navigationController popViewControllerAnimated:YES];
}
```

### 直接pop到目标控制器
```objective-c
- (IBAction)superpop:(id)sender {
    
    [self dm_superPopToViewControllerClass:NSClassFromString(@"ViewController") animated:YES];
}
```

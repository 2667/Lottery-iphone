//
//  DZNavigationController.m
//  Lottery
//
//  Created by dengwei on 15/9/28.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZNavigationController.h"

@interface DZNavigationController ()

@end

@implementation DZNavigationController

#pragma mark 一个类只会调用一次
+(void)initialize
{
    //1.取出设置主题对象
    UINavigationBar *navBar = [UINavigationBar appearance];
    UIBarButtonItem *barItem = [UIBarButtonItem appearance];
    //2.设置导航栏背景图片
    NSString *navBarBg = nil;
    if(iOS7)
    {
        navBarBg = @"NavBar64";
        //设置导航栏的渐变颜色(白色)(iOS7+中的返回键为白色)
        navBar.tintColor = [UIColor whiteColor];
    }
    else{
        navBarBg = @"NavBar";
        //状态栏变黑色
        [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleBlackOpaque;
        //设置导航栏按钮的背景图片
        [barItem setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [barItem setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
        //设置导航栏返回按钮的背景图片
        [barItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [barItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    }
    [navBar setBackgroundImage:[UIImage imageNamed:navBarBg] forBarMetrics:UIBarMetricsDefault];
    
    //3.设置导航栏标题颜色(白色)
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    //4.设置导航栏按钮文字颜色(白色)
    [barItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],
                                      UITextAttributeFont:[UIFont systemFontOfSize:13.0]} forState:UIControlStateNormal];
}

#pragma mark 状态栏样式设置
//iOS7之前:UIApplication
//自iOS7起,状态栏的管理交给对应控制器去管理
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

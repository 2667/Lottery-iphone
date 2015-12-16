//
//  DZTabBarController.m
//  Lottery
//
//  Created by dengwei on 15/9/27.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZTabBarController.h"
#import "DZTabBar.h"
#import "UINavigationItem+DZ.h"

@interface DZTabBarController ()<DZTabBarDelegate>

@end

@implementation DZTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //代表不要往四周展开
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    //让所有的子控制器都不能展开
    for (UIViewController *vc in self.childViewControllers) {
        vc.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //1.删除整个tabbar
        [self.tabBar removeFromSuperview];
//        //删除默认的tab按钮
//        for (UIView *btn in self.tabBar.subviews) {
//            //DZLog(@"%@", btn.superclass);
//            [btn removeFromSuperview];
//        }
        //2.创建tabbar
        DZTabBar *myTabBar = [[DZTabBar alloc] init];
        myTabBar.frame = self.tabBar.frame;
        myTabBar.delegate = self;
        [self.view addSubview:myTabBar];
//        //设置tabbar的背景
//        self.tabBar.backgroundImage = [UIImage imageNamed:@"TabBarBack"];
        //3.添加5个按钮
        for (int i = 0; i < 5; i++) {
            NSString *normal = [NSString stringWithFormat:@"TabBar%d", i + 1];
            NSString *selected = [NSString stringWithFormat:@"TabBar%dSel", i + 1];
            [myTabBar addTabBarButton:normal selIcon:selected];
        }
        
    });
    
}

#pragma mark DZTabBarDelegate method
-(void)tabBar:(DZTabBar *)tabBar didSelectButtonFrom:(NSUInteger)form to:(NSUInteger)to
{
    //1.根据位置选中某个控制器(这个是UITabBarController自带的API)
    self.selectedIndex = to;
    //2.将新的控制器的navigationItem值转移给TabBarController
    UIViewController *newVc = self.childViewControllers[to];
    [self.navigationItem copyFromItem:newVc.navigationItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

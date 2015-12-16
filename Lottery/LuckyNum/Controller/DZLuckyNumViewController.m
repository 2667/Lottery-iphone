//
//  DZLuckyNumViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/27.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZLuckyNumViewController.h"
#import "DZThreeButton.h"
#import "DZCircleView.h"

@interface DZLuckyNumViewController ()<DZCircleViewDelegate>
{
    DZThreeButton *_threeBtn;
    DZCircleView *_circle;
}

@end

@implementation DZLuckyNumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //添加全屏背景
    [self setupBg];
    
    //添加3个选择按钮
    [self setupThreeBtn];
    
    //添加转盘
    [self setupCircle];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [_circle startRotate];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [_circle pauseRotate];
}

#pragma mark 添加一个转盘
-(void)setupCircle
{
    DZCircleView *circle = [DZCircleView circleView];
    CGFloat x = _threeBtn.center.x;
    CGFloat y = CGRectGetMaxY(_threeBtn.frame) + circle.frame.size.height * 0.5;
    circle.center = CGPointMake(x, y);
    circle.delegate = self;
    //设置圆盘上显示星座还是生肖
    circle.circleType = DZCircleViewTypeAstrology;
    [self.view addSubview:circle];
    _circle = circle;
    
}

#pragma mark 添加一个全屏的背景
-(void)setupBg
{
    UIImageView *bg = [[UIImageView alloc] initWithFrame:self.view.bounds];
    NSString *image = is4inch ? @"LuckyBackground-568h@2x.jpg" : @"LuckyBackground@2x.jpg";
    bg.image = [UIImage imageNamed:image];
    [self.view addSubview:bg];
}

#pragma mark 添加3个选择按钮
-(void)setupThreeBtn
{
    DZThreeButton *tb = [DZThreeButton threeButton];
    CGFloat x = self.view.frame.size.width * 0.5;
    CGFloat y = tb.frame.size.height * 0.5 + 20;
    tb.center = CGPointMake(x, y);
    [self.view addSubview:tb];
    _threeBtn = tb;
}

#pragma mark - 转盘代理方法
-(void)circleView:(DZCircleView *)circleView didRoateToIndex:(NSUInteger)index
{
    NSLog(@"快速转到哪个生肖/星座 %ld", index);
}

-(void)circleView:(DZCircleView *)circleView willRoateToIndex:(NSUInteger)index
{
    NSLog(@"将要转到哪个生肖/星座 %ld", index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

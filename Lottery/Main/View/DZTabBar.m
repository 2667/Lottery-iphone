//
//  DZTabBar.m
//  Lottery
//
//  Created by dengwei on 15/9/27.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZTabBar.h"
#import "DZTabBarButton.h"

@interface DZTabBar ()
{
    DZTabBarButton *_selectedButton;
}

@end

@implementation DZTabBar

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"TabBarBack"]];
    }
    return self;
}

#pragma mark 添加一个按钮
-(void)addTabBarButton:(NSString *)icon selIcon:(NSString *)selIcon
{
    //1.创建按钮
    DZTabBarButton *button = [DZTabBarButton buttonWithType:UIButtonTypeCustom];
    //2.设置背景
    [button setBackgroundImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:selIcon] forState:UIControlStateSelected];
    
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    
    //3.添加
    [self addSubview:button];
    //4.重新调整所有按钮的frame
    [self adjustButtonFrames];
    //设置button的tag
    button.tag = self.subviews.count - 1;
    //5.默认选中第0个按钮
    if (self.subviews.count == 1) {
        [self buttonClick:button];
    }
}

#pragma mark 监听按钮点击
-(void)buttonClick:(DZTabBarButton *)button
{
    //1.通知代理
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectButtonFrom:to:)]) {
        [self.delegate tabBar:self didSelectButtonFrom:_selectedButton.tag to:button.tag];
    }
    //2.切换按钮状态
    _selectedButton.selected = NO;
    button.selected = YES;
    _selectedButton = button;
}

#pragma mark 调整所有按钮的frame
-(void)adjustButtonFrames
{
    NSInteger btnCount = self.subviews.count;
    for (NSInteger i = 0; i < btnCount; i++) {
        DZTabBarButton *button = self.subviews[i];
        //设置frame
        CGFloat buttonW = self.frame.size.width / btnCount;
        CGFloat buttonY = 0;
        CGFloat buttonX = i * buttonW;
        CGFloat buttonH = self.frame.size.height;
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
    }
    
}

@end

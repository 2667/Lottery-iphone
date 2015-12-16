//
//  DZAwardAnimationViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/28.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZAwardAnimationViewController.h"

@interface DZAwardAnimationViewController ()

@end

@implementation DZAwardAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"中奖动画";
    
    [self add0SectionItems];
}

-(void)add0SectionItems
{
    DZSettingItemSwitch *animation = [DZSettingItemSwitch settingItemWithTitle:@"中奖动画"];
    animation.key = AwardAnimation;
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.header = @"当您有新中奖订单,启动程序时通过动画提醒您.为避免过于频繁,高频彩不会提醒.";
    group.items = @[animation];
    
    [_allGroups addObject:group];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

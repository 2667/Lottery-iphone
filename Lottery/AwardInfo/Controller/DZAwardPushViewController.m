//
//  DZAwardPushViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/28.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZAwardPushViewController.h"

@interface DZAwardPushViewController ()

@end

@implementation DZAwardPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"开奖推送";
    
    [self add0SectionItems];
}

-(void)add0SectionItems
{
    DZSettingItemSwitch *ball = [DZSettingItemSwitch settingItemWithTitle:@"双色球"];
    ball.key = AwardPushBall;
    
    DZSettingItemSwitch *letou = [DZSettingItemSwitch settingItemWithTitle:@"大乐透"];
    letou.key = AwardPushLetou;
    
    DZSettingItemSwitch *qile = [DZSettingItemSwitch settingItemWithTitle:@"七乐彩"];
    qile.key = AwardPushQile;
    
    DZSettingItemSwitch *qixing = [DZSettingItemSwitch settingItemWithTitle:@"七星彩"];
    qixing.key = AwardPushQixing;
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.header = @"打开设置即可在开奖后立即收到推送消息,获知开奖号码.";
    group.items = @[ball, letou, qile, qixing];
    
    [_allGroups addObject:group];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

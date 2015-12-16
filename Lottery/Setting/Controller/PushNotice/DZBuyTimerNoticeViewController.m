//
//  DZBuyTimerNoticeViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/28.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZBuyTimerNoticeViewController.h"

@interface DZBuyTimerNoticeViewController ()

@end

@implementation DZBuyTimerNoticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"购彩提醒";
    
    [self add0SectionItems];
}

-(void)add0SectionItems
{
    DZSettingItemSwitch *buy = [DZSettingItemSwitch settingItemWithTitle:@"打开提醒"];
    buy.key = DZSettingBuyTimedNotice;
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.header = @"您可以通过设置,提醒自己在开奖日不要错过购买彩票.";
    group.items = @[buy];
    
    [_allGroups addObject:group];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

//
//  DZPushNoticeViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/28.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZPushNoticeViewController.h"
#import "DZAwardPushViewController.h"
#import "DZAwardAnimationViewController.h"
#import "DZBuyTimerNoticeViewController.h"
#import "DZLiveNoticeViewController.h"

@interface DZPushNoticeViewController ()


@end

@implementation DZPushNoticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"推送和提醒";
    
    [self add0SectionItems];
}

-(void)add0SectionItems
{
    DZSettingItemArrow *luckyNum = [DZSettingItemArrow settingItemWithTitle:@"开奖号码推送"];
    luckyNum.showViewControllerClass = [DZAwardPushViewController class];
//    //copy状态下的block(堆里面的block),会对里面所使用的外界变量产生强引用
//    __weak DZPushNoticeViewController *pushNotice = self;
//    luckyNum.operation = ^{
//        DZAwardPushViewController *pushVc = [[DZAwardPushViewController alloc] init];
//        [pushNotice.navigationController pushViewController:pushVc animated:YES];
//    };

    DZSettingItemArrow *animation = [DZSettingItemArrow settingItemWithTitle:@"中奖动画"];
    animation.showViewControllerClass = [DZAwardAnimationViewController class];

    DZSettingItemArrow *live = [DZSettingItemArrow settingItemWithTitle:@"比分直播提醒"];
    live.showViewControllerClass = [DZLiveNoticeViewController class];
    
    DZSettingItemArrow *notice = [DZSettingItemArrow settingItemWithTitle:@"购彩定时提醒"];
    notice.showViewControllerClass = [DZBuyTimerNoticeViewController class];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];

    group.items = @[luckyNum, animation, live, notice];
    
    [_allGroups addObject:group];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

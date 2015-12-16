//
//  DZSettingViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/28.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZSettingViewController.h"
#import "DZPushNoticeViewController.h"
#import "DZShareViewController.h"
#import "DZAboutViewController.h"
#import "DZHelpViewController.h"
#import "DZProductsViewController.h"

@interface DZSettingViewController ()

@end

@implementation DZSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.第0组
    [self add0SectionItems];
    
    //2.第1组
    [self add1SectionItems];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
}

-(void)add0SectionItems
{
    //1.1推送和提醒
    DZSettingItemArrow *push = [DZSettingItemArrow settingItemWithIcon:@"MorePush" title:@"推送和提醒"];
    push.showViewControllerClass = [DZPushNoticeViewController class];
//    //copy状态下的block(堆里面的block),会对里面所使用的外界变量产生强引用
//    __weak DZSettingViewController *setting = self;
//    push.operation = ^{
//        DZPushNoticeViewController *pushVc = [[DZPushNoticeViewController alloc] init];
//        [setting.navigationController pushViewController:pushVc animated:YES];
//    };
    //1.2摇一摇机选
    DZSettingItemSwitch *shake = [DZSettingItemSwitch settingItemWithIcon:@"handShake" title:@"摇一摇机选"];
    shake.key = DZSettingHandShake;
    //1.3声音效果
    DZSettingItemSwitch *sound = [DZSettingItemSwitch settingItemWithIcon:@"sound_Effect" title:@"声音效果"];
    sound.key = DZSettingSoundEffect;
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[push, shake, sound];
    
    [_allGroups addObject:group];
}

-(void)add1SectionItems
{
    //2.1检查新版本
    DZSettingItemArrow *update = [DZSettingItemArrow settingItemWithIcon:@"MoreUpdate" title:@"检查新版本"];
    update.operation = ^{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"目前是最新版本" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil];
        [alert show];
    };
    //2.2帮助
    DZSettingItemArrow *help = [DZSettingItemArrow settingItemWithIcon:@"MoreHelp" title:@"帮助"];
    help.showViewControllerClass = [DZHelpViewController class];
    //2.3分享
    DZSettingItemArrow *share = [DZSettingItemArrow settingItemWithIcon:@"MoreShare" title:@"分享"];
    share.showViewControllerClass = [DZShareViewController class];
    //2.4查看消息
    DZSettingItemArrow *message = [DZSettingItemArrow settingItemWithIcon:@"MoreMessage" title:@"查看消息"];
    //2.5产品推荐
    DZSettingItemArrow *netease = [DZSettingItemArrow settingItemWithIcon:@"MoreNetease" title:@"产品推荐"];
    netease.showViewControllerClass = [DZProductsViewController class];
    //2.6关于
    DZSettingItemArrow *about = [DZSettingItemArrow settingItemWithIcon:@"MoreAbout" title:@"关于"];
    about.showViewControllerClass = [DZAboutViewController class];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[update, help, share, message, netease, about];
    
    [_allGroups addObject:group];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  DZShareViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZShareViewController.h"

@interface DZShareViewController ()

@end

@implementation DZShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"分享设置";
    
    [self add0SectionItems];
}

-(void)add0SectionItems
{
    DZSettingItemArrow *mail = [DZSettingItemArrow settingItemWithIcon:@"MailShare" title:@"邮件分享"];
    
    DZSettingItemArrow *sms = [DZSettingItemArrow settingItemWithIcon:@"SmsShare" title:@"短信分享"];
    
    DZSettingItemArrow *sina = [DZSettingItemArrow settingItemWithIcon:@"WeiboSina" title:@"新浪微博"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    
    group.items = @[sina, sms, mail];
    
    [_allGroups addObject:group];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

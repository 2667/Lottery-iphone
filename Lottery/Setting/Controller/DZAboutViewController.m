//
//  DZAboutViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZAboutViewController.h"
#import "DZAboutHeaderView.h"

@interface DZAboutViewController ()

@end

@implementation DZAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"关于";
    
    [self add0SectionItems];
    
    //设置表格头部控件
    self.tableView.tableHeaderView = [DZAboutHeaderView headerView];
    self.tableView.scrollEnabled = NO;
    
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];

}

-(void)add0SectionItems
{
    DZSettingItem *placeHolder = [DZSettingItem settingItemWithTitle:@""];
    
    DZSettingItemArrow *mark = [DZSettingItemArrow settingItemWithTitle:@"评分支持"];

    DZSettingItemArrow *phone = [DZSettingItemArrow settingItemWithTitle:@"客服电话"];
    phone.subtitle = @"020-83568090";
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[placeHolder,mark, phone];
    
    [_allGroups addObject:group];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

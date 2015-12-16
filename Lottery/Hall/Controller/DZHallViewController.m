//
//  DZHallViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/27.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZHallViewController.h"

int const cellH = 80;

@interface DZHallViewController ()

@end

@implementation DZHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
    self.tableView.showsVerticalScrollIndicator = NO;
    
    [self add0SectionItems];
    [self add1SectionItems];
    [self add2SectionItems];
    [self add3SectionItems];
    [self add4SectionItems];
    [self add5SectionItems];
    [self add6SectionItems];
    [self add7SectionItems];
    [self add8SectionItems];
    [self add9SectionItems];
    
}

-(void)add0SectionItems
{
    //双色球
    DZSettingItemArrow *ball = [DZSettingItemArrow settingItemWithIcon:@"LogoSSQ" title:@"双色球"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[ball];
    
    [_allGroups addObject:group];
    
}

-(void)add1SectionItems
{
    //新快3
    DZSettingItemArrow *kuai3 = [DZSettingItemArrow settingItemWithIcon:@"LogoK3" title:@"新快3"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[kuai3];
    
    [_allGroups addObject:group];
    
}

-(void)add2SectionItems
{
    //11选5
    DZSettingItemArrow *xuan5 = [DZSettingItemArrow settingItemWithIcon:@"LogoJXELE" title:@"11选5"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[xuan5];
    
    [_allGroups addObject:group];
    
}

-(void)add3SectionItems
{
    //竞彩足球
    DZSettingItemArrow *footBall = [DZSettingItemArrow settingItemWithIcon:@"LogoFootBallJC" title:@"竞彩足球"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[footBall];
    
    [_allGroups addObject:group];
    
}

-(void)add4SectionItems
{
    //大乐透
    DZSettingItemArrow *letou = [DZSettingItemArrow settingItemWithIcon:@"LogoDLT" title:@"大乐透"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[letou];
    
    [_allGroups addObject:group];
    
}

-(void)add5SectionItems
{
    //竞彩篮球
    DZSettingItemArrow *basketBall = [DZSettingItemArrow settingItemWithIcon:@"LogoLanQiuJC" title:@"竞彩篮球"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[basketBall];
    
    [_allGroups addObject:group];
    
}

-(void)add6SectionItems
{
    //胜负彩
    DZSettingItemArrow *win = [DZSettingItemArrow settingItemWithIcon:@"LogoSFC" title:@"胜负彩"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[win];
    
    [_allGroups addObject:group];
    
}

-(void)add7SectionItems
{
    //时时彩
    DZSettingItemArrow *timecai = [DZSettingItemArrow settingItemWithIcon:@"LogoSSC" title:@"时时彩"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[timecai];
    
    [_allGroups addObject:group];
    
}

-(void)add8SectionItems
{
    //七星彩
    DZSettingItemArrow *qixing = [DZSettingItemArrow settingItemWithIcon:@"LogoQXC" title:@"七星彩"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[qixing];
    
    [_allGroups addObject:group];
    
}

-(void)add9SectionItems
{
    //七乐彩
    DZSettingItemArrow *qile = [DZSettingItemArrow settingItemWithIcon:@"LogoQLC" title:@"七乐彩"];
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[qile];
    
    [_allGroups addObject:group];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return cellH;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

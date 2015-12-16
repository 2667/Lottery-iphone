//
//  DZHelpViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZHelpViewController.h"
#import "DZWebViewController.h"
#import "DZWebPage.h"
#import "DZNavigationController.h"

@interface DZHelpViewController ()
{
    NSMutableArray *_webPages;
}

@end

@implementation DZHelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"帮助";
    
    [self loadJSON];
    
    self.tableView.showsVerticalScrollIndicator = NO;
}

#pragma mark 加载JSON
-(void)loadJSON
{
    //加载JSON
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"help" withExtension:@"json"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    //遍历数组
    NSMutableArray *items = [NSMutableArray array];
    _webPages = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        //创建网页模型
        DZWebPage *webPage = [DZWebPage webPageWithDict:dict];
        [_webPages addObject:webPage];
        //每一行cell对应的item
        DZSettingItemArrow *arrow = [DZSettingItemArrow settingItemWithTitle:webPage.title];
        [items addObject:arrow];
    }
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = items;
    [_allGroups addObject:group];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1.取消选中
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //2.跳到web界面
    DZWebViewController *webVc = [[DZWebViewController alloc] init];
    //设置模型数据
    webVc.webPage = _webPages[indexPath.row];
    
    DZNavigationController *nav = [[DZNavigationController alloc] initWithRootViewController:webVc];
    
    //模态方式
    [self presentViewController:nav animated:YES completion:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

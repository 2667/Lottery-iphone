//
//  DZLiveViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/28.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZLiveNoticeViewController.h"

@interface DZLiveNoticeViewController ()
{
    DZSettingItemLabel *_startTime;
    DZSettingItemLabel *_endTime;
    UITextField *_textKey;
}

@end

@implementation DZLiveNoticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"比分直播";
    
    [self add0SectionItems];
    
    [self add1SectionItems];
    
    [self add2SectionItems];
}

-(void)add0SectionItems
{
    DZSettingItemSwitch *lookup = [DZSettingItemSwitch settingItemWithTitle:@"提醒我关注的比赛"];
    lookup.key = DZLiveNoticeCareGame;
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.footer = @"当我关注的比赛比分发生变化时,通过小弹窗或推送进行提醒.";
    group.items = @[lookup];
    
    [_allGroups addObject:group];
}

-(void)add1SectionItems
{
    DZSettingItemLabel *startTime = [DZSettingItemLabel settingItemWithTitle:@"开始时间"];
    startTime.key = DZLiveNoticeStartTime;
    if (startTime.text.length == 0) {
        startTime.text = @"00:00";
    }
    //__weak
    __unsafe_unretained DZLiveNoticeViewController *liveVc = self;
    startTime.operation = ^{
        //默认时间(系统当前时间)
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"HH:mm";
        NSDate *date = [NSDate date];
        NSString *dateStr = [fmt stringFromDate:date];
        date = [fmt dateFromString:dateStr];
        
        //键盘
        UIDatePicker *datePicker = [[UIDatePicker alloc] init];
        datePicker.date = date;
        [datePicker addTarget:liveVc action:@selector(startTimeChange:) forControlEvents:UIControlEventValueChanged];
        datePicker.datePickerMode = UIDatePickerModeTime;
        datePicker.backgroundColor = [UIColor whiteColor];
        //文本框
        UITextField *tmp = [[UITextField alloc] init];
        tmp.inputView = datePicker;
        //添加
        [liveVc.view addSubview:tmp];
        //叫出键盘
        [tmp becomeFirstResponder];
        _textKey = tmp;
    };
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.header = @"只在以下时间接收比分直播";
    group.items = @[startTime];
    
    [_allGroups addObject:group];
    _startTime = startTime;
}

-(void)add2SectionItems
{
    DZSettingItemLabel *endTime = [DZSettingItemLabel settingItemWithTitle:@"结束时间"];
    endTime.key = DZLiveNoticeEndTime;
    if (endTime.text.length == 0) {
        endTime.text = @"23:59";
    }
    //__weak
    __unsafe_unretained DZLiveNoticeViewController *liveVc = self;
    endTime.operation = ^{
        //默认时间(系统当前时间)
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"HH:mm";
        NSDate *date = [NSDate date];
        NSString *dateStr = [fmt stringFromDate:date];
        date = [fmt dateFromString:dateStr];
        
        //键盘
        UIDatePicker *datePicker = [[UIDatePicker alloc] init];
        datePicker.date = date;
        [datePicker addTarget:liveVc action:@selector(endTimeChange:) forControlEvents:UIControlEventValueChanged];
        datePicker.datePickerMode = UIDatePickerModeTime;
        datePicker.backgroundColor = [UIColor whiteColor];
        //文本框
        UITextField *tmp = [[UITextField alloc] init];
        tmp.inputView = datePicker;
        //添加
        [liveVc.view addSubview:tmp];
        //叫出键盘
        [tmp becomeFirstResponder];
        _textKey = tmp;
    };
    
    DZSettingGroup *group = [[DZSettingGroup alloc] init];
    group.items = @[endTime];
    
    [_allGroups addObject:group];
    _endTime = endTime;
}

#pragma mark 开始时间设置
-(void)startTimeChange:(UIDatePicker *)datePicker
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"HH:mm";
    
    //设置模型
    _startTime.text = [fmt stringFromDate:datePicker.date];
    //刷新表格
    [self.tableView reloadData];
}

#pragma mark 结束时间设置
-(void)endTimeChange:(UIDatePicker *)datePicker
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"HH:mm";
    
    //设置模型
    _endTime.text = [fmt stringFromDate:datePicker.date];
    //刷新表格
    [self.tableView reloadData];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [_textKey resignFirstResponder];
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

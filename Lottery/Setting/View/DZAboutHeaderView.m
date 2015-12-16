//
//  DZAboutHeaderView.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZAboutHeaderView.h"

@implementation DZAboutHeaderView

+(instancetype)headerView
{
    return [[[NSBundle mainBundle] loadNibNamed:@"DZAboutHeaderView" owner:nil options:nil] lastObject];
}

@end

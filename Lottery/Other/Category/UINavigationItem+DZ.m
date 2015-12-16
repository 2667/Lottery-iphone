//
//  UINavigationItem+DZ.m
//  Lottery
//
//  Created by dengwei on 15/9/28.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "UINavigationItem+DZ.h"

@implementation UINavigationItem (DZ)

-(void)copyFromItem:(UINavigationItem *)other
{
    self.leftBarButtonItem = other.leftBarButtonItem;
    self.leftBarButtonItems = other.leftBarButtonItems;
    self.rightBarButtonItem = other.rightBarButtonItem;
    self.rightBarButtonItems = other.rightBarButtonItems;
    self.titleView = other.titleView;
    self.title = other.title;
}

@end

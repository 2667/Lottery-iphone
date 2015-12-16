//
//  DZWebPage.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZWebPage.h"

@implementation DZWebPage

+(instancetype)webPageWithDict:(NSDictionary *)dict
{
    DZWebPage *webPage = [[self alloc] init];
    
    webPage.title = dict[@"title"];
    webPage.html = dict[@"html"];
    webPage.ID = dict[@"id"];
    
    return webPage;
}

@end

//
//  DZWebPage.h
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZWebPage : NSObject
/**
 *  标题
 */
@property (nonatomic, copy) NSString *title;
/**
 *  页面
 */
@property (nonatomic, copy) NSString *html;
/**
 *  ID
 */
@property (nonatomic, copy) NSString *ID;

+(instancetype)webPageWithDict:(NSDictionary *)dict;

@end

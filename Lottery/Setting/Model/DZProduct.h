//
//  DZProduct.h
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZProduct : NSObject
/**
 *  产品名称
 */
@property (nonatomic, copy) NSString *title;
/**
 *  产品图标
 */
@property (nonatomic, copy) NSString *icon;

+(instancetype)productWithDict:(NSDictionary *)dict;

@end

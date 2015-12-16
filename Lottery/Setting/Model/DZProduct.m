//
//  DZProduct.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZProduct.h"

@implementation DZProduct

+(instancetype)productWithDict:(NSDictionary *)dict
{
    DZProduct *product = [[self alloc] init];
    product.title = dict[@"title"];
    product.icon = dict[@"icon"];
    
    return product;
}

@end

//
//  DZProductCell.h
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DZProduct;
@interface DZProductCell : UICollectionViewCell

@property (nonatomic, strong) DZProduct *product;

+(NSString *)xib;

@end

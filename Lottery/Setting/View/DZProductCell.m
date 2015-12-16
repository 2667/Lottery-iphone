//
//  DZProductCell.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZProductCell.h"
#import "DZProduct.h"
#import <QuartzCore/QuartzCore.h>

@interface DZProductCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleView;

@end

@implementation DZProductCell

+(NSString *)xib
{
    return @"DZProductCell";
}

-(void)awakeFromNib
{
    //设置圆角
    self.iconView.layer.cornerRadius = 10;
    //让内部所有的图层都遵循父图层的边框来显示,超出父图层的内容全部裁减掉
    self.iconView.layer.masksToBounds = YES;
}

-(void)setProduct:(DZProduct *)product
{
    _product = product;
    
    //图标
    self.iconView.image = [UIImage imageNamed:product.icon];
    
    //标题
    self.titleView.text = product.title;
}

@end

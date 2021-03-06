//
//  ILCircleItemView.m
//  01-ItcastLottery
//
//  Created by apple on 13-12-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "DZCircleItemView.h"

const int DZCircleItemViewW = 68;
const int DZCircleItemViewH = 143;

@implementation DZCircleItemView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 设置选中时的背景
        [self setBackgroundImage:[UIImage imageNamed:@"LuckyRototeSelected.png"] forState:UIControlStateSelected];
        // 设置锚点(底部中点)
        self.layer.anchorPoint = CGPointMake(0.5, 1);
    }
    return self;
}

#pragma mark setFrame:和setBounds:能保证尺寸永远是68x2143
- (void)setFrame:(CGRect)frame
{
    frame.size = CGSizeMake(DZCircleItemViewW, DZCircleItemViewH);
    [super setFrame:frame];
}

- (void)setBounds:(CGRect)bounds
{
    bounds.size = CGSizeMake(DZCircleItemViewW, DZCircleItemViewH);
    [super setBounds:bounds];
}

- (void)setHighlighted:(BOOL)highlighted {}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGSize size = [self imageForState:UIControlStateNormal].size;
    CGFloat scale = [UIScreen mainScreen].scale;
    
    CGFloat w = size.width/scale;
    CGFloat h = size.height/scale;
    CGFloat x = ( contentRect.size.width - w ) * 0.5;
    CGFloat y = ( contentRect.size.height - h ) * 0.5 - 20;
    return  CGRectMake(x, y, w, h);
}

#pragma mark 点击按钮的时候必定会调用
// 询问按钮point是否在按钮身上
// 如果返回YES，代表point在按钮身上，系统就会让按钮处理点击事件
// 如果返回NO，代表point部在按钮身上，系统就不会让按钮处理点击事件
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
//{
//    ILLog(@"----%@", NSStringFromCGPoint(point));
//    return NO;
//}
@end
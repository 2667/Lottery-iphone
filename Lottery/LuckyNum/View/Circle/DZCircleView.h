//
//  ILCircleView.h
//  01-ItcastLottery
//
//  Created by apple on 13-12-27.
//  Copyright (c) 2013年 itcast. All rights reserved.
//  幸运转盘(背景层、顶部的开始按钮)

#import <UIKit/UIKit.h>

@class DZCircleView;

typedef enum {
    DZCircleViewTypeAstrology, // 星座
    DZCircleViewTypeAnimal // 生肖
} DZCircleViewType;

@protocol DZCircleViewDelegate <NSObject>

@optional
- (void)circleView:(DZCircleView *)circleView willRoateToIndex:(NSUInteger)index;
- (void)circleView:(DZCircleView *)circleView didRoateToIndex:(NSUInteger)index;
@end

@interface DZCircleView : UIView
+ (instancetype)circleView;

@property (nonatomic, assign) DZCircleViewType circleType;
@property (nonatomic, weak) id<DZCircleViewDelegate> delegate;

- (void)startRotate;
- (void)stopRotate;
- (void)pauseRotate;
@end

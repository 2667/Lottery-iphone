//
//  DZTabBar.h
//  Lottery
//
//  Created by dengwei on 15/9/27.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DZTabBar;
@protocol DZTabBarDelegate <NSObject>

@optional
-(void)tabBar:(DZTabBar *)tabBar didSelectButtonFrom:(NSUInteger)form to:(NSUInteger)to;

@end

@interface DZTabBar : UIView

-(void)addTabBarButton:(NSString *)icon selIcon:(NSString *)selIcon;

@property (nonatomic, weak) id<DZTabBarDelegate> delegate;

@end

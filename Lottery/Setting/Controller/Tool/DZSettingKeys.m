//
//  DZSettingKeys.m
//  Lottery
//
//  Created by dengwei on 15/9/30.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#define DZDefineConstStr(name) \
NSString * const name = @#name;

/**
 *  比分直播,关注开始时间
 */
NSString * const DZLiveNoticeStartTime = @"startTime";
/**
 *  比分直播,关注结束时间
 */
NSString * const DZLiveNoticeEndTime = @"EndTime";

/**
 *  摇一摇机选
 */
NSString * const DZSettingHandShake = @"DZSettingHandShake";
/**
 *  音效开关
 */
NSString * const DZSettingSoundEffect = @"DZSettingSoundEffect";

/**
 *  双色球
 */
DZDefineConstStr(AwardPushBall)
/**
 *  大乐透
 */
DZDefineConstStr(AwardPushLetou)
/**
 *  七乐彩
 */
DZDefineConstStr(AwardPushQile)
/**
 *  七星彩
 */
DZDefineConstStr(AwardPushQixing)

/**
 *  中彩动画
 */
DZDefineConstStr(AwardAnimation)

/**
 *  提醒关注的比赛
 */
DZDefineConstStr(DZLiveNoticeCareGame)

/**
 *  购彩定时提醒
 */
DZDefineConstStr(DZSettingBuyTimedNotice)
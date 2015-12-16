//
//  DZSettingKeys.h
//  Lottery
//
//  Created by dengwei on 15/9/30.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#define DZDeclareConstStr(name) \
extern NSString * const name;

/**
 *  比分直播,关注开始时间
 */
extern NSString * const DZLiveNoticeStartTime;
/**
 *  比分直播,关注结束时间
 */
extern NSString * const DZLiveNoticeEndTime;

/**
 *  摇一摇机选
 */
extern NSString * const DZSettingHandShake;
/**
 *  音效开关
 */
extern NSString * const DZSettingSoundEffect;

/**
 *  双色球
 */
DZDeclareConstStr(AwardPushBall)
/**
 *  大乐透
 */
DZDeclareConstStr(AwardPushLetou)
/**
 *  七乐彩
 */
DZDeclareConstStr(AwardPushQile)
/**
 *  七星彩
 */
DZDeclareConstStr(AwardPushQixing)

/**
 *  中彩动画
 */
DZDeclareConstStr(AwardAnimation)

/**
 *  提醒关注的比赛
 */
DZDeclareConstStr(DZLiveNoticeCareGame)
/**
 *  购彩定时提醒
 */
DZDeclareConstStr(DZSettingBuyTimedNotice)
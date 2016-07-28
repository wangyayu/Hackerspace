//
//  ActivityDataModel.h
//  Hackerspace
//
//  Created by macmi001 on 16/7/27.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ActivityDataModel : NSObject

@property (nonatomic, strong) NSString *activityDate;//活动日期
@property (nonatomic, strong) NSString *activityState;//活动状态
@property (nonatomic, strong) NSString *activityPic;//活动图片
@property (nonatomic, strong) NSString *activityDescription;//活动描述
@property (nonatomic, strong) NSString *activityMiniPic;//活动小图

@end

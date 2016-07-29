//
//  ResADDataModel.h
//  Hackerspace
//
//  Created by macmi001 on 16/7/28.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResADDataModel : NSObject
@property (nonatomic, strong) NSString *pid;//广告位 id,即麦子互动分配给媒体的合 作广告位的唯一标识
@property (nonatomic, strong) NSString *uuid;//麦子互动平台为该设备用户生成的唯 一标识
@property (nonatomic, strong) NSString *bc;//该次广告业务的业务 ID    32 位伪 GUID
@property (nonatomic, strong) NSString *etype;//物料展示类型  C:动态物料 V:video(嵌入式视频广告) N:Banner

/*
 I:表示图片物料
 F:表示 Flash 物料 V:表示视频物料
 X:表示 Flash 物料/富媒体物料 (多点击地址 Flash 物料是已嵌入 跳转地址和 Click 监测代码的物料)
 */
@property (nonatomic, strong) NSString *type;//物料类型 
@property (nonatomic, strong) NSString *src;//物料 URL
@property (nonatomic, strong) NSNumber *adw;//广告位宽度
@property (nonatomic, strong) NSNumber *adh;//广告位高度
@property (nonatomic, strong) NSString *ldp;//落地页 URL 地址


@property (nonatomic, strong) NSArray *cm;//点击监测 URL(s)
@property (nonatomic, strong) NSDictionary *pm;//曝光监测 URL(s)及发送曝光监测的时 机
@property (nonatomic, strong) NSArray *ocm;//第三方点击监测 URL(s)
@property (nonatomic, strong) NSArray *opm;//第三方曝光监测 URL(s)
@property (nonatomic, strong) NSDictionary *Object;//时长
@end

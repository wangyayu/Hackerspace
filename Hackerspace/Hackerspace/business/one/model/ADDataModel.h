//
//  ADDataModel.h
//  Hackerspace
//
//  Created by macmi001 on 16/7/28.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADDataModel : NSObject



@property (nonatomic, strong) NSString *l;
@property (nonatomic, strong) NSString *r;
@property (nonatomic, strong) NSString *v;
//============设备系统信息========================================================
/*
 //设备类型
 0:phone 1:pad 2:pc 3:tv 默认为 0
 */
@property (nonatomic, strong) NSString *bt;
/*
 0:未知 1:Android 2:iOS 3:WP 4:Others 不区分大小写
 */
@property (nonatomic, strong) NSString *m_os;//用户终端的操作系统类型

@property (nonatomic, strong) NSString *m_os_v;//操作系统版本号
/*
 OpenUDID iOS<6(版本 6 以下的 操作系统需要提供)
 */
@property (nonatomic, strong) NSString *m0;//OpenUDID idfa 可能拿到
@property (nonatomic, strong) NSString *m1;//Android ID
@property (nonatomic, strong) NSString *m2;//IMEI(MD5)
@property (nonatomic, strong) NSString *m3;//IMEI
@property (nonatomic, strong) NSString *m4;//MD5 加密的 Android ID
@property (nonatomic, strong) NSString *m5;//iOS IDFA
@property (nonatomic, strong) NSString *m6;//保留分隔符”:”(保持大写)的 MAC 地址取 MD5 摘 要
@property (nonatomic, strong) NSString *m7;//去除分隔符”:”(保持大写)的 MAC 地址取 MD5 摘 要
@property (nonatomic, strong) NSString *m8;//AAID(Advertising Id)
@property (nonatomic, strong) NSString *m_duid;//Windows Phone 用户终端的 DUID,md5 加密
//=============================APP 应用信息=======================================

@property (nonatomic, strong) NSString *m_app;//App Name
@property (nonatomic, strong) NSString *m_app_pn;//APP 应用的包名称或 bundleID
@property (nonatomic, strong) NSString *m_itid;//iOS App iTunes ID
@property (nonatomic, strong) NSString *m_cat;//app 应用的分类编号
/*
 1:iOS AppStore 
 2:Google Play
 3:91 Market
 */
@property (nonatomic, strong) NSString *m_mkt;//应用商店的编号
@property (nonatomic, strong) NSString *m_mkt_app;//app 在上述应用商店内的编号
@property (nonatomic, strong) NSString *m_mkt_cat;//app 在上述应用商店内的分类编号
/*
 app 在上述应用商店内的标签(英文或中文 UTF8- R urlencode 编码) 多个标签使用半角逗号分隔
 */
@property (nonatomic, strong) NSString *m_mkt_tag;

//=============================广告位信息=======================================

@property (nonatomic, strong) NSString *m_adw;//广告位的宽度,以像素为单位。(指密度无关像素, 即 DIP 或 CSS pixel)
@property (nonatomic, strong) NSString *m_adh;//广告位的高度,以像素为单位。( 指密度无关像素, 即 DIP 或 CSS pixel)
/*
 0:固定广告位 1:Banner 2:插屏 3:开屏 4:信息流 5:H5
 */
@property (nonatomic, strong) NSString *m_stype;//请求广告类型
/*
 
 0:否 1:是
 */
@property (nonatomic, strong) NSString *m_int;//是否全屏/互动展示广告(interstitial ad)

//=============================其他信息=======================================
/*
 0:未知 1:联通 2:移动 3:电信 4:增值运营商
 */
@property (nonatomic, strong) NSString *m_opr;//网络运营商
/*
 0:未知 1:Ethernet 2:wifi 3:蜂窝网络,2G 4:蜂窝网络,3G 5:蜂窝网络,4G
 */
@property (nonatomic, strong) NSString *m_net;//联网类型
/*
 0:固定广告位 1:Banner 2:插屏 3:开屏 4:信息流 5:H5
 */
@property (nonatomic, strong) NSString *m_ip;//IP
@property (nonatomic, strong) NSString *m_ua;//User-Agent(字符串,需要 escape 转义)

@property (nonatomic, strong) NSString *m_ts;//发送请求时的本地 UNIX 时间戳(秒数, 10 进制)
@property (nonatomic, strong) NSString *m_dvw;//设备屏幕的宽度,以像素为单位。(指密度无关像 O 素,即 DIP 或 CSS pixel)
@property (nonatomic, strong) NSString *m_dvh;//设备屏幕的宽度,以像素为单位。(指密度无关像 O 素,即 DIP 或 CSS pixel)

@property (nonatomic, strong) NSString *m_mfr;//设备生产商(字符串格式)
@property (nonatomic, strong) NSString *m_mdl;//设备型号
@property (nonatomic, strong) NSString *m_sdk;//投放 sdk 版本

@property (nonatomic, strong) NSString *m_lan;//目前使用的语言和国家
@property (nonatomic, strong) NSString *m_brk;//iOS 设备是否越狱
@property (nonatomic, strong) NSString *m_pos;//地理位置(经度, 维度, 精确度为单位)
@property (nonatomic, strong) NSString *m_ssid;//Wifi SSID

@end

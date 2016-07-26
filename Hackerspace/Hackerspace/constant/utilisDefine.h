//
//  utilisDefine.h
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#ifndef utilisDefine_h
#define utilisDefine_h

//屏幕宽高
#define kSCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define kSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define kBackGroundColor  RGB_Color(242, 245, 242, 1)     //最底层背景颜色
#define kMainColor [UIColor colorWithRed:60/255.0 green:180/255.0 blue:82/255.0 alpha:1.0]  //主色调


#define DEBUG_MODE 1

//带有坐标的日志输出
#if DEBUG_MODE
#define ILog( s, ... ) NSLog( @"<%p %@:(%d)> %@", self, [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define ILog( s, ... )
#endif

//判断是否是iOS7或更高的系统版本
#define IOS_VERSION_7_OR_LATER (([[[UIDevice currentDevice] systemVersion] floatValue] >=7.0)? (YES):(NO))

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self

#endif /* utilisDefine_h */

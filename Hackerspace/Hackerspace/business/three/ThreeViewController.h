//
//  ThreeViewController.h
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "BaseViewController.h"
#import "NJKWebViewProgress.h"
@interface ThreeViewController : BaseViewController<UIWebViewDelegate, NJKWebViewProgressDelegate>

@property (nonatomic,strong) UIWebView *myWebView;
@property (nonatomic,strong) NSString *webLink;//连接地址
@end

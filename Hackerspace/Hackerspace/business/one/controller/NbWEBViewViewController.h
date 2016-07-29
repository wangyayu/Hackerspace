//
//  NbWEBViewViewController.h
//  Hackerspace
//
//  Created by macmi001 on 16/7/29.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "BaseViewController.h"
#import "NJKWebViewProgress.h"
@interface NbWEBViewViewController : BaseViewController<UIWebViewDelegate, NJKWebViewProgressDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
@property (nonatomic,strong) NSString *webLink;//连接地址
@end

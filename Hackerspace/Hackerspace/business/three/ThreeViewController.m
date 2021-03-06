//
//  ThreeViewController.m
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "ThreeViewController.h"
#import "NJKWebViewProgressView.h"
@interface ThreeViewController ()

@end

@implementation ThreeViewController{
    
    //    UIWebView *_webView;
    
    NJKWebViewProgressView *_progressView;
    NJKWebViewProgress *_progressProxy;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myWebView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, kSCREEN_WIDTH, kScreenHeight)];
    [self.view addSubview:self.myWebView];
    
    self.webLink = @"https://mp.weixin.qq.com/s?__biz=MzA4MzY0NTcyMw==&mid=203039280&idx=1&sn=332715925a59621ba93d6c49165b3994&scene=1&srcid=0729Qam7NaKkMdXjSk9sH57a&key=8dcebf9e179c9f3a71d8f9ffdd6054042051d61934acde6d88bffa1e1209bd573a2f3b61f3962ab7fd558b5442e62eb9&ascene=0&uin=NjUwODU1ODQw&devicetype=iMac+Macmini7%2C1+OSX+OSX+10.11.4+build(15E65)&version=11000003&pass_ticket=sPcuTp0%2FtnRUPhcV8cn32LckAG1i1I13%2FA%2FSuVdPMAiE7QQRDBrhNYnUiu%2BGSpeY";
    
    _progressProxy = [[NJKWebViewProgress alloc] init];
    self.myWebView.delegate = _progressProxy;
    _progressProxy.webViewProxyDelegate = self;
    _progressProxy.progressDelegate = self;
    
    CGFloat progressBarHeight = 2.f;
    CGRect navigationBarBounds = self.navigationController.navigationBar.bounds;
    CGRect barFrame = CGRectMake(0, navigationBarBounds.size.height - progressBarHeight, navigationBarBounds.size.width, progressBarHeight);
    _progressView = [[NJKWebViewProgressView alloc] initWithFrame:barFrame];
    _progressView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    
    [self loadGoogle];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar addSubview:_progressView];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    // Remove progress view
    // because UINavigationBar is shared with other ViewControllers
    [_progressView removeFromSuperview];
}

-(void)loadGoogle
{
    NSURLRequest *req = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:self.webLink]];
    [self.myWebView loadRequest:req];
}

#pragma mark - NJKWebViewProgressDelegate
-(void)webViewProgress:(NJKWebViewProgress *)webViewProgress updateProgress:(float)progress
{
    [_progressView setProgress:progress animated:YES];
//    self.title = [self.myWebView stringByEvaluatingJavaScriptFromString:@"document.title"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

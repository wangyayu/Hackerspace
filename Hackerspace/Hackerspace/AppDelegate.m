//
//  AppDelegate.m
//  Hackerspace
//
//  Created by wangyayu on 16/6/28.
//  Copyright © 2016年 wangyy. All rights reserved.
//
#import "mainViewController.h"
#import "LCTabBarController.h"
#import "mainViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "AppDelegate.h"
#import "LBLaunchImageAdView.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
//git hub
//开平动画结束
-(void)updateNewsItems{
    mainViewController *mainVc = [[mainViewController alloc]init];
    self.window.rootViewController = mainVc;
    [self.window makeKeyAndVisible];
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    LBLaunchImageAdView * adView = [[LBLaunchImageAdView alloc]initWithWindow:self.window andType:FullScreenAdType andImgUrl:@"http://hbimg.b0.upaiyun.com/218c450b40017636ca48deb49514a0bc2919c0b453de1-TmqXof_fw658"];
    
    //各种回调
    adView.clickBlock = ^(NSInteger tag){
        switch (tag) {
            case 1100:{
                NSLog(@"点击广告回调");
            }
                break;
            case 1101:
                NSLog(@"点击跳过回调");
                [self updateNewsItems];
                break;
            case 1102:
                NSLog(@"倒计时完成后的回调");
                [self updateNewsItems];
                break;
            default:
                break;
        }
        
    };
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

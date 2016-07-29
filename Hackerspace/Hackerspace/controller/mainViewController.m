//
//  mainViewController.m
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "mainViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "ADTestViewController.h"
#import "FourViewController.h"
#import "LCTabBarController.h"

@interface mainViewController ()

@end

@implementation mainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setController];
}

- (void)setController{
    ILog(@"初始化===");
    
    
    
//    ADTestViewController *vc1 = [[ADTestViewController alloc] init];
//    vc1.title = @"广告测试";
//    vc1.tabBarItem.image = [UIImage imageNamed:@"home_nom"];
//    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"home_clc"];
    
    
    OneViewController *vc1 = [[OneViewController alloc] init];
    vc1.title = @"社区动态";
    vc1.tabBarItem.image = [UIImage imageNamed:@"home_nom"];
    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"home_clc"];
     //    vc1.tabBarItem.badgeValue = @"";
    
    TwoViewController *vc2 = [[TwoViewController alloc] init];
    //    vc2.tabBarItem.badgeValue = @"";
    vc2.title = @"社区小组";
    vc2.tabBarItem.image = [UIImage imageNamed:@"xiaozu_nom"];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"xiaozu_clc"];
    
    ThreeViewController *vc3 = [[ThreeViewController alloc] init];
//        vc3.tabBarItem.badgeValue = @"";
    
    vc3.title = @"社区资源";
    vc3.tabBarItem.image = [UIImage imageNamed:@"shequ_nom"];
    vc3.tabBarItem.selectedImage = [UIImage imageNamed:@"shequ_clc"];
    
    FourViewController* vc4 = [[FourViewController alloc] init];
    //    vc4.tabBarItem.badgeValue = @"";
    vc4.title = @"我的信息";
    vc4.tabBarItem.image = [UIImage imageNamed:@"wode_nom"];
    vc4.tabBarItem.selectedImage = [UIImage imageNamed:@"wode_clc"];
    
    
    UINavigationController *navC1 = [[UINavigationController alloc]
                                     initWithRootViewController:vc1];
    //设置UITabBar背景色
    [[UITabBar appearance] setBackgroundColor:[UIColor lightGrayColor]];
    //设置navigationBar颜色
    navC1.navigationBar.barTintColor = kMainColor;
    //设置navigationBar  title字体颜色
    [navC1.navigationBar setTitleTextAttributes
     :@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    UINavigationController *navC2 = [[UINavigationController alloc]
                                     initWithRootViewController:vc2];
    navC2.navigationBar.barTintColor = kMainColor;
    
    [navC2.navigationBar setTitleTextAttributes
     :@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    UINavigationController *navC3 = [[UINavigationController alloc]
                                     initWithRootViewController:vc3];
    navC3.navigationBar.barTintColor = kMainColor;
    
    [navC3.navigationBar setTitleTextAttributes
     :@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    UINavigationController *navC4 = [[UINavigationController alloc]
                                     initWithRootViewController:vc4];
    navC4.navigationBar.barTintColor = kMainColor;
    
    [navC4.navigationBar setTitleTextAttributes
     :@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    
    
    /**************************************** Key Code ****************************************/
    
    self.viewControllers = @[navC1, navC2, navC3, navC4];
    
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

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
    
    OneViewController *vc1 = [[OneViewController alloc] init];
    //    vc1.tabBarItem.badgeValue = @"";//显示消息数量
    vc1.title = @"社区动态";
    vc1.tabBarItem.image = [UIImage imageNamed:@"one_homepage"];
    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"one_homepage"];
    
    TwoViewController *vc2 = [[TwoViewController alloc] init];
    //    vc2.tabBarItem.badgeValue = @"";
    vc2.title = @"社区小组";
    vc2.tabBarItem.image = [UIImage imageNamed:@"two_shop"];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"two_shop"];
    
    ThreeViewController *vc3 = [[ThreeViewController alloc] init];
    //    vc3.tabBarItem.badgeValue = @"";
    vc3.title = @"社区资源";
    vc3.tabBarItem.image = [UIImage imageNamed:@"three_find"];
    vc3.tabBarItem.selectedImage = [UIImage imageNamed:@"three_find"];
    
    FourViewController* vc4 = [[FourViewController alloc] init];
    //    vc4.tabBarItem.badgeValue = @"";
    vc4.title = @"我的信息";
    vc4.tabBarItem.image = [UIImage imageNamed:@"four_about"];
    vc4.tabBarItem.selectedImage = [UIImage imageNamed:@"four_about"];
    
    
    UINavigationController *navC1 = [[UINavigationController alloc]
                                     initWithRootViewController:vc1];
    
    //设置navigationBar颜色
    navC1.navigationBar.barTintColor =
    [UIColor colorWithRed:62/255.0 green:173/255.0 blue:176/255.0 alpha:1.0];
    //设置navigationBar  title字体颜色
    [navC1.navigationBar setTitleTextAttributes
     :@{NSForegroundColorAttributeName : [UIColor darkGrayColor]}];
    
    UINavigationController *navC2 = [[UINavigationController alloc]
                                     initWithRootViewController:vc2];
    navC2.navigationBar.barTintColor =
    [UIColor colorWithRed:62/255.0 green:173/255.0 blue:176/255.0 alpha:1.0];
    
    [navC2.navigationBar setTitleTextAttributes
     :@{NSForegroundColorAttributeName : [UIColor darkGrayColor]}];
    
    UINavigationController *navC3 = [[UINavigationController alloc]
                                     initWithRootViewController:vc3];
    navC3.navigationBar.barTintColor =
    [UIColor colorWithRed:62/255.0 green:173/255.0 blue:176/255.0 alpha:1.0];
    
    [navC3.navigationBar setTitleTextAttributes
     :@{NSForegroundColorAttributeName : [UIColor darkGrayColor]}];
    
    UINavigationController *navC4 = [[UINavigationController alloc]
                                     initWithRootViewController:vc4];
    navC4.navigationBar.barTintColor =
    [UIColor colorWithRed:62/255.0 green:173/255.0 blue:176/255.0 alpha:1.0];
    
    [navC4.navigationBar setTitleTextAttributes
     :@{NSForegroundColorAttributeName : [UIColor darkGrayColor]}];
    
    
    
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

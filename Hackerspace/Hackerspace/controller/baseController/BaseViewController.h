//
//  BaseViewController.h
//  TomatoTown
//
//  Created by miller on 14/12/15.
//  Copyright (c) 2014年 Stan Wu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
//创建导航条的标题视图
- (void)addTitleViewWithTitle:(NSString *)title;
//创建导航条的左右按钮
- (void)addBarButtonItemWithTitle:(NSString *)title imageName:(NSString *)imageName
                            frame:(CGRect)frame target:(id)target action:(SEL)action
                           isLeft:(BOOL)isLeft isCircle:(BOOL)isCircle;

/**
 *  查看系统版本是否大于7.0 
 */
-(void)checkSystemAdjustView;

/**
 *  创建button
 *
 *  @param frame  坐标
 *  @param title  标题
 *  @param target 谁调用
 *  @param action 点击事件
 *  @param tag    tag 值
 *
 *  @return 返回的button
 */
-(UIButton *)creatCustomButtonFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action tag:(NSInteger)tag;

@end

//
//  ActivityCell.h
//  Hackerspace
//
//  Created by macmi001 on 16/7/27.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBaseCell.h"
@interface ActivityCell : MBaseCell{

}
@property(nonatomic, strong) UILabel*   lyear;    //年
@property(nonatomic, strong) UILabel*   lmonth;  //月
@property(nonatomic, strong) UILabel*   lday;  //日
@property(nonatomic, strong) UIImageView* bigImage;  //大图
@property(nonatomic, strong) UIImageView* miniImage;  //小图
@property(nonatomic, strong) UILabel*   lintroduction;  //简介
@end

//
//  ActTableViewCell.h
//  Hackerspace
//
//  Created by macmi001 on 16/7/28.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lable_nian;
@property (weak, nonatomic) IBOutlet UILabel *lable_yue;
@property (weak, nonatomic) IBOutlet UILabel *lable_ri;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@property (weak, nonatomic) IBOutlet UIView *mbg;
@property (weak, nonatomic) IBOutlet UIImageView *bigimage;
@property (weak, nonatomic) IBOutlet UIImageView *miniimg;
@property (weak, nonatomic) IBOutlet UILabel *lable_jianjie;
@property (nonatomic) BOOL nibsRegistered;


@end

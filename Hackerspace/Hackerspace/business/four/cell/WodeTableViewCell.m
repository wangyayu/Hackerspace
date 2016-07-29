//
//  WodeTableViewCell.m
//  Hackerspace
//
//  Created by macmi001 on 16/7/29.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "WodeTableViewCell.h"

@implementation WodeTableViewCell
@synthesize v1;
@synthesize v2;
@synthesize v3;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
//    v1 = [[UIView alloc]init];
//    v2 = [[UIView alloc]init];
//    v3 = [[UIView alloc]init];
    
    v1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenSize.width/3, 70)];
    v2 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenSize.width/3, 70)];
    v3 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenSize.width/3, 70)];
    
    [self.contentView addSubview:v1];
    [self.contentView addSubview:v2];
    [self.contentView addSubview:v3];
    
    v1.backgroundColor = [UIColor redColor];
    v2.backgroundColor = [UIColor yellowColor];
    v3.backgroundColor = [UIColor greenColor];
    
    [self.v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left);
        make.top.equalTo(self.contentView.mas_top);
        make.bottom.equalTo(self.contentView.mas_bottom);
        make.right.equalTo(self.v2.mas_left);
    }];
    [self.v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.v1.mas_right);
        make.top.equalTo(self.contentView.mas_top);
        make.bottom.equalTo(self.contentView.mas_bottom);
        make.right.equalTo(self.v3.mas_left);
    }];
    [self.v3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.v2.mas_right);
        make.top.equalTo(self.contentView.mas_top);
        make.bottom.equalTo(self.contentView.mas_bottom);
        make.right.equalTo(self.contentView.mas_right);
    }];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

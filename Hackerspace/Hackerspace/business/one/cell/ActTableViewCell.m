//
//  ActTableViewCell.m
//  Hackerspace
//
//  Created by macmi001 on 16/7/28.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "ActTableViewCell.h"

@implementation ActTableViewCell
@synthesize nibsRegistered;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

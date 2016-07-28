//
//  ActivityCell.m
//  Hackerspace
//
//  Created by macmi001 on 16/7/27.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "ActivityCell.h"
@interface ActivityCell()

@end

@implementation ActivityCell
@synthesize lday;
@synthesize lmonth;
@synthesize lyear;
@synthesize lintroduction;
@synthesize bigImage;
@synthesize miniImage;

- (void)dealloc{
    
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        lyear = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 60, 30)];
        [self.contentView addSubview:lyear];
        lmonth = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, 60, 30)];
        [self.contentView addSubview:lmonth];
        lday = [[UILabel alloc] initWithFrame:CGRectMake(20, 60, 40, 40)];
        
        lyear.text = @"2016";
        lmonth.text = @"07";
        lday.text = @"27";
        
        bigImage = [[UIImageView alloc] initWithFrame:CGRectMake(60, 0, 260, 200)];
        [self.contentView addSubview:bigImage];
        bigImage.image = [UIImage imageNamed:@"HeaderImage"];
        
        miniImage = [[UIImageView alloc] initWithFrame:CGRectMake(60, 160, 30, 30)];
        [self.contentView addSubview:miniImage];
        bigImage.image = [UIImage imageNamed:@"HeaderImage"];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)layoutShowInfo:(ActivityDataModel *)model{
 
}

@end

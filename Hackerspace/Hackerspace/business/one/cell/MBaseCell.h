//
//  MBaseCell.h
//  Hackerspace
//
//  Created by wangyayu on 16/6/28.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ActivityDataModel.h"


@protocol MBaseCellDelegate <NSObject>


- (void)eventByClickWithModel:(ActivityDataModel *)model;

@end

@interface MBaseCell : UITableViewCell


@property(nonatomic,assign)NSInteger cellType;


@property (nonatomic,weak) id <MBaseCellDelegate> delegate;


- (void)layoutShowInfo:(ActivityDataModel *)model;

@end

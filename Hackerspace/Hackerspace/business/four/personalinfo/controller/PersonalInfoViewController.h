//
//  PersonalInfoViewController.h
//  Hackerspace
//
//  Created by macmi001 on 16/7/26.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "BaseViewController.h"

@interface PersonalInfoViewController : BaseViewController<UITableViewDataSource,

UITableViewDelegate>{
    
    UITableView *myTableView;
}

@property(nonatomic, strong) NSMutableArray* myData;//数据源

@end

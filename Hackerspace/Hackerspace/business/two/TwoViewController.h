//
//  TwoViewController.h
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "BaseViewController.h"

@interface TwoViewController : BaseViewController<UITableViewDataSource,

UITableViewDelegate>{

    UITableView *myTableView;
}

@property(nonatomic, strong) NSMutableArray* myData;//数据源
@end

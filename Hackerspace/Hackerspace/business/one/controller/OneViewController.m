//
//  OneViewController.m
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController
- (void)viewWillAppear:(BOOL)animated{
    
    [myTableView deselectRowAtIndexPath:[myTableView indexPathForSelectedRow]
                               animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initModel];
    [self initView];
}

-(void)initModel{
    self.myData = [[NSMutableArray alloc]init];
    [self.myData addObject:@"个人资料"];
    [self.myData addObject:@"消息中心"];
    [self.myData addObject:@"我的钱包"];
    [self.myData addObject:@"功能设置"];
    [self.myData addObject:@"空间会员"];
    
}
-(void)initView{
    
    myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style: UITableViewStyleGrouped];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    
    WS(ws);
    [myTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.view.mas_left);
        make.right.equalTo(ws.view.mas_right);
        make.bottom.equalTo(ws.view.mas_bottom);
        make.top.equalTo(ws.view.mas_top);
    }];
    
}

#pragma mark
- (CGFloat)tableView:(UITableView *)tableView
heightForHeaderInSection:(NSInteger)section{
    
    return 0.0000001;
}
- (CGFloat)tableView:(UITableView *)tableView
heightForFooterInSection:(NSInteger)section{
    
    return 0.0000001;
}
-(CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CGFloat h = 60.0;
    return h;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section
{
    return self.myData.count;
}
//点击
- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            //我的资料
        {

        }
            break;
            
        default:
            break;
    }
    
}

#pragma mark返回每行的单元格
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath]; //根据indexPath准确地取出一行，而不是从cell重用队列中取出
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:CellIdentifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.myData[indexPath.row];
    NSString* t = [self.myData objectAtIndex:indexPath.row];
    
    [self.myData addObject:@"个人资料"];
    [self.myData addObject:@"消息中心"];
    [self.myData addObject:@"我的钱包"];
    [self.myData addObject:@"功能设置"];
    [self.myData addObject:@"空间会员"];
    
    if([t isEqualToString:@"个人资料"])
    {
        cell.imageView.image = [UIImage imageNamed:@"gerenxinxi"];
    }
    else if([t isEqualToString:@"消息中心"])
    {
        cell.imageView.image = [UIImage imageNamed:@"xiaoxizhongxin"];
    }
    else if ([t isEqualToString:@"我的钱包"])
    {
        cell.imageView.image = [UIImage imageNamed:@"wodeqianbao"];
    }
    else if ([t isEqualToString:@"功能设置"])
    {
        cell.imageView.image = [UIImage imageNamed:@"gongnengshezhi"];
    }
    else if ([t isEqualToString:@"空间会员"])
    {
        cell.imageView.image = [UIImage imageNamed:@"kongjianhuiyuan"];
    }
    return cell;
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

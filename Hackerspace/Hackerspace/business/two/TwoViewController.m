//
//  TwoViewController.m
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "TwoViewController.h"
#import "Masonry.h"
#import "AFNetworking.h"
#import "ComActTableViewCell.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initModel];
    [self initView];
}

-(void)initModel{
    self.myData = [[NSMutableArray alloc]init];
    [self.myData addObject:@"社区"];
    [self.myData addObject:@"社区"];
    [self.myData addObject:@"社区"];
    [self.myData addObject:@"社区"];
    [self.myData addObject:@"社区"];
    [self.myData addObject:@"社区"];

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
    
    CGFloat h = 150.0;
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
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    [manager GET:@"http://api.map.baidu.com/telematics/v3/weather?location=北京&output=json&ak=yourkey" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"JSON: %@", responseObject);
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
}

#pragma mark返回每行的单元格
-(UITableViewCell *)tableView:(UITableView *)tableView
                                 cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *CellIdentifier = @"ComActTableViewCell";
    
    ComActTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:nil options:nil] lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.contentView.backgroundColor = [untilisTool stringTOColor:@"#f3f4f6"];
    
    return cell;
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

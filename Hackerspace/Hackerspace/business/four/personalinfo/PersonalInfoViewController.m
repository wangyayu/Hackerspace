//
//  PersonalInfoViewController.m
//  Hackerspace
//
//  Created by macmi001 on 16/7/26.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "PersonalInfoViewController.h"
#import "ParallaxHeaderView.h"
@interface PersonalInfoViewController ()

@property (nonatomic) NSDictionary *story;

@end

@implementation PersonalInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initModel];
    [self initView];
}

-(void)initModel{
    self.myData = [[NSMutableArray alloc]init];
    [self.myData addObject:@"个人资料"];
    [self.myData addObject:@"成为会员"];
    
    
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
    ParallaxHeaderView *headerView = [ParallaxHeaderView parallaxHeaderViewWithImage:[UIImage imageNamed:@"HeaderImage"] forSize:CGSizeMake(myTableView.frame.size.width, 200)];
    headerView.headerTitleLabel.text = self.story[@"story"];
    
    [myTableView setTableHeaderView:headerView];
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

#pragma mark UISCrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView == myTableView)
    {
        // pass the current offset of the UITableView so that the ParallaxHeaderView layouts the subViews.
        [(ParallaxHeaderView *)myTableView.tableHeaderView layoutHeaderViewForScrollViewOffset:scrollView.contentOffset];
    }
}
//点击
- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
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

//
//  PersonalInfoViewController.m
//  Hackerspace
//
//  Created by macmi001 on 16/7/26.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "PersonalInfoViewController.h"
#import "ParallaxHeaderView.h"
@interface PersonalInfoViewController (){


    NSMutableArray *testarr;
}

@property (nonatomic) NSDictionary *story;

@end

@implementation PersonalInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人资料";
    // Do any additional setup after loading the view.
    [self initModel];
    [self initView];
}

-(void)initModel{
    self.myData = [[NSMutableArray alloc]init];
    NSMutableArray* sectionArrI = [[NSMutableArray alloc]init];
    NSMutableArray* sectionArrII = [[NSMutableArray alloc]init];
    NSMutableArray* sectionArrIII = [[NSMutableArray alloc]init];
    
    [sectionArrI addObject:@"我的"];
    
    [sectionArrII addObject:@"修改资料"];
    [sectionArrII addObject:@"职业:"];
    [sectionArrII addObject:@"关注:"];
    [sectionArrII addObject:@"年龄:"];
    [sectionArrII addObject:@"签名:"];
    
    [sectionArrIII addObject:@"成为会员"];
    
    [self.myData addObject:sectionArrI];
    [self.myData addObject:sectionArrII];
    [self.myData addObject:sectionArrIII];
    
    
    //=================test
    testarr = [[NSMutableArray alloc]init];
    [testarr addObject:@"程序员"];
    [testarr addObject:@"互联网"];
    [testarr addObject:@"30"];
    [testarr addObject:@"做个有意思的人"];
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
    
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat h;
    if (indexPath.section==0) {
        h = 70;
    }else{
        h = 42.0;
    }
    return h;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section
{
    NSMutableArray *larr = self.myData[section];
    NSInteger count = larr.count;
    ILog(@"s个数%ld",count);
    return count;
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
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
                                      reuseIdentifier:CellIdentifier];
    }
    if (indexPath.section==0&&indexPath.row==0) {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }else{
        if (indexPath.section==1) {
            
            cell.textLabel.text = self.myData[indexPath.section][indexPath.row];
            if(indexPath.row==0)
            {
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }
            else if(indexPath.row==1)
            {
                cell.accessoryType = UITableViewCellAccessoryNone;
                cell.imageView.image = [UIImage imageNamed:@"wodezhiye"];
                cell.detailTextLabel.text = testarr[0];
            }
            else if (indexPath.row==2)
            {
                cell.accessoryType = UITableViewCellAccessoryNone;
                cell.imageView.image = [UIImage imageNamed:@"wodeguanzhu"];
                cell.detailTextLabel.text = testarr[1];
            }
            else if (indexPath.row==3)
            {
                cell.accessoryType = UITableViewCellAccessoryNone;
                cell.imageView.image = [UIImage imageNamed:@"wodenianling"];
                cell.detailTextLabel.text = testarr[2];
            }
            else if (indexPath.row==4)
            {
                cell.accessoryType = UITableViewCellAccessoryNone;
                cell.imageView.image = [UIImage imageNamed:@"gexingqianming"];
                cell.detailTextLabel.text = testarr[3];
            }
        }
        
        if (indexPath.section==2&&indexPath.row==0) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.textLabel.text = self.myData[indexPath.section][indexPath.row];

        }
    
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

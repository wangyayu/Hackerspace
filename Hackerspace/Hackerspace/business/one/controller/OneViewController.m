//
//  OneViewController.m
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "OneViewController.h"
#import "Networking.h"
#import "AFNetworking.h"
#import "ActivityDataModel.h"
#import "ActTableViewCell.h"
#import "NbWEBViewViewController.h"
#import "UIImageView+WebCache.h"
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
    
    ActivityDataModel *m1 = [[ActivityDataModel alloc]init];
    m1.activityPic = @"http://mmbiz.qpic.cn/mmbiz/TNFSM8FTxrciajtFC9AurKQNjrLQjM34SFbYYnhjlecr8eFCV3kJiaadAuE4R6yaUdLzKy1MT3LFSKlY9P2UEN3w/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1";
    m1.activityDescription = @"泥巴创客空间 | 西安创新设计中心（环大）开园了";
    m1.clickAct = @"https://mp.weixin.qq.com/s?timestamp=1469764156&src=3&ver=1&signature=34EsETdtwmS-wWKXJavEtCA2otTzoabbcw31uRvLgI8Q94a02S30nc0E9n3yHB6bJqoQPi8dkwmJHVrPr3ugL1fHJGboCtz4AVnzuejYIYW5VcUyb5bS3MHQCJVS4PBhNq2V*1Xofu35JBKdYWyJTSI*bdLKgWbk0qUHT3TgZf8=";
    
    ActivityDataModel *m2 = [[ActivityDataModel alloc]init];
    m2.activityPic = @"http://mmbiz.qpic.cn/mmbiz/TNFSM8FTxrciajtFC9AurKQNjrLQjM34S9Q0PZ3NZVWpvqvJKPYBTFr4ZCicibyDXKQJCoMQgCLfdxIwjdugiadIow/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1";
    m2.activityDescription = @"阿政的FM988专访 脑洞根本停不下来";
    m2.clickAct = @"https://mp.weixin.qq.com/s?timestamp=1469764156&src=3&ver=1&signature=34EsETdtwmS-wWKXJavEtCA2otTzoabbcw31uRvLgI8Q94a02S30nc0E9n3yHB6bJqoQPi8dkwmJHVrPr3ugL1fHJGboCtz4AVnzuejYIYVbKcA-uIqSWe97wWOnyVOtN-a1SWfqgXAbhPm90In6HH4uJTMYb-JQXF7LX0Lcfrk=";
    
    
    ActivityDataModel *m3 = [[ActivityDataModel alloc]init];
    m3.activityPic = @"http://mmbiz.qpic.cn/mmbiz/TNFSM8FTxrdUS9N27ExWapHLFCWCWmhV4KBNROD7mgcpIk9D9jGicanibVkzMUgzHtM7VadYO2lKicRzqVlhZ8tRA/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1";
    m3.activityDescription = @"老权之夜没空来？蘑菇带你回味现场到底有多酷！";
    m3.clickAct = @"https://mp.weixin.qq.com/s?timestamp=1469765619&src=3&ver=1&signature=34EsETdtwmS-wWKXJavEtEO1x29nAOex2-OtW8A0DRn-6oif7VcgYKkppsjisQRFfYdpRxeGtkCwmXrfdCEwYPuYag7mlm0jinpgPWqR5nbWkQ4I*waUJyNnUUKTkI*HBye9uuazyglZ6SDbZQOrsL2VOYC0o4kvM7BxdwIVEgw=";
    
    self.myData = [[NSMutableArray alloc]init];
    [self.myData addObject:m1];
    [self.myData addObject:m2];
    [self.myData addObject:m3];
}
-(void)initView{
    
    myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style: UITableViewStyleGrouped];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
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
    
    CGFloat h = 200.0;
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
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ActivityDataModel *model = [self.myData objectAtIndex:indexPath.row];
    
    NbWEBViewViewController* webVC = [[NbWEBViewViewController alloc]init];
    webVC.webLink = model.clickAct;
    webVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:webVC animated:YES];
    
    
}

#pragma mark返回每行的单元格
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"ActTableViewCell";
    
    ActTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:nil options:nil] lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.contentView.backgroundColor = [untilisTool stringTOColor:@"#f3f4f6"];
    
    ActivityDataModel *model = [self.myData objectAtIndex:indexPath.row];
    
    if ([model.activityPic hasPrefix:@"http://"])
    {
        [cell.bigimage sd_setImageWithURL:[NSURL URLWithString:model.activityPic]];
    }
    else
    {
        cell.bigimage.image = [UIImage imageNamed:@"HeaderImage"];
    }
    cell.lable_jianjie.text = model.activityDescription;

    return cell;
}
- (UIImage *)cutImage:(UIImage*)image cellW:(CGFloat)with cellH:(CGFloat)height
{
    //压缩图片
    CGSize newSize;
    CGImageRef imageRef = nil;
    
    if ((image.size.width / image.size.height) < (with / height)) {
        newSize.width = image.size.width;
        newSize.height = image.size.width * height / with;
        
        imageRef = CGImageCreateWithImageInRect([image CGImage], CGRectMake(0, fabs(image.size.height - newSize.height) / 2, newSize.width, newSize.height));
        
    } else {
        newSize.height = image.size.height;
        newSize.width = image.size.height * with / height;
        
        imageRef = CGImageCreateWithImageInRect([image CGImage], CGRectMake(fabs(image.size.width - newSize.width) / 2, 0, newSize.width, newSize.height));
        
    }
    
    return [UIImage imageWithCGImage:imageRef];
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

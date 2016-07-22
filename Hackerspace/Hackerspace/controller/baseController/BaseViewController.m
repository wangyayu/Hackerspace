//
//  BaseViewController.m
//
//
//  Created by miller on 14/12/15.
//  Copyright (c) 2014年 yayu wang. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [untilisTool stringTOColor:@"#f3f4f6"];
    [self checkSystemAdjustView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addTitleViewWithTitle:(NSString *)title{
    //创建一个label
    UILabel *label = [[UILabel alloc]initWithFrame:
                      CGRectMake(0, 0, 100*(kSCREEN_WIDTH/320), 40)];
    label.text = title;
    label.textColor = [UIColor blackColor];
    label.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:18];
    label.textAlignment = NSTextAlignmentCenter;
    
    //作为导航条的标题视图
    //属于当前视图控制器的
    self.navigationItem.titleView = label;
}

- (void)addBarButtonItemWithTitle:(NSString *)title
                        imageName:(NSString *)imageName frame:(CGRect)frame
                           target:(id)target action:(SEL)action
                           isLeft:(BOOL)isLeft isCircle:(BOOL)isCircle{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
    if (isCircle) {
        button.layer.masksToBounds = YES;
        button.layer.cornerRadius = 10;
    }
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:[UIColor blackColor]
                 forState:UIControlStateNormal];
    
    [button addTarget:target action:action
     forControlEvents:UIControlEventTouchUpInside];
    
    [button setBackgroundImage:[UIImage imageNamed:imageName]
                      forState:UIControlStateNormal];
//    [button setBackgroundColor:[UIColor cyanColor]];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
    if (isLeft) {
        self.navigationItem.leftBarButtonItem = item;
    }else{
        self.navigationItem.rightBarButtonItem = item;
    }
}

-(void)checkSystemAdjustView{
    if (IOS_VERSION_7_OR_LATER) {
        [self.navigationController.navigationBar setTranslucent:NO];
    }
}

-(UIButton *)creatCustomButtonFrame:(CGRect)frame title:(NSString *)title
                             target:(id)target action:(SEL)action
                                tag:(NSInteger)tag{
    
    UIButton * allSelectButton = [UIButton buttonWithType:UIButtonTypeSystem];
    allSelectButton.frame = frame;
    
    [allSelectButton setTitle:title forState:UIControlStateNormal];
    
    allSelectButton.titleLabel.textColor = [UIColor blackColor];
    
    [allSelectButton addTarget:target action:action
              forControlEvents:UIControlEventTouchUpInside];
    
    allSelectButton.tag = tag;
    return  allSelectButton;
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

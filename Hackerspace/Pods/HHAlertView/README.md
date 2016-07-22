# HHAlertView
An iOS AlertView Library ,with Error,Success,Warning 

 ![image](https://raw.githubusercontent.com/mrchenhao/HHAlertView/master/images/error.png)
 
 It's very esay to use HHAlertView

##setup

### use pod

 ```
 pod 'HHAlertView', '~> 0.1.0'
 
 ```
 
## How to use
 
 ```
 HHAlertView *alertview = [[HHAlertView alloc] initWithTitle:@"成功" detailText:@"恭喜你，操作顺利的实行了！\n换个行试试看效果" cancelButtonTitle:nil otherButtonTitles:@[@"确定"]];
 [alertview setEnterMode:HHAlertEnterModeTop];
 [alertview setLeaveMode:HHAlertLeaveModeBottom];
 [alertview showWithBlock:^(NSInteger index) {
    NSLog(@"%ld",index);
 }];
 
 ```
 
 there are three styles
 
 ```
 HHAlertViewModeSuccess,
 HHAlertViewModeError,
 HHAlertViewModeWarning,
 HHAlertViewModeInfo,
 HHAlertViewModeDefault,
 HHAlertViewModeCustom
 ```
 
It's easy to use,enjoy it!
 
## demo
 
 ![image](https://raw.githubusercontent.com/mrchenhao/HHAlertView/master/images/success.png)
 
 ![image](https://raw.githubusercontent.com/mrchenhao/HHAlertView/master/images/warning.png)
 
 
## Todo

* custom the way to come 
 
Email:info@mrchenhao.com

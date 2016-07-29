//
//  ADTestViewController.h
//  Hackerspace
//
//  Created by macmi001 on 16/7/29.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ADTestViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *adImage;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;
- (IBAction)sendButClick:(id)sender;

@end

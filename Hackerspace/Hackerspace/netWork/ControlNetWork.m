//
//  ControlNetWork.m
//  OA5173
//
//  Created by wangyayu on 16/5/30.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "ControlNetWork.h"

@implementation ControlNetWork


static ControlNetWork * _sharedInstance;

#pragma mark - Singleton Instance
+ (ControlNetWork *)sharedInstance
{
    @synchronized(self){
        if(_sharedInstance == nil) {
            _sharedInstance = [[ControlNetWork alloc] init];
        }
        return _sharedInstance;
    }
}





@end

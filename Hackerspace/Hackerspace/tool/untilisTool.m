//
//  untilisTool.m
//  OA5173
//
//  Created by wangyayu on 16/5/25.
//  Copyright © 2016年 wangyy. All rights reserved.
//
/*
 
 工具类处理一些简单的数据
 */
#import "untilisTool.h"

@implementation untilisTool

#pragma mark - 三基色
+(UIColor *) stringTOColor:(NSString *)str
{
    if (!str || [str isEqualToString:@""]) {
        return nil;
    }
    unsigned red,green,blue;
    NSRange range;
    range.length = 2;
    range.location = 1;
    [[NSScanner scannerWithString:[str substringWithRange:range]]
     
     scanHexInt:&red];
    range.location = 3;
    [[NSScanner scannerWithString:[str substringWithRange:range]]
     
     scanHexInt:&green];
    range.location = 5;
    [[NSScanner scannerWithString:[str substringWithRange:range]]
     
     scanHexInt:&blue];
    UIColor *color= [UIColor colorWithRed:
                     red/255.0f green:green/255.0f blue:blue/255.0f alpha:1];
    return color;
}
@end

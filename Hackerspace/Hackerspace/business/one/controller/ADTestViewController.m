//
//  ADTestViewController.m
//  Hackerspace
//
//  Created by macmi001 on 16/7/29.
//  Copyright © 2016年 wangyy. All rights reserved.
//

#import "ADTestViewController.h"
#import "Networking.h"
#import "AFNetworking.h"
#import "ADDataModel.h"

@interface ADTestViewController ()

@end

@implementation ADTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)sendButClick:(id)sender {
    ADDataModel *adata = [[ADDataModel alloc]init];
    
    adata.l = @"1";
    adata.r = @"0";
    adata.v = @"1";
    adata.bt = @"0";
    adata.m_os = @"iOS";
    adata.m_os_v = @"9.3";
    adata.m0 = @"2f815cc42445938226783d6a4d750db4dd51a367";
    adata.m1 = @"0000";
    adata.m2 = @"4A7D1ED414474E4033AC29CCB8653D9B";
    adata.m3 = @"0000";
    adata.m4 = @"4A7D1ED414474E4033AC29CCB8653D9B";
    adata.m5 = @"F17P63NWG5MN";
    adata.m6 = @"3a:c9:86:e4:da:00";
    adata.m7 = @"3ac986e4da00";
    adata.m8 = @"123131323";
    adata.m_duid = @"1231312";
    
    adata.m_app = @"5173";
    adata.m_app_pn = @"sp.bundleID";
    adata.m_itid = @"adad";
    adata.m_cat = @"1";
    adata.m_mkt = @"1";
    adata.m_mkt_app = @"5173";
    adata.m_mkt_cat = @"sp.bundleID";
    adata.m_mkt_cat = @"adad";
    
    adata.m_adw = @"1000";
    adata.m_adh = @"1000";
    adata.m_stype = @"1";
    adata.m_int = @"0";
    adata.m_opr = @"3";
    adata.m_net = @"2";
    adata.m_ip = @"192.168.0.1";
    adata.m_ua = @"11";
    adata.m_ts = @"111123123123";
    adata.m_dvw = @"1404";
    adata.m_dvh = @"1404";
    adata.m_mfr = @"1404";
    adata.m_mdl = @"11213";
    adata.m_sdk = @"1.0";
    adata.m_lan = @"english";
    adata.m_brk = @"0";
    adata.m_pos = @"1111,8888";
    adata.m_ssid = @"yycc";
    
    
    NSString *adJSON = [adata modelToJSONString];
    ILog(@"对象转json:%@",adJSON);
    
    NSDictionary *dic = [self dictionaryWithJsonString:adJSON];
    
    ILog(@"json转字典:%@",dic);
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    
    
    
    
    
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    manager.requestSerializer.stringEncoding = NSUTF8StringEncoding;
    
    
    AFSecurityPolicy *securityPolicy = [[AFSecurityPolicy alloc] init];
    [securityPolicy setAllowInvalidCertificates:YES];
    [manager setSecurityPolicy:securityPolicy];
    
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    // 执行请求
    [manager POST:@"http://192.168.80.121:81/mar"
       parameters:@{@"l":@"1",
                    @"r":@0,
                    @"v":@1,
                    @"bt":@0,
                    @"m_os":@2,
                    @"m_adw":@1000,
                    @"m_adh":@400,
                    @"m_cat":@01,
                    @"m_os_v":@"9.3",
                    @"m_app":@"5173",
                    @"m1":@"0000",
                    @"m5":@"F17P63NWG5MN",
                    @"m_app_pn":@"sp.bundleID",
                    @"m0":@"2f815cc42445938226783d6a4d750db4dd51a367",
                    @"m6":@"3a:c9:86:e4:da:00",
                    @"m_stype":@1
                    }
          success:^(AFHTTPRequestOperation *operation, id responseObject) {
              NSLog(@"广告返回%@", responseObject);
              
              NSDictionary *attributes = [responseObject valueForKeyPath:@"result"];
              
              ILog(@"result:%@",attributes);
          }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
              NSLog(@"错误%@", error);
          }];
}

/*!
 * @brief 把格式化的JSON格式的字符串转换成字典
 * @param jsonString JSON格式的字符串
 * @return 返回字典
 */
- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
@end

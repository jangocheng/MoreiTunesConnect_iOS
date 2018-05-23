//
//  MTCNetwork.m
//  MoreiTunes
//
//  Created by Dwang on 2018/3/4.
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import "MTCNetwork.h"
#import <DWNetworking.h>

@implementation MTCNetwork

+ (void)setHeader {
    [DWNetworking setConfigRequestType:DWRequestTypeJSON responseType:DWResponseTypeJSON];
    [DWNetworking setHttpHeaderConfig:@{
                                        @"X-Apple-Widget-Key":@"e0b80c3bf78523bfe80974d320935bfa30add02e1bff88ec2166c6bd5a706c42",
                                        @"Origin":@"https://idmsa.apple.com",
                                        @"Content-Type":@"application/json",
                                        @"Accept":@"application/json, text/javascript, */*; q=0.01",
                                        }];
}

+ (void)postUrl:(NSString *)url params:(NSDictionary *)params callBack:(void(^)(id success, NSError *error))callBack {
    [DWNetworking postUrlString:url params:params resultCallBack:^(id success, NSError *error, BOOL isCache) {
        callBack(success, error);
    }];
}

+ (void)getUrl:(NSString *)url callBack:(void(^)(id success, NSError *error))callBack {
    [DWNetworking getUrlString:url params:nil resultCallBack:^(id success, NSError *error, BOOL isCache) {
        callBack(success, error);
    }];
}

@end

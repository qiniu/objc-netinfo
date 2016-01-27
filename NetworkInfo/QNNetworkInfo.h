//
//  NetUtil.h
//  NetUtil
//
//  Created by bailong on 16/1/27.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, QNNetWorkType) {
    QNNetWorkType_None = 0,
    QNNetWorkType_WIFI,
    QNNetWorkType_MOBILE,
};

@interface QNNetworkInfo : NSObject

+ (NSString *)deviceIP;

+ (NSArray *)localDNSServers;

+ (QNNetWorkType)networkType;

+ (NSString *)networkDescription;

@end

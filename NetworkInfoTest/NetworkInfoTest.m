//
//  NetworkInfoTest.m
//  NetworkInfoTest
//
//  Created by bailong on 16/1/27.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "QNNetworkInfo.h"

@interface NetworkInfoTest : XCTestCase

@end

@implementation NetworkInfoTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDeviceIp {
    NSString* ip = [QNNetworkInfo deviceIP];
    NSLog(@"device ip %@", ip);
    XCTAssert(ip, @"Pass");
}


- (void)testNetworkType {
    QNNetWorkType t = [QNNetworkInfo networkType];
    NSLog(@"network type %lu", (unsigned long)t);
    XCTAssert(t == QNNetWorkType_WIFI, @"Pass");
}

- (void)testNetworkDescription {
    NSString* desc = [QNNetworkInfo networkDescription];
    NSLog(@"network desc %@", desc);
    XCTAssertEqualObjects(desc, @"WIFI", @"PASS");
}

- (void)testDNSServer {
    NSArray* dns = [QNNetworkInfo localDNSServers];
    XCTAssert(dns, @"Pass");
    XCTAssert(dns.count, @"Pass");
    NSLog(@"device dns server %@", dns[0]);
    XCTAssert(dns[0], @"Pass");
}

@end

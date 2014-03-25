//
//  MyAFWrapper.m
//  AFNetworkReachabilityTest
//
//  Created by Josh Wood on 26/03/14.
//  Copyright (c) 2014 Josh Wood. All rights reserved.
//

#import "MyAFWrapper.h"
#import "AFNetworking.h"

@implementation MyAFWrapper

+ (BOOL)apiIsReachable {
    static AFNetworkReachabilityManager *reachability;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        // domain @"http://www.apple.com" does not work. Always unreachable.
        reachability = [AFNetworkReachabilityManager managerForDomain:@"www.apple.com"];
        [reachability startMonitoring];
    });
    
    return reachability.isReachable;
}

@end

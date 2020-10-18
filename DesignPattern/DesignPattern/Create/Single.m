//
//  Single.m
//  DesignPattern
//
//  Created by SUGAR Dev on 2020/10/18.
//  Copyright © 2020 Yanci. All rights reserved.
//

#import "Single.h"

static Single *shareInstance;
 
@implementation Single

- (Single *)share {
    /// dispatch_once 底层是使用互斥信号实现的，线程安全
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [Single new];
    });
    return shareInstance;
}


@end

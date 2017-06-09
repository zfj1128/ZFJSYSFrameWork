//
//  Projectinfo.m
//  ZFJSYSFrameWork
//
//  Created by ZFJ on 2017/6/9.
//  Copyright © 2017年 ZFJ. All rights reserved.
//

#import "Projectinfo.h"

@implementation Projectinfo

/**
 *  个人信息单例
 */
+ (Projectinfo *)manager{
    static Projectinfo *person;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        person = [[Projectinfo alloc]init];
    });
    return person;
}

/**
 *  释放单例
 */
- (void)resetProjectinfo{
    
}

@end

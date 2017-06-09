//
//  Projectinfo.h
//  ZFJSYSFrameWork
//
//  Created by ZFJ on 2017/6/9.
//  Copyright © 2017年 ZFJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Projectinfo : NSObject


/**
 *  个人信息单例
 */
+ (Projectinfo *)manager;

/**
 *  释放单例
 */
- (void)resetProjectinfo;

@end

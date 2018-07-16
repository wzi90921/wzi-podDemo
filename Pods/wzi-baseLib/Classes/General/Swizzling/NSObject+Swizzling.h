//
//  NSObject+Swizzling.h
//  Test
//
//  Created by 魏梓雄 on 2017/8/23.
//  Copyright © 2017年 魏梓雄. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzling)

+ (void)methodSwizzlingWithOriginalSelector:(SEL)originalSelector
                         bySwizzledSelector:(SEL)swizzledSelector;

@end

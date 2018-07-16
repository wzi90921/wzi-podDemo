//
//  UIScrollView+Swizzling.m
//  StarPlanForParent
//
//  Created by 魏梓雄 on 2017/8/23.
//  Copyright © 2017年 Guangzhou Shiny Read Education Technology  Shiny Read Education. All rights reserved.
//

#import "UIScrollView+Swizzling.h"
#import "NSObject+Swizzling.h"
#import "NSObject+Dealloc.h"


@implementation UIScrollView (Swizzling)

+ (void)load {
    if(([[UIDevice currentDevice].systemVersion doubleValue] < 9.0)){
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            [self methodSwizzlingWithOriginalSelector:@selector(setDelegate:) bySwizzledSelector:@selector(myselfSetDelegate:)];
            [self hookNSObjectDealloc];
            
        });
    }
}



- (void)myselfSetDelegate:(NSObject *)delegate{
    [self myselfSetDelegate:delegate];
    if (delegate) {
        UIScrollView * __weak weak_self = (UIScrollView *)self;
        [delegate setDeallocCallback:^{
            weak_self.delegate = nil;
        }];
    }
}

@end

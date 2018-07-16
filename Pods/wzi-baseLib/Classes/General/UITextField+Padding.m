//
//  UITextField+Padding.m
//  StarPlanForParent
//
//  Created by Ian on 16/3/21.
//  Copyright © 2016年 Guangzhou Shiny Read Education Technology  Shiny Read Education. All rights reserved.
//

#import "UITextField+Padding.h"

@implementation UITextField (Padding)

- (void)setLeftViewWithImageView:(UIImageView*)imageView leftPadding:(float)leftPadding rightPadding:(float)rightPadding
{
    CGRect frame = imageView.frame;
    frame.origin.x = rightPadding;
    imageView.frame = frame;
    
    float height = CGRectGetHeight(frame);
    float width =  CGRectGetWidth(frame) + leftPadding + rightPadding;
    
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    
    [paddingView addSubview:imageView];
    
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
}

- (void)setLeftPadding:(float)leftPadding
{
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                   0,
                                                                   leftPadding,
                                                                   CGRectGetHeight(self.frame))];
    
    
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
}

@end

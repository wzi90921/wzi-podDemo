//
//  NSObject+Property.h
//  StarPlanForParent
//
//  Created by WZI on 16/3/18.
//  Copyright © 2016年 Guangzhou Shiny Read Education Technology  Shiny Read Education. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Property)

/**
 *  获取对象的所有属性和属性内容
 */
- (NSDictionary *)sr_getAllPropertiesAndVaules;

/**
 *  获取对象的所有属性
 */
- (NSArray *)sr_getAllProperties;

/**
 *  获取对象的所有方法
 */
-(void)sr_getAllMethods;


@end

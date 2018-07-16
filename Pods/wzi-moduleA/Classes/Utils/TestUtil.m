//
//  TestUtil.m
//  AFNetworking
//
//  Created by 魏梓雄 on 2018/3/28.
//

#import "TestUtil.h"

@implementation TestUtil

-(void)test{
    NSLog(@"ModuleA的TestUtil，test方法被调用！");
}

-(void)testImage{
    UIImage *image = [UIImage imageNamed:@"res_icon_2"];
    NSLog(@"这是 s.resources 写法的，加载的iamge==%@",image);
}

@end

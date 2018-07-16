//
//  BaseLibTestUtil.m
//  AFNetworking
//
//  Created by 魏梓雄 on 2018/3/28.
//

#import "BaseLibTestUtil.h"

@implementation BaseLibTestUtil

-(void)testImage{
    //写法一
    UIImage *image2 = [UIImage imageNamed:@"res_bundle.bundle/bundle_icon_1"];
    //写法二
//    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
//    NSString *image_url = [[bundle resourcePath] stringByAppendingPathComponent:@"res_bundle.bundle/bundle_icon_1"];
//    UIImage *image2 = [UIImage imageWithContentsOfFile:image_url];


    NSLog(@"这是 s.resource_bundles 写法的，加载的iamge==%@",image2);
}

@end

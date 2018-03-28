//
//  FirstViewController.m
//  PodDemo
//
//  Created by 魏梓雄 on 2018/3/27.
//  Copyright © 2018年 魏梓雄. All rights reserved.
//

#import "FirstViewController.h"
#import "LoginViewController.h"
#import "TestUtil.h"
#import "BaseLibTestUtil.h"

@interface FirstViewController ()

@property(nonatomic,weak) IBOutlet UIButton *button;
@property(nonatomic,weak) IBOutlet UIImageView *baseLibImageView;
@property(nonatomic,weak) IBOutlet UIImageView *ModuleAImageView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestUtil *testUtil = [[TestUtil alloc] init];
    [testUtil test];
    [testUtil testImage];
    
    BaseLibTestUtil *baseLibTestUtil = [[BaseLibTestUtil alloc] init];
    [baseLibTestUtil testImage];
    
    
    self.ModuleAImageView.image  = [UIImage imageNamed:@"res_icon_2"];
    
    self.baseLibImageView.image  = [UIImage imageNamed:@"res_bundle.bundle/bundle_icon_1"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[LoginViewController alloc] init]];
    [self presentViewController:nav animated:YES completion:nil];
}


@end

//
//  LKMainViewController.m
//  FloatingListView
//
//  Created by 李凯 on 2018/11/29.
//  Copyright © 2018年 李凯. All rights reserved.
//

#import "LKMainViewController.h"
#import "UIImage+RenderingImage.h"

@interface LKMainViewController ()

@end

@implementation LKMainViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initNavigationBar];
}

#pragma mark - init
- (void)initNavigationBar {
    self.title = @"首页";
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNameWithRenderingModeAlwaysOriginal:@"btn_add"] style:UIBarButtonItemStylePlain target:self action:@selector(rightItemOnClick:)];
    self.navigationItem.rightBarButtonItem = rightItem;
}

#pragma mark - private function
- (void)rightItemOnClick: (UIBarButtonItem *)sender {
    
    
}

@end

//
//  ViewController4.m
//  Hahn_Pop_Objc
//
//  Created by Hahn on 2019/12/5.
//  Copyright © 2019 Hahn. All rights reserved.
//

#import "ViewController4.h"
#import "MainViewController.h"

@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [backBtn setTitle:@"自定义返回按钮" forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:backBtn];
    
    UIBarButtonItem *leftBarBtn = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:self action:@selector(backBtn)];
    leftBarBtn.image = [UIImage imageNamed:@"backBtn_black"];
    [leftBarBtn setImageInsets:UIEdgeInsetsMake(0, -90, 0, 0)];
    self.navigationItem.hidesBackButton = YES;
    self.navigationItem.leftBarButtonItem = leftBarBtn;
}

#pragma mark - 返回按钮
- (void)backBtn
{

    /**
    通过循环找到指定控制器返回
    @param MainViewController 返回的指定控制器
    */
    
    for (UIViewController *vc in self.navigationController.viewControllers) {
        if ([vc isKindOfClass:[MainViewController class]]) {
            [self.navigationController popToViewController:vc animated:YES];
        }
    }
}


@end

//
//  ViewController3.m
//  Hahn_Pop_Objc
//
//  Created by Hahn on 2019/12/5.
//  Copyright © 2019 Hahn. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController1.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    /**
    通过循环找到指定控制器删除
    @param ViewController1 返回的指定控制器
    */
    
    for (UIViewController *vc in self.navigationController.viewControllers) {
        if ([vc isKindOfClass:[ViewController1 class]]) {
            [vc removeFromParentViewController];
        }
    }
    
    
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [backBtn setTitle:@"自定义返回按钮" forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:backBtn];
}


#pragma mark - 返回按钮
- (void)backBtn
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end

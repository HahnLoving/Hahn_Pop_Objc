//
//  ViewController1.m
//  Hahn_Pop_Objc
//
//  Created by Hahn on 2019/12/5.
//  Copyright © 2019 Hahn. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController3.h"


@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(pushBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:pushBtn];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    // 界面消失的时候隐藏返回按钮
    self.navigationItem.hidesBackButton = YES;
}

#pragma mark - push按钮
- (void)pushBtn
{
    ViewController3 *vc = [ViewController3 new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end

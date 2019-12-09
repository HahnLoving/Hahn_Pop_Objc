//
//  ViewController2.m
//  Hahn_Pop_Objc
//
//  Created by Hahn on 2019/12/5.
//  Copyright © 2019 Hahn. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController4.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(pushBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:pushBtn];
}

#pragma mark - push按钮
- (void)pushBtn
{
    ViewController4 *vc = [ViewController4 new];
    [self.navigationController pushViewController:vc animated:YES];
}
@end

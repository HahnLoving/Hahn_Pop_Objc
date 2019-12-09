//
//  customNavigation.m
//  meiZhouHelp
//
//  Created by Hahn on 2019/7/18.
//  Copyright © 2019 Hahn. All rights reserved.
//

#import "CustomNavigationViewController.h"

@interface CustomNavigationViewController()<UIGestureRecognizerDelegate>

@end

@implementation CustomNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.interactivePopGestureRecognizer.delegate = self;
}


+ (instancetype)navController:(id)vc{
    CustomNavigationViewController *naVC = [[self alloc] initWithRootViewController:vc];
    naVC.navigationBar.translucent = NO;
    naVC.navigationBar.tintColor = [UIColor whiteColor];
    return naVC;
}

//重写方法：shouldAutorotate 和 supportedInterfaceOrientations
//支持旋转

-(BOOL)shouldAutorotate{
    
    return [self.topViewController shouldAutorotate];
    
}

//支持的方向

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return [self.topViewController supportedInterfaceOrientations];
    
}




#pragma mark - UIGestureRecognizerDelegate
//  防止导航控制器只有一个rootViewcontroller时触发手势
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {
    
    if (self.childViewControllers.count == 1) {
        return NO;
    }else{
        return YES;
    }
}


@end

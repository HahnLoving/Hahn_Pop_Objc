//
//  customNavigation.h
//  meiZhouHelp
//
//  Created by Hahn on 2019/7/18.
//  Copyright © 2019 Hahn. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomNavigationViewController : UINavigationController

// 单例
+ (instancetype)navController:(id)vc;

@end

NS_ASSUME_NONNULL_END

//
//  MainViewController.m
//  Hahn_Pop_Objc
//
//  Created by Hahn on 2019/12/5.
//  Copyright © 2019 Hahn. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

// 屏幕的宽高
#define SCRENNW ([[UIScreen mainScreen] bounds].size.width)
#define SCRENNH ([[UIScreen mainScreen] bounds].size.height)

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation MainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCRENNW, SCRENNH) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [UITableViewCell new];
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"返回指定界面(没有包含手势返回)";
            break;
            
        case 1:
            cell.textLabel.text = @"返回指定界面(包含手势返回)";
            break;
            
        default:
            break;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            ViewController2 *vc = [ViewController2 new];
            [self.navigationController pushViewController:vc animated:true];
        }
            break;
            
        case 1:
        {
            ViewController1 *vc = [[ViewController1 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}

@end

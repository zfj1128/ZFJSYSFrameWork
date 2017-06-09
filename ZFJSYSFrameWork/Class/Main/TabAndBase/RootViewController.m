//
//  RootViewController.m
//  ZFJSYSFrameWork
//
//  Created by ZFJ on 2017/6/9.
//  Copyright © 2017年 ZFJ. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic,strong) NSArray *controllArray;
@property (nonatomic,strong) NSArray *titleArray;
@property (nonatomic,assign) NSInteger selectIndex;//tabbar选择顺序

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createViewController];
}

- (void)createViewController{
    NSMutableArray *Viewcontrolls = [NSMutableArray array];
    for (int i=0; i<self.controllArray.count; i++) {
        UIViewController *con = [[NSClassFromString([self.controllArray objectAtIndex:i])alloc]init];
        UINavigationController *nvc = [[UINavigationController alloc]initWithRootViewController:con];
        con.title = [self.titleArray objectAtIndex:i];
        self.tabBar.tintColor = MainColor;
//        nvc.tabBarItem.image = [UIImage imageNamed:self.iconArray[i]];
//        nvc.tabBarItem.selectedImage  = [[UIImage imageNamed:self.selectIconArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [Viewcontrolls addObject:nvc];
    }
    self.viewControllers = Viewcontrolls;
}
#pragma mark - UITabBarControllerDelegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    self.selectIndex = [self.viewControllers indexOfObject:viewController];
    return YES;
}

- (NSArray *)controllArray{
    if(_controllArray == nil){
        _controllArray = @[@"HomeViewController",@"MineViewController"];
    }
    return _controllArray;
}

- (NSArray *)titleArray{
    if(_titleArray == nil){
        _titleArray = @[@"首页",@"我的"];
    }
    return _titleArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

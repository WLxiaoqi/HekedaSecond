//
//  JXMyTabBarController.m
//  即刻出行
//
//  Created by WeiBang on 16/5/3.
//  Copyright © 2016年 WeiBang. All rights reserved.
//

#import "JXMyTabBarController.h"
#import "JXMyNavigationController.h"
#import "JXHomeViewController.h"
#import "JXMapViewController.h"
#import "JXMessageViewController.h"
#import "JXProfileViewController.h"

@interface JXMyTabBarController ()

@end

@implementation JXMyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    JXHomeViewController *homeVc = [[JXHomeViewController alloc] init];
    [self addOneChildVc:homeVc withItemTitle:@"公交" withImage:@"" withSelectedImage:@""];
    
    JXMapViewController *MapVc = [[JXMapViewController alloc] init];
    [self addOneChildVc:MapVc withItemTitle:@"导航" withImage:@"" withSelectedImage:@""];
    
    JXMessageViewController *messageVc = [[JXMessageViewController alloc] init];
    [self addOneChildVc:messageVc withItemTitle:@"资讯" withImage:@"" withSelectedImage:@""];
    
    JXProfileViewController *profileVc = [[JXProfileViewController alloc] init];
    [self addOneChildVc:profileVc withItemTitle:@"我的" withImage:@"" withSelectedImage:@""];
}

- (void)addOneChildVc:(UIViewController *)childVc withItemTitle:(NSString *)title withImage:(NSString *)imageName withSelectedImage:(NSString *)selectedImageName{
    
    childVc.title = title;
    
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    childVc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    
    JXMyNavigationController *nav = [[JXMyNavigationController alloc] initWithRootViewController:childVc];
    
    [self addChildViewController:nav];
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

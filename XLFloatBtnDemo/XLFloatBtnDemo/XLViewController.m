//
//  XLViewController.m
//  XLFloatBtnDemo
//
//  Created by 李小龙 on 2018/12/24.
//  Copyright © 2018 李小龙. All rights reserved.
//

#import "XLViewController.h"
#import "OneViewController.h"
@interface XLViewController ()

@end

@implementation XLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self baseSetting];
    
    [self setupUI];
}


#pragma mark - baseSetting
- (void)baseSetting{
    self.title = @"startDemo";
    self.view.backgroundColor = [UIColor whiteColor];
}

#pragma mark - setupUI
- (void)setupUI{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(pushToNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)pushToNext{
    
    OneViewController *nextVC = [[OneViewController alloc]init];
    [self.navigationController pushViewController:nextVC animated:YES];
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

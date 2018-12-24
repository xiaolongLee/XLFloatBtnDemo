//
//  OneViewController.m
//  XLFloatBtnDemo
//
//  Created by 李小龙 on 2018/12/24.
//  Copyright © 2018 李小龙. All rights reserved.
//

#import "OneViewController.h"
#import "XLFloatBtn.h"
@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"nextVC";
    UIColor *randomColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
    self.view.backgroundColor = randomColor;
    
    UIButton *removeBtn = [[UIButton alloc]init];
    removeBtn.frame = CGRectMake(0, 100, 150, 40);
    [removeBtn setTitle:@"remove" forState:UIControlStateNormal];
    [removeBtn setTitle:@"show" forState:UIControlStateSelected];
    [removeBtn addTarget:self action:@selector(p_removeBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:removeBtn];
}

- (void)p_removeBtn:(UIButton *)sender{
    
    sender.selected = !sender.selected;
    
    sender.selected ? [XLFloatBtn hidden] : [XLFloatBtn show];
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

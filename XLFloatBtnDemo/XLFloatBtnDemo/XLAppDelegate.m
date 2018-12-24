//
//  XLAppDelegate.m
//  XLFloatBtnDemo
//
//  Created by 李小龙 on 2018/12/24.
//  Copyright © 2018 李小龙. All rights reserved.
//

#import "XLAppDelegate.h"
#import "XLViewController.h"
#import "XLFloatBtn.h"
@implementation XLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    XLViewController *vc = [[XLViewController alloc]init];
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navi;
    [self.window makeKeyAndVisible];
    //延迟加载VersionBtn - 避免wimdow还没出现就往上加控件造成的crash
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self setVersionBtn];
    });
    
    return YES;
}

-(void)setVersionBtn{
    
    [XLFloatBtn show];
    XLFloatBtn *btn = [XLFloatBtn getFloatBtn];
    btn.btnClick = ^(UIButton *sender) {
        
        NSLog(@" btn.btnClick ~");
    };
}

@end

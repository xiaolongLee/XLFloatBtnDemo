//
//  XLFloatBtn.h
//  XLFloatBtnDemo
//
//  Created by 李小龙 on 2018/12/24.
//  Copyright © 2018 李小龙. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, XLAssistiveTouchType)
{
    XLAssistiveTypeNone = 0,   //自动识别贴边
    XLAssistiveTypeNearLeft,   //拖动停止之后，自动向左贴边
    XLAssistiveTypeNearRight,  //拖动停止之后，自动向右贴边
};
NS_ASSUME_NONNULL_BEGIN

@interface XLFloatBtn : UIButton
typedef void (^floatBtnClick)(UIButton *sender);

//任何模式都显示floatBtn
+ (void)show;

//任何模式下都显示floatBtn - 并设置float吸附设置
+ (void)showWithType:(XLAssistiveTouchType)type;

//仅在Debug模式下显示floatBtn(**推荐这种设置，防止floatBtn跑生产环境上**)
+ (void)showDebugMode;

//移除floatBtn在界面显示
+ (void)hidden;

//获取floatBtn单例对象
+ (instancetype)getFloatBtn;

//按钮点击事件
@property (nonatomic, copy)floatBtnClick btnClick;
@end

NS_ASSUME_NONNULL_END

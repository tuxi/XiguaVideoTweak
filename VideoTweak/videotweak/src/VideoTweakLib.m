//
//  VideoTweakLib.m
//  VideoTweak
//
//  Created by xiaoyuan on 2018/1/13.
//  Copyright © 2018年 alpface. All rights reserved.
//

#import "VideoTweakLib.h"
#import "VideoHeaders.h"
#import "MBProgressHUD+XYHUD.h"
#import "XYConsoleView.h"
#import "ExceptionUtils.h"
#import "FoldersViewController.h"
#import "UIViewController+XYExtensions.h"
#import "RuntimeInvoker.h"
#import "Aspects.h"
#import <objc/runtime.h>
#import "XYSuspensionWebView.h"
#import "XYQuestionAnswerUnit.h"
#import "XYQuestionAnswerHookHelper.h"

#pragma clang diagnostic ignored "-Wunused-function"
#pragma clang diagnostic ignored "-Wformat"
#pragma clang diagnostic ignored "-Wunused-variable"


static __attribute__((constructor)) void entry() {
    
    
    DLog(@"\n 🎉 🎉 🎉🎉 🎉 🎉!!！Tweak!!！🎉🎉 🎉 🎉\n👍👍👍👍👍👍👍👍👍👍insert dylib success👍👍👍👍👍👍👍👍👍👍🎉🎉 🎉 🎉🎉 🎉 🎉!");
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
        [ExceptionUtils configExceptionHandler];
        [[XYQuestionAnswerHookHelper helper] configDeviceHook];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            XYSuspensionMenu *menuView = [[XYSuspensionMenu alloc] initWithFrame:CGRectMake(0, 0, 300, 300) itemSize:CGSizeMake(50, 50)];
            UIImage *iconImage = [UIImage imageNamed:@"alpface.bundle/menIcon.png"];
            if (!iconImage) {
                [menuView.centerButton setBackgroundColor:[UIColor redColor]];
            }
            else {
                [menuView.centerButton setImage:iconImage forState:UIControlStateNormal];
            }
            menuView.shouldOpenWhenViewWillAppear = NO;
            menuView.shouldHiddenCenterButtonWhenOpen = YES;
            menuView.shouldCloseWhenDeviceOrientationDidChange = YES;
            {
                HypotenuseAction *item1 = [HypotenuseAction actionWithType:1 handler:^(HypotenuseAction * _Nonnull action, SuspensionMenuView * _Nonnull menuView) {
                    FoldersViewController *vc = [[FoldersViewController alloc] initWithRootDirectory:NSHomeDirectory()];
                    vc.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:vc action:NSSelectorFromString(@"backButtonClick")];
                    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:vc];
                    UIViewController *rootVc = [UIApplication sharedApplication].delegate.window.rootViewController;
                    [rootVc showDetailViewController:navController sender:rootVc];
                    [menuView close];
                    
                }];
                [menuView addAction:item1];
                [item1.hypotenuseButton setTitle:@"操作\n 沙盒" forState:UIControlStateNormal];
                [item1.hypotenuseButton setBackgroundColor:[UIColor whiteColor]];
                item1.hypotenuseButton.layer.cornerRadius = 10.0;
            }
            {
                HypotenuseAction *item = [HypotenuseAction actionWithType:1 handler:^(HypotenuseAction * _Nonnull action, SuspensionMenuView * _Nonnull menuView) {
                    
                    if ([[XYQuestionAnswerHookHelper helper] hasQuizShowLiveRoomHook] == NO) {
                        [[XYQuestionAnswerHookHelper helper] configQuizShowLiveRoomHook];
                        [MBProgressHUD xy_showMessage:@"已打开百万英雄直播间辅助"];
                        [action.hypotenuseButton setAttributedTitle:[[NSAttributedString alloc] initWithString:@"关闭百万英雄辅助" attributes:@{NSForegroundColorAttributeName: [UIColor blueColor]}] forState:UIControlStateNormal];
                    }
                    else {
                        [[XYQuestionAnswerHookHelper helper] removeQuizShowLiveRoomHook];
                        [action.hypotenuseButton setAttributedTitle:[[NSAttributedString alloc] initWithString:@"开启辅助" attributes:@{NSForegroundColorAttributeName: [UIColor redColor]}] forState:UIControlStateNormal];
                        [MBProgressHUD xy_showMessage:@"移除百万英雄直播间辅助"];
                    }
                    
                    [menuView close];
                    
                }];
                [menuView addAction:item];
                [item.hypotenuseButton setTitle:@"开启答题辅助" forState:UIControlStateNormal];
                [item.hypotenuseButton setBackgroundColor:[UIColor whiteColor]];
                item.hypotenuseButton.layer.cornerRadius = 10.0;
            }
            {
                HypotenuseAction *item = [HypotenuseAction actionWithType:1 handler:^(HypotenuseAction * _Nonnull action, SuspensionMenuView * _Nonnull menuView) {
                    UIViewController *topVc = [UIViewController xy_topViewController];
                    if (![topVc isKindOfClass:NSClassFromString(@"TTFDashboardViewController")]) {
                        TTFDashboardViewController *dashboardVc = [NSClassFromString(@"TTFDashboardViewController") new];
                        dashboardVc.hasAutoEnterLiveRoom = YES;
                        [topVc presentViewController:dashboardVc animated:YES completion:^{
                            [dashboardVc enterQuizShowLiveRoomImmediatelyEnterAfterIndex:YES enterAgain:YES];
                        }];
                        
                    }
                    [menuView close];
                    
                }];
                [menuView addAction:item];
                [item.hypotenuseButton setTitle:@"进入Dashboard" forState:UIControlStateNormal];
                [item.hypotenuseButton setBackgroundColor:[UIColor whiteColor]];
                item.hypotenuseButton.layer.cornerRadius = 10.0;
            }
            {
                HypotenuseAction *item = [HypotenuseAction actionWithType:1 handler:^(HypotenuseAction * _Nonnull action, SuspensionMenuView * _Nonnull menuView) {
                    [[UIApplication sharedApplication] xy_toggleConsoleWithCompletion:^(BOOL finished) {
                        [menuView close];
                    }];
                }];
                [menuView addAction:item];
                item.hypotenuseButton.titleLabel.adjustsFontSizeToFitWidth = YES;
                [item.hypotenuseButton setBackgroundColor:[UIColor blackColor]];
                [item.hypotenuseButton setTitle:@"Console" forState:UIControlStateNormal];
                
            }
            
            {
                HypotenuseAction *item = [HypotenuseAction actionWithType:1 handler:^(HypotenuseAction * _Nonnull action, SuspensionMenuView * _Nonnull menuView) {
                    [[UIApplication sharedApplication] xy_toggleWebViewWithCompletion:^(BOOL finished) {
                        [menuView close];
                    }];
                }];
                [menuView addAction:item];
                item.hypotenuseButton.titleLabel.adjustsFontSizeToFitWidth = YES;
                [item.hypotenuseButton setBackgroundColor:[UIColor blackColor]];
                [item.hypotenuseButton setTitle:@"webview" forState:UIControlStateNormal];
                
            }
            {
                HypotenuseAction *item = [HypotenuseAction actionWithType:UIButtonTypeSystem handler:^(HypotenuseAction * _Nonnull action, SuspensionMenuView * _Nonnull menuView) {
                    UIAlertController *arc = [UIAlertController alertControllerWithTitle:@"请选择" message:nil preferredStyle:UIAlertControllerStyleAlert];
                    NSString *title1 = [[XYQuestionAnswerHookHelper helper] hasCanAnsHook] == YES ? @"关闭一直可以答题":@"开启一直可以答题";
                    [arc addAction:[UIAlertAction actionWithTitle:title1 style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        if ([[XYQuestionAnswerHookHelper helper] hasCanAnsHook] == NO) {
                            [[XYQuestionAnswerHookHelper helper] confiCanAnsHook];
                            [MBProgressHUD xy_showMessage:@"虽然一直可以回答，但不能保证能拿到奖金"  delayTime:1.0];
                        }
                        else {
                            [[XYQuestionAnswerHookHelper helper] removeCanAnsHook];
                            [MBProgressHUD xy_showMessage:@"已关闭一直可以答题"  delayTime:1.0];
                        }
                    }]];
                    NSString *title2 = [[XYQuestionAnswerHookHelper helper] hasDebugHook] == YES ? @"关闭调试":@"打开调试";
                    [arc addAction:[UIAlertAction actionWithTitle:title2 style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        if ([[XYQuestionAnswerHookHelper helper] hasDebugHook] == NO) {
                            [[XYQuestionAnswerHookHelper helper] configDebugHook];
                            [MBProgressHUD xy_showMessage:@"已打开调试" delayTime:1.0];
                        }
                        else {
                            [[XYQuestionAnswerHookHelper helper] removeDebugHook];
                            [MBProgressHUD xy_showMessage:@"已关闭调试"  delayTime:1.0];
                        }
                    }]];
                    NSString *title3 = [[XYQuestionAnswerHookHelper helper] hasDeviceHook] == YES ? @"关闭DeviceHook":@"打开DeviceHook";
                    [arc addAction:[UIAlertAction actionWithTitle:title3 style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        if ([[XYQuestionAnswerHookHelper helper] hasDeviceHook] == NO) {
                            [[XYQuestionAnswerHookHelper helper] configDeviceHook];
                            [MBProgressHUD xy_showMessage:@"已打开DeviceHook" delayTime:1.0];
                        }
                        else {
                            [[XYQuestionAnswerHookHelper helper] removeDeviceHook];
                            [MBProgressHUD xy_showMessage:@"已关闭DeviceHook"  delayTime:1.0];
                        }
                    }]];
                    [arc addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:NULL]];
                    [[UIViewController xy_topViewController] presentViewController:arc animated:YES completion:nil];
                    [menuView close];
                }];
                [menuView addAction:item];
                [item.hypotenuseButton setTitle:@"更多选项" forState:UIControlStateNormal];
            }
            
            [menuView showWithCompetion:NULL];
            
        });
        
    }];
    
}




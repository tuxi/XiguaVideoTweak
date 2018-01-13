//
//  VideoTweakLib.m
//  VideoTweak
//
//  Created by swae on 2018/1/13.
//  Copyright © 2018年 alpface. All rights reserved.
//

#import "VideoTweakLib.h"
#import "VideoHeaders.h"
#import "CaptainHook.h"
#import "MBProgressHUD+XYHUD.h"
#import "XYConsoleView.h"
#import "ExceptionUtils.h"
#import "FoldersViewController.h"
#import "UIViewController+XYExtensions.h"
#import "RuntimeInvoker.h"

#pragma clang diagnostic ignored "-Wunused-function"
#pragma clang diagnostic ignored "-Wformat"


/// NewsBaseDelegate
CHDeclareClass(NewsBaseDelegate)

CHOptimizedMethod2(self, BOOL, NewsBaseDelegate, application, UIApplication *, application, didFinishLaunchingWithOptions, NSDictionary *, options) {
    BOOL res = CHSuper2(NewsBaseDelegate, application, application, didFinishLaunchingWithOptions, options);
    
    
    return res;
}



/// TTCollectionPageViewController
CHDeclareClass(TTCollectionPageViewController)

/// 百万英雄 答题房间
CHDeclareClass(TTFQuizShowLiveRoomViewController)
CHOptimizedMethod(0, self, BOOL, TTFQuizShowLiveRoomViewController, immediatelyEnterAfterIndex) {
    
    BOOL immediatelyEnterAfterIndex = CHSuper(0,TTFQuizShowLiveRoomViewController, immediatelyEnterAfterIndex);
    NSLog(@"immediatelyEnterAfterIndex:%d", immediatelyEnterAfterIndex);

    return YES;
}


static __attribute__((constructor)) void entry() {
    
    
    NSLog(@"\n               🎉!!！congratulations!!！🎉\n👍----------------insert dylib success----------------👍");
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
        [ExceptionUtils configExceptionHandler];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            SuspensionMenuWindow *menuView = [[SuspensionMenuWindow alloc] initWithFrame:CGRectMake(0, 0, 300, 300) itemSize:CGSizeMake(50, 50)];
            [menuView.centerButton setBackgroundColor:[UIColor redColor]];
            menuView.shouldOpenWhenViewWillAppear = NO;
            menuView.shouldHiddenCenterButtonWhenOpen = YES;
            menuView.shouldCloseWhenDeviceOrientationDidChange = YES;
            {
                HypotenuseAction *item = [HypotenuseAction actionWithType:1 handler:^(HypotenuseAction * _Nonnull action, SuspensionMenuView * _Nonnull menuView) {
                    NSLog(@"%@", menuView);
                    [ExceptionUtils openTestWindow];
                    [menuView close];
                }];
                [menuView addAction:item];
                [item.hypotenuseButton setTitle:@"Debug\n window" forState:UIControlStateNormal];
                [item.hypotenuseButton setBackgroundColor:[UIColor whiteColor]];
                item.hypotenuseButton.layer.cornerRadius = 10.0;
            }
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
                    UIViewController *vc = [UIViewController xy_topViewController];
                    if ([vc isKindOfClass:NSClassFromString(@"TTFQuizShowLiveRoomViewController")]) {
                        [MBProgressHUD xy_showMessage:@"TTFQuizShowLiveRoomViewController 在展示"];
                    }
                    else if ([vc isKindOfClass:NSClassFromString(@"TTFDashboardViewController")]) {
                        UIViewController *liveVc = [vc invoke:NSStringFromSelector(@selector(curQuizShowLiveRoomVC))];
                        if (liveVc) {
                            [menuView showViewController:liveVc animated:YES];
                        }
                        else {
                            [MBProgressHUD xy_showMessage:@"TTFDashboardViewController is null"];
                        }
                    }
                    [menuView close];
                    
                }];
                [menuView addAction:item];
                [item.hypotenuseButton setTitle:@"英雄直播" forState:UIControlStateNormal];
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
            [menuView showWithCompetion:NULL];
            
        });
        
    }];
}


CHDeclareMethod1(void, TTCollectionPageViewController, viewDidAppear, BOOL, animated)
{
    CHSuper1(TTCollectionPageViewController, viewDidAppear, animated);
    
    [MBProgressHUD xy_showMessage:@"TTCollectionPageViewController"];
}

CHDeclareMethod0(void, TTFQuizShowLiveRoomViewController, closeLiveRoom) {
    // 不关闭百万问答页面
    
    [MBProgressHUD xy_showMessage:@"答题时间到"];
}

/// 答题视图
CHDeclareClass(TTFQuestionAnswerView)

CHOptimizedMethod(0, self, NSMutableArray *, TTFQuestionAnswerView, optionViews) {

    NSMutableArray *views = CHSuper(0,TTFQuestionAnswerView, optionViews);
    NSLog(@"%@", views);
    return views;
}

// 答题英雄控制器
CHDeclareClass(TTFDashboardViewController)
CHOptimizedMethod(0, self, BOOL, TTFDashboardViewController, hasAutoEnterLiveRoom) {
    
    BOOL hasAutoEnterLiveRoom = CHSuper(0,TTFDashboardViewController, hasAutoEnterLiveRoom);
    NSLog(@"hasAutoEnterLiveRoom: %hhd", hasAutoEnterLiveRoom);
    return hasAutoEnterLiveRoom;
}

/// // 答题英雄直播间
CHOptimizedMethod(0, self, TTFQuizShowLiveRoomViewController *, TTFDashboardViewController, curQuizShowLiveRoomVC) {
    
    TTFQuizShowLiveRoomViewController * curQuizShowLiveRoomVC = CHSuper(0, TTFDashboardViewController, curQuizShowLiveRoomVC);
    NSLog(@"curQuizShowLiveRoomVC: %@", curQuizShowLiveRoomVC);
    return curQuizShowLiveRoomVC;
}
CHDeclareMethod1(void, TTFDashboardViewController, shareToFriend, id, arg1)
{
    [MBProgressHUD xy_showMessage:@"分享"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CHSuper1(TTFDashboardViewController, shareToFriend, arg1);
    });
    
}




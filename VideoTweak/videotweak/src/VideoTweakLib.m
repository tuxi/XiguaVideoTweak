//
//  VideoTweakLib.m
//  VideoTweak
//
//  Created by xiaoyuan on 2018/1/13.
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
#import "Aspects.h"
#import <objc/runtime.h>
#import "AutoTimer.h"
#import "XYSuspensionWebView.h"
#import "XYQuestionAnswerManager.h"

#pragma clang diagnostic ignored "-Wunused-function"
#pragma clang diagnostic ignored "-Wformat"
#pragma clang diagnostic ignored "-Wunused-variable"


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

void hookFunc(UIViewController *v) {
    
    UIAlertController *arc = [UIAlertController alertControllerWithTitle:@"请选择" message:@"目前只支持读取问题的方式进行百度搜索，展示web" preferredStyle:UIAlertControllerStyleAlert];
    [arc addAction:[UIAlertAction actionWithTitle:@"show webview" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [[UIApplication sharedApplication] xy_showWebViewWithCompletion:nil];
        [XYQuestionAnswerManager manager].auxiliary1Block = ^(NSString *qText) {
            if (!qText.length) {
                [MBProgressHUD xy_showMessage:@"没有获取到问题"];
                return;
            }
            /// 第一中辅助方式：根据问题去百度搜索，以webView呈现
            NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:[XYQuestionAnswerManager manager].questionText] invertedSet];
            NSString *wd = [[XYQuestionAnswerManager manager].questionText stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
            NSString *urlString = [NSString stringWithFormat:@"https://m.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=%@&inputT=1696&rsv_sug4=1697", wd];
            [UIApplication sharedApplication].xy_suspensionWebView.urlString = urlString;
        };
        
    }]];
    [arc addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:NULL]];
    [[UIViewController xy_topViewController] presentViewController:arc animated:YES completion:nil];
    
    TTFQuizShowLiveRoomViewController *vc = (TTFQuizShowLiveRoomViewController *)v;
    NSError *error = nil;
    /// 监听显示答案的事件
    [NSClassFromString(@"TTFQuizShowLiveRoomViewController") aspect_hookSelector:@selector(showAnswerWithQuestionAnswerUnit:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, TTFQuestionAnswerUnit *questionAnswerUnit) {
        
        // 问答单元
        TTFQuestionAnswerUnit *unit = questionAnswerUnit;
        // 问题结构
        TTFQuestionStruct *questionStruct = unit.question;
        DLog(@"TTFQuestionStruct:%@", questionStruct);
        NSObject *questionStructTemp = (NSObject *)questionStruct;
        // questionT 就是questionLabel.text
        NSString *questionT = [questionStructTemp valueForKey:@"text"];
        [XYQuestionAnswerManager manager].questionText = questionT;
        
        // 问题跟踪
        TTFQuestionTrace *questionTrace = unit.questionTrace;
        DLog(@"TTFQuestionTrace:%@", questionTrace);
        // 答案结构， 显示问题时为nil，显示答案时才有此
        TTFAnswerStruct *answerStruct = unit.answer;
        DLog(@"TTFAnswerStruct:%@", answerStruct);
        // 答案跟踪，显示问题时为nil，显示答案时才有此
        TTFAnswerTrace *answerTrace = unit.answerTrace;
        DLog(@"TTFAnswerTrace:%@", answerTrace);
        
    } error:&error];
    
    /// 监听显示问题
    [NSClassFromString(@"TTFQuizShowLiveRoomViewController") aspect_hookSelector:@selector(showQuestionWithQuestionAnswerUnit:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, TTFQuestionAnswerUnit *questionAnswerUnit) {
        
       TTFQuizShowLiveRoomViewController *vc =  info.instance;
        if (!vc) {
            return;
        }
        if (![vc isKindOfClass:NSClassFromString(@"TTFQuizShowLiveRoomViewController")]) {
            return;
        }
        
//        // 获取问题视图
//        TTFQuestionAnswerView *qv = vc.questionAnswerView;
//        // 问题视图上显示问题的label
//        NSString *questionText = qv.questionLabel.text;
//        DLog(@"%@", questionText);
        // 问答单元
        TTFQuestionAnswerUnit *unit = questionAnswerUnit;
        // 问题结构
        TTFQuestionStruct *questionStruct = unit.question;
        DLog(@"TTFQuestionStruct:%@", questionStruct);
        NSObject *questionStructTemp = (NSObject *)questionStruct;
        // questionT 就是questionLabel.text
        NSString *questionT = [questionStructTemp valueForKey:@"text"];
        [XYQuestionAnswerManager manager].questionText = questionT;
        
        // 问题跟踪
        TTFQuestionTrace *questionTrace = unit.questionTrace;
        DLog(@"TTFQuestionTrace:%@", questionTrace);
        // 答案结构， 显示问题时为nil，显示答案时才有此
        TTFAnswerStruct *answerStruct = unit.answer;
        DLog(@"TTFAnswerStruct:%@", answerStruct);
        // 答案跟踪，显示问题时为nil，显示答案时才有此
        TTFAnswerTrace *answerTrace = unit.answerTrace;
        DLog(@"TTFAnswerTrace:%@", answerTrace);
        
        
        /// 存放答案选项的视图
        NSArray<TTFQuestionOptionView *> *optionsViews = vc.questionAnswerView.optionViews;
        
        for (TTFQuestionOptionView *optionView in optionsViews) {
            
            NSLog(@"%@", optionView);
        }
        
    } error:&error];
    
    /// 开启定时器打印问题
//    UIViewController *viewController = (UIViewController *)vc;
//    [AutoTimer startTimerWithIdentifier:[NSString stringWithFormat:@"%p", vc] fireTime:0.0 timeInterval:1.0 queue:dispatch_get_main_queue() repeats:YES actionOption:AutoTimerActionOptionGiveUp block:^{
//        // 获取问题视图
//        TTFQuestionAnswerView *qv = vc.questionAnswerView;
//        // 问题视图上显示问题的label
//        NSString *questionText = qv.questionLabel.text;
//        DLog(@"%@", questionText);
//        if (questionText.length && ![lastQuestionText isEqualToString:questionText]) {
//            lastQuestionText = questionText;
//            if (auxiliary1Block) {
//                auxiliary1Block(questionText);
//            }
//        }
//        // 问答单元
//       TTFQuestionAnswerUnit *unit = qv.questionAnswerUnit;
//        // 问题结构
//        TTFQuestionStruct *questionStruct = unit.question;
//        DLog(@"TTFQuestionStruct:%@", questionStruct);
//        // 问题跟踪
//        TTFQuestionTrace *questionTrace = unit.questionTrace;
//        DLog(@"TTFQuestionTrace:%@", questionTrace);
//        // 答案结构
//        TTFAnswerStruct *answerStruct = unit.answer;
//        DLog(@"TTFAnswerStruct:%@", answerStruct);
//        // 答案跟踪
//        TTFAnswerTrace *answerTrace = unit.answerTrace;
//        DLog(@"TTFAnswerTrace:%@", answerTrace);
//
//
//        /// 存放答案选项的视图，每个
//        NSArray<TTFQuestionOptionView *> *optionsViews = vc.questionAnswerView.optionViews;
//
//        for (TTFQuestionOptionView *optionView in optionsViews) {
//
//            NSLog(@"%@", optionView);
//        }
//
//    }];

    [NSClassFromString(@"TTFQuestionOptionView") aspect_hookSelector:@selector(beClicked:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, UITapGestureRecognizer *tap){
        NSLog(@"答案被选中:%@", tap);
    } error:&error];
    
    
    /// 用户是否需要答案
    [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"isUserNeedAnswer") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
        BOOL res = YES;
        [[info originalInvocation] setReturnValue:&res];
    } error:&error];
    
    /// 用户回答正确吗
//    [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"isUserAnswerCorrect") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
//        BOOL res = YES;
//        [[info originalInvocation] setReturnValue:&res];
//    } error:&error];
//
//    [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"isUserAnswerCorrect") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
//        BOOL res = YES;
//        [[info originalInvocation] setReturnValue:&res];
//    } error:&error];
//
//    /// 用户可以回答吗
//    [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"canAnswer") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
//        BOOL res = YES;
//        [[info originalInvocation] setReturnValue:&res];
//    } error:&error];
    
    /// 获取问题（TTFQuestionStruct中的text属性是就是问题）
//    [NSClassFromString(@"TTFQuestionStruct") aspect_hookSelector:NSSelectorFromString(@"text") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
//
//        NSLog(@"%@", info);
//    } error:&error];
    
    
    [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"_submitAnswerToServerWithOptions:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id arg) {
        NSLog(@"%@", arg);
    } error:&error];
    
    [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"submitAnswerWithOptions:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id arg) {
        NSLog(@"%@", arg);
    } error:&error];
    
    
    // 揭示答案
    [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"revealAnswer:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id answer) {
        NSLog(@"%@", answer);
    } error:&error];
    
    /// 复活
    [NSClassFromString(@"TTFDashboardViewController") aspect_hookSelector:NSSelectorFromString(@"resurrection:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id arg) {
        NSLog(@"%@", arg);
    } error:&error];
    
    [NSClassFromString(@"TTNetworkManagerAFNetworking") aspect_hookSelector:@selector(requestForBinaryWithURL:params:method:needCommonParams:requestSerializer:responseSerializer:autoResume:callback:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> info, id url, id params, id method, BOOL needCommonParams, Class requestSerializer, BOOL autoResume, id callback) {
        if (!url) {
            return;
        }
        
        DLog(@"%@---%@", url, params);
    } error:&error];
    
    [NSClassFromString(@"TTFURLSetting") aspect_hookSelector:NSSelectorFromString(@"ansWinURL") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
        id __unsafe_unretained tempResultSet;
        [[info originalInvocation] getReturnValue:&tempResultSet];
        DLog(@"ansWinURL: %@", tempResultSet);
        tempResultSet = nil;
    } error:&error];
    
    
    [NSClassFromString(@"TTFQuizShowLiveRoomNetworkManager") aspect_hookSelector:@selector(submitAnwserOfActivityID:questionID:optionIDs:completion:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, long long activityID, long long questionID, id optionIDs, id completion) {
        
        
    } error:&error];
}

static __attribute__((constructor)) void entry() {
    
    
    DLog(@"\n 🎉 🎉 🎉!!！congratulations!!！🎉\n👍👍👍👍👍👍👍👍👍👍insert dylib success👍👍👍👍👍👍👍👍👍👍🎉!");
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
        [ExceptionUtils configExceptionHandler];
        
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
                    UIViewController *vc = [UIViewController xy_topViewController];
                    if ([vc isKindOfClass:NSClassFromString(@"TTFQuizShowLiveRoomViewController")]) {
                        hookFunc(vc);
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
                [item.hypotenuseButton setTitle:@"开启答题辅助" forState:UIControlStateNormal];
                [item.hypotenuseButton setBackgroundColor:[UIColor whiteColor]];
                item.hypotenuseButton.layer.cornerRadius = 10.0;
            }
            {
                HypotenuseAction *item = [HypotenuseAction actionWithType:1 handler:^(HypotenuseAction * _Nonnull action, SuspensionMenuView * _Nonnull menuView) {
                    UIViewController *vc = [UIViewController xy_topViewController];
                    if (![vc isKindOfClass:NSClassFromString(@"TTFDashboardViewController")]) {
                        UIViewController *vc = [NSClassFromString(@"TTFDashboardViewController") new];
//                        UINavigationController *nac = [(UINavigationController *)[NSClassFromString(@"TTNavigationController") alloc] initWithRootViewController:vc];
                        [[UIViewController xy_topViewController] presentViewController:vc animated:YES completion:nil];
                        
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
            [menuView showWithCompetion:NULL];
            
        });
        
    }];
    
}




CHDeclareMethod1(void, TTCollectionPageViewController, viewDidAppear, BOOL, animated)
{
    CHSuper1(TTCollectionPageViewController, viewDidAppear, animated);
    
    [MBProgressHUD xy_showMessage:@"TTCollectionPageViewController"];
}
// 手动触发左侧返回按钮时调
CHDeclareMethod0(void, TTFQuizShowLiveRoomViewController, closeLiveRoom) {
    // 不关闭百万问答页面
    CHSuper(0, TTFQuizShowLiveRoomViewController, closeLiveRoom);
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

/// 答题相关
//CHDeclareClass(TTFQuestionAnswerUnit)
//CHOptimizedMethod(0, self, BOOL, TTFQuestionAnswerUnit, isUserNeedAnswer) {
//    
//    BOOL isUserNeedAnswer = CHSuper(0, TTFQuestionAnswerUnit, isUserNeedAnswer);
//    NSLog(@"isUserNeedAnswer: %hhd", isUserNeedAnswer);
//    return YES;
//}
//
//CHDeclareClass(TTFQuestionStruct)
//CHOptimizedMethod(0, self, NSString *, TTFQuestionAnswerUnit, text) {
//    
//    NSString *text = CHSuper(0, TTFQuestionAnswerUnit, text);
//    NSLog(@"答题: %hhd", text);
//    [MBProgressHUD xy_showMessage:text];
//    return text;
//}
//
//CHOptimizedMethod(0, self, BOOL, TTFQuestionAnswerUnit, isUserAnswerCorrect) {
//    
//    BOOL isUserAnswerCorrect = CHSuper(0, TTFQuestionAnswerUnit, isUserAnswerCorrect);
//    NSLog(@"用户回到正确吗: %hhd", isUserAnswerCorrect);
//    return YES;
//}
//
//CHOptimizedMethod(0, self, unsigned int, TTFQuestionAnswerUnit, userAnswerResult) {
//    unsigned int userAnswerResult = CHSuper(0, TTFQuestionAnswerUnit, userAnswerResult);
//    NSLog(@"用户回答结果: %d", userAnswerResult);
//    return userAnswerResult;
//}
//
//CHOptimizedMethod(0, self, BOOL, TTFQuestionAnswerUnit, canAnswer) {
//    BOOL canAnswer = CHSuper(0, TTFQuestionAnswerUnit, canAnswer);
//    NSLog(@"用户可以回答: %d", canAnswer);
//    return canAnswer;
//}
//
//CHOptimizedMethod(0, self, TTFQuestionStruct *, TTFQuestionAnswerUnit, question) {
//    id question = CHSuper(0, TTFQuestionAnswerUnit, question);
//    NSLog(@"question: %d", question);
//    return question;
//}
//





//
//  XYQuestionAnswerHookHelper.m
//  VideoTweak
//
//  Created by swae on 2018/1/15.
//  Copyright © 2018年 alpface. All rights reserved.
//

#import "XYQuestionAnswerHookHelper.h"
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
#import "XYQuestionAnswerUnit.h"
#import "CaptainHook.h"

#pragma clang diagnostic ignored "-Wunused-function"
#pragma clang diagnostic ignored "-Wformat"
#pragma clang diagnostic ignored "-Wunused-variable"

@interface XYQuestionAnswerHookHelper ()

@property (nonatomic, strong) NSMutableArray <id<AspectToken>> *quizShowLiveRoomVhoookList;
@property (nonatomic, strong) NSMutableArray <id<AspectToken>> *canAnshoookList;
@property (nonatomic, strong) NSMutableArray <id<AspectToken>> *debugHookList;
@property (nonatomic, strong) NSMutableArray <id<AspectToken>> *deviceHookList;

@end

@implementation XYQuestionAnswerHookHelper

@dynamic helper;


+ (XYQuestionAnswerHookHelper *)helper {
    static XYQuestionAnswerHookHelper *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = self.new;
        [_instance configDeviceHook];
    });
    return _instance;
}
- (NSURLSessionDataTask *)request:(NSString *)quesText
                           ansOps:(NSArray <NSString *> *)ansOps
                       completion:(void (^)(NSDictionary *responseDict, NSError *error))completion {
    NSURLSessionDataTask * (^ searchOnAlpface)(NSString *qeustion, NSArray<NSString *> *quesOps, void (^ completion)(NSDictionary *responseDict, NSError *error)) = ^NSURLSessionDataTask *(NSString *qeustion, NSArray<NSString *> *quesOps, void (^ completion)(id responseDict, NSError *error)) {
        if (qeustion.length == 0) {
            return nil;
        }
        NSURLSession *session=[NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        NSString *urlString=@"http://10.211.55.3:8000/question/answer/";
        
        /**
         NSString *urlString=@"http://www.alpface.com/question/answer/";
         测试数据
         NSString *qeustion = @"孟姜女是哪个朝代的人";
         NSArray<NSString *> *quesOps = @[@"宋代", @"唐朝", @"秦朝"];
         */
        
        NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
        [request setTimeoutInterval:20];
        request.HTTPMethod=@"POST";
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setValue:@"csrftoken=MKIxe7TiEwjVdITrEHfgd9qqeFjKEkqvHMPmNfSuJDIYfMJVBBsMOHJqq5S7rWcS" forHTTPHeaderField:@"Cookie"];
        [request setValue:@"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" forHTTPHeaderField:@"Accept"];
        [request setValue:@"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36" forHTTPHeaderField:@"User-Agent"];
        
        
        NSMutableDictionary *paramer = @{@"csrfmiddlewaretoken":@"w2N7qYoxz8fHoWRmzUjNrFkyzkB7jCRor4UWZ6nJEfEKq0HQwOwj2dDyLKau6eDL",@"question_text": qeustion}.mutableCopy;
        [quesOps enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [paramer setObject:obj forKey:[NSString stringWithFormat:@"answeroptions%ld", idx+1]];
        }];
        NSMutableString *paramerStr = @"".mutableCopy;
        [paramer enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            [paramerStr appendFormat:@"&%@=%@", key, obj];
        }];
        
        request.HTTPBody=[paramerStr dataUsingEncoding:NSUTF8StringEncoding];
        
        NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            if (error) {
                if (completion) {
                    completion(nil, error);
                }
            }
            else {
                NSDictionary *responseDict = @{};
                if (data) {
                    NSError *er = nil;
                    responseDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&er];
                    if (er) {
                        responseDict = @{};
                    }
                    if (completion) {
                        completion(responseDict, er);
                    }
                }
                else {
                    if (completion) {
                        completion(responseDict, nil);
                    }
                }
                
            }
            
        }];
        
        [task resume];
        return task;
    };
    
    
    return searchOnAlpface(quesText, ansOps, completion);
}

- (void)configQuizShowLiveRoomHook {
    [self removeQuizShowLiveRoomHook];
    TTFQuizShowLiveRoomViewController *vc = (TTFQuizShowLiveRoomViewController *)[UIViewController xy_topViewController];
    if (!vc || ![vc isKindOfClass:NSClassFromString(@"TTFQuizShowLiveRoomViewController")]) {
        [MBProgressHUD xy_showMessage:@"TTFQuizShowLiveRoomViewController 未显示"];
        return;
    }
    
    void (^ searchOnWebView)(NSString *qTest) = ^(NSString *qText){
        // 第一中辅助方式：根据问题去百度搜索，以webView呈现
        NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:qText] invertedSet];
        NSString *wd = [qText stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
        NSString *urlString = [NSString stringWithFormat:@"https://m.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=%@&inputT=1696&rsv_sug4=1697", wd];
        [UIApplication sharedApplication].xy_suspensionWebView.urlString = urlString;
    };
    
    
    UIAlertController *arc = [UIAlertController alertControllerWithTitle:@"请选择" message:@"目前只支持读取问题的方式进行百度搜索，展示web" preferredStyle:UIAlertControllerStyleAlert];
    [arc addAction:[UIAlertAction actionWithTitle:@"show webview" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [[UIApplication sharedApplication] xy_showWebViewWithCompletion:nil];
        [XYQuestionAnswerUnit defaultUnit].auxiliary1Block = ^(NSString *qText, NSArray<NSString *> *answerOps) {
            if (!qText.length) {
                [MBProgressHUD xy_showMessage:@"没有获取到问题"];
                return;
            }
            
            // searchOnWebView(qText);
            
            [self request:qText ansOps:answerOps completion:^(NSDictionary *responseDict, NSError *error) {
                
            }];
        };
        
    }]];
    [arc addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:NULL]];
    [[UIViewController xy_topViewController] presentViewController:arc animated:YES completion:nil];
    
    NSError *error = nil;
    id<AspectToken> aspect = nil;
    /// 当揭示答案时回调
    aspect = [NSClassFromString(@"TTFQuizShowLiveRoomViewController") aspect_hookSelector:@selector(showAnswerWithQuestionAnswerUnit:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, TTFQuestionAnswerUnit *questionAnswerUnit) {
        
        // 问答单元
        TTFQuestionAnswerUnit *unit = questionAnswerUnit;
        // 问题结构
        TTFQuestionStruct *questionStruct = unit.question;
        DLog(@"TTFQuestionStruct:%@", questionStruct);
//        NSObject *questionStructTemp = (NSObject *)questionStruct;
//        // questionT 就是questionLabel.text
//        NSString *questionT = [questionStructTemp valueForKey:@"text"];
//        NSArray *array = [((NSObject *)unit.question) invoke:@"optionsArray"];
//        NSMutableArray *optionTextList = @[].mutableCopy;
//        for (id obj in array) {
//            // TTFOptionStruct
//            NSString *optionText = [obj objectForKey:@"text"];
//            [optionTextList addObject:optionText];
//        }
//        [[XYQuestionAnswerUnit defaultUnit] setQuestionText:questionT answerOptions:optionTextList];
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
    
    [self addHookObject:aspect toArray:self.quizShowLiveRoomVhoookList];
    
    /// 监听显示问题
    aspect = [NSClassFromString(@"TTFQuizShowLiveRoomViewController") aspect_hookSelector:@selector(showQuestionWithQuestionAnswerUnit:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, TTFQuestionAnswerUnit *questionAnswerUnit) {
        
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
        NSArray *array = [((NSObject *)unit.question) invoke:@"optionsArray"];
        NSMutableArray *optionTextList = @[].mutableCopy;
        for (id obj in array) {
            // TTFOptionStruct
            NSString *optionText = [obj objectForKey:@"text"];
            [optionTextList addObject:optionText];
        }
        [[XYQuestionAnswerUnit defaultUnit] setQuestionText:questionT answerOptions:optionTextList];
        
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
    
    [self addHookObject:aspect toArray:self.quizShowLiveRoomVhoookList];
    
    
   aspect = [NSClassFromString(@"TTFQuizShowLiveRoomViewController") aspect_hookSelector:NSSelectorFromString(@"getActivityID") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
        id res = nil;
        [[info originalInvocation] getReturnValue:&res];
    } error:&error];
    
    [NSClassFromString(@"TTFQuizShowLiveRoomViewController") aspect_hookSelector:@selector(initWithViewModel:immediatelyEnterAfterIndex:enterAgain:delegate:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id model, BOOL immediatelyEnterAfterIndex, NSInteger enterAgain, id delegate) {
        
        DLog(@"%@", model);
        
    } error:&error];
    
     [self addHookObject:aspect toArray:self.quizShowLiveRoomVhoookList];
    
}

- (void)confiCanAnsHook {
    [self removeCanAnsHook];
    NSError *error = nil;
    id<AspectToken> aspect = nil;
    
    /// 用户是否需要答案
    aspect = [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"isUserNeedAnswer") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
        BOOL res = YES;
        [[info originalInvocation] setReturnValue:&res];
    } error:&error];
    [self addHookObject:aspect toArray:self.canAnshoookList];
    
    /// 用户回答正确吗
    aspect = [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"isUserAnswerCorrect") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
        BOOL res = YES;
        [[info originalInvocation] setReturnValue:&res];
    } error:&error];
    [self addHookObject:aspect toArray:self.canAnshoookList];
    
    aspect = [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"isUserAnswerCorrect") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
        BOOL res = YES;
        [[info originalInvocation] setReturnValue:&res];
    } error:&error];
    [self addHookObject:aspect toArray:self.canAnshoookList];
    
    /// 用户可以回答吗
    aspect = [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"canAnswer") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
        BOOL res = YES;
        [[info originalInvocation] setReturnValue:&res];
    } error:&error];
    [self addHookObject:aspect toArray:self.canAnshoookList];
    
 
    
}

- (void)configDebugHook {
    [self removeDebugHook];
    NSError *error = nil;
    id<AspectToken> aspect = nil;
    aspect = [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"_submitAnswerToServerWithOptions:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id arg) {
        NSLog(@"%@", arg);
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect = [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"submitAnswerWithOptions:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id arg) {
        NSLog(@"%@", arg);
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    // 揭示答案
    aspect = [NSClassFromString(@"TTFQuestionAnswerUnit") aspect_hookSelector:NSSelectorFromString(@"revealAnswer:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id answer) {
        NSLog(@"%@", answer);
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect = [NSClassFromString(@"TTFQuestionOptionView") aspect_hookSelector:@selector(beClicked:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, UITapGestureRecognizer *tap){
        NSLog(@"答案被选中:%@", tap);
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    /// 复活
    aspect =  [NSClassFromString(@"TTFDashboardViewController") aspect_hookSelector:NSSelectorFromString(@"resurrection:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id arg) {
        NSLog(@"%@", arg);
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect =  [NSClassFromString(@"TTNetworkManagerAFNetworking") aspect_hookSelector:@selector(requestForBinaryWithURL:params:method:needCommonParams:requestSerializer:responseSerializer:autoResume:callback:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> info, id url, id params, id method, BOOL needCommonParams, Class requestSerializer, BOOL autoResume, id callback) {
        if (!url) {
            return;
        }
        
        DLog(@"%@---%@", url, params);
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect =  [NSClassFromString(@"TTFURLSetting") aspect_hookSelector:NSSelectorFromString(@"ansWinURL") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
        id __unsafe_unretained tempResultSet;
        [[info originalInvocation] getReturnValue:&tempResultSet];
        DLog(@"ansWinURL: %@", tempResultSet);
        tempResultSet = nil;
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    
    aspect =  [NSClassFromString(@"TTFQuizShowLiveRoomNetworkManager") aspect_hookSelector:@selector(submitAnwserOfActivityID:questionID:optionIDs:completion:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, long long activityID, long long questionID, id optionIDs, id completion) {
        
        
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect = [NSClassFromString(@"TTFDashboardViewController") aspect_hookSelector:@selector(enterQuizShowLiveRoomImmediatelyEnterAfterIndex:enterAgain:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, BOOL enterAfterIndex, BOOL enterAgain){
        
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect = [NSClassFromString(@"TTFDashboardViewController") aspect_hookSelector:@selector(initWithActivityID:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id activityID){
        DLog(@"%@", activityID);
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect =  [NSClassFromString(@"TTFActivityStartingNotification") aspect_hookSelector:@selector(deviceId) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect =  [NSClassFromString(@"TTFActivityInfo") aspect_hookSelector:@selector(activityId) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        id __unsafe_unretained activityId;
        [[info originalInvocation] getReturnValue:&activityId];
        DLog(@"activityId: %@", activityId);
        activityId = nil;
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
  
    aspect = [NSClassFromString(@"UMANUtil") aspect_hookSelector:@selector(isPad) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL isPad;
        [[info originalInvocation] getReturnValue:&isPad];
        DLog(@"-------------------------------%@iPad😯-------------------------", (isPad?@"是":@"不是"));
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    
    aspect = [NSClassFromString(@"UMANProtocolData") aspect_hookSelector:@selector(isPad) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL isPad;
        [[info originalInvocation] getReturnValue:&isPad];
        DLog(@"-------------------------------%@iPad😯-------------------------", (isPad?@"是":@"不是"));
    } error:&error];
    [self addHookObject:aspect toArray:self.debugHookList];
    

    
    
  
    
    // 获取问题（TTFQuestionStruct中的text属性是就是问题）
    //    aspect = [NSClassFromString(@"TTFQuestionStruct") aspect_hookSelector:NSSelectorFromString(@"text") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
    //
    //        NSLog(@"%@", info);
    //    } error:&error];
    //    [self addHookObject:aspect toArray:self.canAnshoookList];
    
    
}

- (void)configDeviceHook {
    [self removeDeviceHook];
    NSError *error = nil;
    __block id<AspectToken> aspect = nil;
    aspect = [NSClassFromString(@"TTInfoHelper") aspect_hookSelector:@selector(bundleIdentifier) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        id __unsafe_unretained tempResultSet;
        [[info originalInvocation] getReturnValue:&tempResultSet];
        DLog(@"bundleIdentifier: %@", tempResultSet);
        tempResultSet = nil;
        
    } error:&error];
    
    SEL saveDeviceIdSelector = @selector(saveDeviceID:);
    NSArray *saveDeviceIdClassList = @[@"TTInfoHelper", @"TTServiceInfoHelper"];
    [saveDeviceIdClassList enumerateObjectsUsingBlock:^(NSString *  _Nonnull className, NSUInteger idx, BOOL * _Nonnull stop) {
        aspect = [NSClassFromString(className) aspect_hookSelector:saveDeviceIdSelector withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
            id __unsafe_unretained tempResultSet;
            [[info originalInvocation] getReturnValue:&tempResultSet];
            DLog(@"deviceId: %@", tempResultSet);
            tempResultSet = nil;
        } error:nil];
        [self addHookObject:aspect toArray:self.deviceHookList];
    }];
    
    aspect = [NSClassFromString(@"TTInstalliCloud") aspect_hookSelector:@selector(saveDeviceIDIfNeeded:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id deviceId){
        DLog(@"deviceId: %@", deviceId);
        
    } error:&error];
    
    aspect = [NSClassFromString(@"TTInstallIDManager") aspect_hookSelector:@selector(saveDeviceAndInstallID:maxRetryTimes:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id InstallID, int intmaxRetryTimes){
        DLog(@"InstallID: %@", InstallID);
        
    } error:&error];
    
    SEL deviceIDSelector = @selector(deviceID);
    NSArray *classList = @[@"TTFantasyLCSManager", @"TTInfoHelper", @"TTInstallIDManager", @"TTLMemberMessageModel", @"TTLUserModel", @"TTServiceInfoHelper"];
    
    [classList enumerateObjectsUsingBlock:^(NSString *  _Nonnull className, NSUInteger idx, BOOL * _Nonnull stop) {
        aspect = [NSClassFromString(className) aspect_hookSelector:deviceIDSelector withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
            id __unsafe_unretained tempResultSet;
            [[info originalInvocation] getReturnValue:&tempResultSet];
            DLog(@"deviceId: %@", tempResultSet);
            tempResultSet = nil;
        } error:nil];
        [self addHookObject:aspect toArray:self.deviceHookList];
    }];
    
    SEL deviceIdselector1 = @selector(deviceId);
    NSArray *classList1 = @[@"KPAppInfo", @"ALBBUserTrackModel", @"TTBaseRequestParam", @"TTFActivityStartingNotification", @"TTFanswer_v1_index_request", @"TTFanswer_v1_init_request", @"TTFanswer_v1_submit_request", @"TTFanswer_v1_sign_request", @"TTFclient_v1_check_invite_request", @"TTFclient_v1_index_info_request", @"TTFclient_v1_invite_request", @"TTFclient_v1_share_add_life_request", @"TTFHBaseUserId", @"TTVDanmaku", @"TTVDeviceInfo", @"TTVRedDot"];
    [classList1 enumerateObjectsUsingBlock:^(NSString *  _Nonnull className, NSUInteger idx, BOOL * _Nonnull stop) {
        aspect = [NSClassFromString(className) aspect_hookSelector:deviceIdselector1 withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info) {
            id __unsafe_unretained tempResultSet;
            [[info originalInvocation] getReturnValue:&tempResultSet];
            DLog(@"deviceId: %@", tempResultSet);
            tempResultSet = nil;
        } error:nil];
        [self addHookObject:aspect toArray:self.deviceHookList];
    }];
    
    aspect = [NSClassFromString(@"UMANProtocolData") aspect_hookSelector:@selector(deviceIDVendorString) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        id deviceIDVendorString;
        [[info originalInvocation] getReturnValue:&deviceIDVendorString];
        DLog(@"-------------------------------deviceIDVendorString: %@-------------------------", deviceIDVendorString);
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    
    aspect = [NSClassFromString(@"UMANProtocolData") aspect_hookSelector:@selector(UUIDString) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        id UUIDString;
        [[info originalInvocation] getReturnValue:&UUIDString];
        DLog(@"-------------------------------UUIDString: %@-------------------------", UUIDString);
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    aspect = [NSClassFromString(@"UMANProtocolData") aspect_hookSelector:@selector(UUIDMD5String) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        id UUIDMD5String;
        [[info originalInvocation] getReturnValue:&UUIDMD5String];
        DLog(@"-------------------------------UUIDMD5String: %@-------------------------", UUIDMD5String);
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    
    
    aspect = [NSClassFromString(@"UMANProtocolData") aspect_hookSelector:@selector(isDeviceJailBreak) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL isDeviceJailBreak;
        [[info originalInvocation] getReturnValue:&isDeviceJailBreak];
        DLog(@"-------------------------------%@越狱设备-------------------------", isDeviceJailBreak);
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            [MBProgressHUD xy_showMessage:@"----------检测到是越狱设备----------"];
        });
        if (isDeviceJailBreak) {
            isDeviceJailBreak = NO;
            [[info originalInvocation] setReturnValue:&isDeviceJailBreak];
        }
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    aspect = [NSClassFromString(@"UMANUtil") aspect_hookSelector:@selector(isDeviceJailBreak) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL isDeviceJailBreak;
        [[info originalInvocation] getReturnValue:&isDeviceJailBreak];
        DLog(@"-------------------------------%@越狱设备-------------------------", isDeviceJailBreak);
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            [MBProgressHUD xy_showMessage:@"----------检测到是越狱设备----------"];
        });
        if (isDeviceJailBreak) {
            isDeviceJailBreak = NO;
            [[info originalInvocation] setReturnValue:&isDeviceJailBreak];
        }
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    aspect = [NSClassFromString(@"TTExtensions") aspect_hookSelector:@selector(isJailBroken) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL isJailBroken;
        [[info originalInvocation] getReturnValue:&isJailBroken];
        DLog(@"-------------------------------%@越狱设备-------------------------", isJailBroken);
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            [MBProgressHUD xy_showMessage:@"----------检测到是越狱设备----------"];
        });
        if (isJailBroken) {
            isJailBroken = NO;
            [[info originalInvocation] setReturnValue:&isJailBroken];
        }
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    aspect = [NSClassFromString(@"TTInstallDeviceHelper") aspect_hookSelector:@selector(isJailBroken) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL isJailBroken;
        [[info originalInvocation] getReturnValue:&isJailBroken];
        DLog(@"-------------------------------%@越狱设备-------------------------", isJailBroken);
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            [MBProgressHUD xy_showMessage:@"----------检测到是越狱设备----------"];
        });
        if (isJailBroken) {
            isJailBroken = NO;
            [[info originalInvocation] setReturnValue:&isJailBroken];
        }
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    aspect = [NSClassFromString(@"TTInfoHelper") aspect_hookSelector:@selector(isJailBroken) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL isJailBroken;
        [[info originalInvocation] getReturnValue:&isJailBroken];
        DLog(@"-------------------------------%@越狱设备-------------------------", isJailBroken);
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            [MBProgressHUD xy_showMessage:@"----------检测到是越狱设备----------"];
        });
        if (isJailBroken) {
            isJailBroken = NO;
            [[info originalInvocation] setReturnValue:&isJailBroken];
        }
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    aspect = [NSClassFromString(@"TTServiceInfoHelper") aspect_hookSelector:@selector(isJailBroken) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL isDeviceJailBreak;
        [[info originalInvocation] getReturnValue:&isDeviceJailBreak];
        DLog(@"-------------------------------%@越狱设备-------------------------", isDeviceJailBreak);
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            [MBProgressHUD xy_showMessage:@"----------检测到是越狱设备----------"];
        });
        if (isDeviceJailBreak) {
            isDeviceJailBreak = NO;
            [[info originalInvocation] setReturnValue:&isDeviceJailBreak];
        }
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
    
    aspect = [NSClassFromString(@"TTInstallDeviceHelper") aspect_hookSelector:@selector(fetchOpenUDIDFromKeychain) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        BOOL fetchOpenUDIDFromKeychain;
        [[info originalInvocation] getReturnValue:&fetchOpenUDIDFromKeychain];
        DLog(@"-------------------------------fetchOpenUDIDFromKeychain:%@-------------------------", fetchOpenUDIDFromKeychain);
    } error:&error];
    [self addHookObject:aspect toArray:self.deviceHookList];
}

- (BOOL)addHookObject:(id<AspectToken>)obj toArray:(NSMutableArray *)array {
    NSParameterAssert(array && [array isKindOfClass:[NSMutableArray class]]);
    if (!obj) {
        return NO;
    }
    if ([array containsObject:obj]) {
        return YES;
    }
    [array addObject:obj];
    return YES;
}

- (void)removeDebugHook {
    if (!self.debugHookList.count) {
        return;
    }
    [self.debugHookList enumerateObjectsUsingBlock:^(id<AspectToken>  _Nonnull token, NSUInteger idx, BOOL * _Nonnull stop) {
        [token remove];
    }];
    
    [self.debugHookList removeAllObjects];
}

- (void)removeCanAnsHook {
    if (!self.canAnshoookList.count) {
        return;
    }
    [self.canAnshoookList enumerateObjectsUsingBlock:^(id<AspectToken>  _Nonnull token, NSUInteger idx, BOOL * _Nonnull stop) {
        [token remove];
    }];
    
    [self.canAnshoookList removeAllObjects];
}
- (void)removeQuizShowLiveRoomHook {
    if (!self.quizShowLiveRoomVhoookList.count) {
        return;
    }
    [self.quizShowLiveRoomVhoookList enumerateObjectsUsingBlock:^(id<AspectToken>  _Nonnull token, NSUInteger idx, BOOL * _Nonnull stop) {
        [token remove];
    }];
    
    [self.quizShowLiveRoomVhoookList removeAllObjects];
}

- (void)removeDeviceHook {
    if (!self.deviceHookList.count) {
        return;
    }
    [self.deviceHookList enumerateObjectsUsingBlock:^(id<AspectToken>  _Nonnull token, NSUInteger idx, BOOL * _Nonnull stop) {
        [token remove];
    }];
    
    [self.deviceHookList removeAllObjects];
}


- (BOOL)hasQuizShowLiveRoomHook {
    return self.quizShowLiveRoomVhoookList.count > 0;
}
- (BOOL)hasDebugHook {
    return self.debugHookList.count > 0;
}
- (BOOL)hasCanAnsHook {
    return self.canAnshoookList.count > 0;
}

- (BOOL)hasDeviceHook {
    return self.deviceHookList.count > 0;
}


- (NSMutableArray<id<AspectToken>> *)quizShowLiveRoomVhoookList {
    if (!_quizShowLiveRoomVhoookList) {
        _quizShowLiveRoomVhoookList = @[].mutableCopy;
    }
    return _quizShowLiveRoomVhoookList;
}

- (NSMutableArray<id<AspectToken>> *)canAnshoookList {
    if (!_canAnshoookList) {
        _canAnshoookList = @[].mutableCopy;
    }
    return _canAnshoookList;
}

- (NSMutableArray<id<AspectToken>> *)debugHookList {
    if (!_debugHookList) {
        _debugHookList = @[].mutableCopy;
    }
    return _debugHookList;
}

- (NSMutableArray<id<AspectToken>> *)deviceHookList {
    if (!_deviceHookList) {
        _deviceHookList = @[].mutableCopy;
    }
    return _deviceHookList;
}

@end


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



CHDeclareMethod1(void, TTCollectionPageViewController, viewDidAppear, BOOL, animated)
{
    CHSuper1(TTCollectionPageViewController, viewDidAppear, animated);
    
    [MBProgressHUD xy_showMessage:@"hello xiaoyuan"];
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



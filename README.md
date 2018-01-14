# iOS 西瓜视频Tweak 实现最简单的百万英雄辅助

最近看到有同事要求我一起玩百万英雄，那个出题5-10秒就没了，太快了导致没时间思考，就结束了，周六日在家没事就用Tweak的方式研究下西瓜视频是怎么实现的。

<img src = "https://github.com/alpface/XiguaVideoTweak/blob/master/Video/img1.png?raw=true" width = "1015" height = "682" alt = "Screenshot1.png"/>


原本计划: 当显示问题时，在事先创建好的webview上百度搜索，手机上弹出一个webview，
缺点：由于手机屏幕小所以再弹出个页面体验不好

简单点实现:  当显示问题时，将此文本复制到iPhone剪切板，如果你的mac和iPhone用同一个账号，直接在浏览器粘贴答案搜索，
另外答案选项也都可以获取到，只是暂时还未利用起来


以下为部分实现:

```
void hookFunc(UIViewController *v) {

    UIAlertController *arc = [UIAlertController alertControllerWithTitle:@"请选择" message:@"目前只支持读取问题的方式进行百度搜索，展示web" preferredStyle:UIAlertControllerStyleAlert];
    [arc addAction:[UIAlertAction actionWithTitle:@"show webview" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (![XYQuestionAnswerManager manager].questionText.length) {
            [MBProgressHUD xy_showMessage:@"没有获取到问题"];
        }
        else {
            [[UIApplication sharedApplication] xy_showWebViewWithCompletion:nil];
            [XYQuestionAnswerManager manager].auxiliary1Block = ^(NSString *qText) {
                if (!qText.length) {
                    return;
                }
                /// 第一中辅助方式：根据问题去百度搜索，以webView呈现
                NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:[XYQuestionAnswerManager manager].questionText] invertedSet];
                NSString *wd = [[XYQuestionAnswerManager manager].questionText stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
                NSString *urlString = [NSString stringWithFormat:@"https://m.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=%@&inputT=1696&rsv_sug4=1697", wd];
                [UIApplication sharedApplication].xy_suspensionWebView.urlString = urlString;
            };
           
        }
    }]];
    [arc addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:NULL]];
    [[UIViewController xy_topViewController] presentViewController:arc animated:YES completion:nil];
    
    TTFQuizShowLiveRoomViewController *vc = (TTFQuizShowLiveRoomViewController *)v;
    NSError *error = nil;
    /// 监听显示答案的事件
    [vc aspect_hookSelector:@selector(showAnswerWithQuestionAnswerUnit:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id questionAnswerUnit) {
    
    } error:&error];
    
    /// 监听显示问题
    [vc aspect_hookSelector:@selector(showQuestionWithQuestionAnswerUnit:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id questionAnswerUnit) {
        if (!vc) {
            return;
        }
        // 获取问题视图
        TTFQuestionAnswerView *qv = vc.questionAnswerView;
        // 问题视图上显示问题的label
        NSString *questionText = qv.questionLabel.text;
        DLog(@"%@", questionText);
        // 问答单元
        TTFQuestionAnswerUnit *unit = qv.questionAnswerUnit;
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
        
        
        /// 存放答案选项的视图，每个
        NSArray<TTFQuestionOptionView *> *optionsViews = vc.questionAnswerView.optionViews;
        
        for (TTFQuestionOptionView *optionView in optionsViews) {
        
            NSLog(@"%@", optionView);
        }
        
    } error:&error];
    

    [NSClassFromString(@"TTFQuestionOptionView") aspect_hookSelector:@selector(beClicked:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, id arg){
        NSLog(@"答案被选中:%@", arg);
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
    
    
}

    
```

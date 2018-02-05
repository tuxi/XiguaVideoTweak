//
//  XYQuestionAnswerUnit.m
//  VideoTweak
//
//  Created by swae on 2018/1/14.
//  Copyright © 2018年 alpface. All rights reserved.
//

#import "XYQuestionAnswerUnit.h"
#import "XYSuspensionWebView.h"
#import "XYConsoleView.h"

static NSString * const XYRecordQuestionKey = @"questionKey";

@interface XYQuestionAnswerUnit()

@property (nonatomic, strong) NSMutableDictionary *questionAnserDict;
/// 问题
@property (nonatomic, copy) NSString *questionText;
/// 答案选项
@property (nonatomic, strong) NSArray<NSString *> *answerOptionArray;

@end

@implementation XYQuestionAnswerUnit

@dynamic defaultUnit;

+ (XYQuestionAnswerUnit *)defaultUnit {
    static id _m = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _m = self.new;
    });
    return _m;
}

- (void)setQuestionText:(NSString *)questionText {
    
    if ([_questionText isEqualToString:questionText]) {
        return;
    }
    _questionText = questionText;
    
    if (!questionText.length) {
        return;
    }
    
    [self.class recordQuestion:_questionText];
}

- (void)setAnswerOptionArray:(NSMutableArray<NSString *> *)answerOptionArray {
    _answerOptionArray = answerOptionArray;
    
    DLog(@"%@", answerOptionArray);
}

- (void)setQuestionText:(NSString *)questionText answerOptions:(NSArray<NSString *> *)answerOptions {
    self.questionText = questionText;
    self.answerOptionArray = answerOptions;
    
    // 将问题复制到剪切板
    //    UIPasteboard *pboard = [UIPasteboard generalPasteboard];
    //    pboard.string = questionText;
    
    // 执行第一中方案
    if (self.auxiliary1Block) {
        self.auxiliary1Block(questionText, answerOptions);
    }
}

//- (void)auxiliary1:(NSString *)questionText {
//    /// 第一中辅助方式：根据问题去百度搜索，以webView呈现
//    NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:questionText] invertedSet];
//    NSString *wd = [questionText stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
//    NSString *urlString = [NSString stringWithFormat:@"https://m.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=%@&inputT=1696&rsv_sug4=1697", wd];
//    [UIApplication sharedApplication].xy_suspensionWebView.urlString = urlString;
//}

/// 统计问题
+ (void)recordQuestion:(NSString *)questionText {
    if (!questionText.length) {
        return;
    }
    
    NSMutableArray *questionArray = [[XYQuestionAnswerUnit defaultUnit].questionAnserDict objectForKey:XYRecordQuestionKey];
    if (!questionArray) {
        questionArray = @[].mutableCopy;
        [[XYQuestionAnswerUnit defaultUnit].questionAnserDict setObject:questionArray forKey:XYRecordQuestionKey];
    }
    if ([questionArray containsObject:questionText]) {
        return;
    }
    [questionArray addObject:questionText];
    
}
@end

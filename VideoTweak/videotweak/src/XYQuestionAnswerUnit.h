//
//  XYQuestionAnswerUnit.h
//  VideoTweak
//
//  Created by swae on 2018/1/14.
//  Copyright © 2018年 alpface. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYQuestionAnswerUnit : NSObject

@property (nonatomic, strong, class) XYQuestionAnswerUnit *defaultUnit;

////////////////////////////////////////////////////////////////////////
#pragma mark - 实现辅助方式
////////////////////////////////////////////////////////////////////////

/// 方式1：显示问题时，在事先创建好的webview上百度搜索，手机上弹出一个webview， 缺点：由于手机屏幕小所以再弹出个页面体验不好
/// @note 此文本已经被复制到iPhone剪切板，如果你的mac和iPhone用同一个账号，直接在浏览器粘贴答案搜索,
@property (nonatomic, copy) void (^ auxiliary1Block)(NSString *lastQuestionText, NSArray<NSString *> *answerOps);

- (void)setQuestionText:(NSString *)questionText answerOptions:(NSArray<NSString *> *)answerOptions;

@end

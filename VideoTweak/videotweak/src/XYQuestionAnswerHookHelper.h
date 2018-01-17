//
//  XYQuestionAnswerHookHelper.h
//  VideoTweak
//
//  Created by swae on 2018/1/15.
//  Copyright © 2018年 alpface. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYQuestionAnswerHookHelper : NSObject

@property (nonatomic, strong, class) XYQuestionAnswerHookHelper *helper;
- (void)configQuizShowLiveRoomHook;
- (void)configDebugHook;
- (void)confiCanAnsHook;
- (void)configDeviceHook;

- (void)removeDebugHook;
- (void)removeCanAnsHook;
- (void)removeQuizShowLiveRoomHook;
- (void)removeDeviceHook;

- (BOOL)hasQuizShowLiveRoomHook;
- (BOOL)hasDebugHook;
- (BOOL)hasCanAnsHook;
- (BOOL)hasDeviceHook;
@end

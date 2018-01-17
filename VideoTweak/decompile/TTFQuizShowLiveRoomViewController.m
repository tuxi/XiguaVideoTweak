

@implementation TTFQuizShowLiveRoomViewController

- (void)setBeginLiveTimeDate:(id)arg2 
{
    r0 = loc_e0a090(self, @selector(beginLiveTimeDate), arg2);
    return;
}

- (id)beginLiveTimeDate
{
    r0 = loc_e0a050(self, @selector(beginLiveTimeDate));
    return r0;
}

- (void)setBeginWatchTimeDate:(id)arg2 
{
    r0 = loc_e0a090(self, @selector(beginWatchTimeDate), arg2);
    return;
}

- (id)beginWatchTimeDate
{
    r0 = loc_e0a050(self, @selector(beginWatchTimeDate));
    return r0;
}

- (void)setItemNum:(id)arg2 
{
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), arg2);
    r6 = loc_e09f9c();
    r1 = @selector(itemNum);
    sub_e0a054(self, r1, r6, 0x1);
    r0 = r6;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (id)itemNum
{
    sub_e0a08c(self, @selector(itemNum));
    r4 = loc_e09f9c();
    r2 = loc_e09f98(NSNumber, @selector(class), objc_cls_ref_NSNumber);
    if (loc_e09f98(r4, @selector(isKindOfClass:), r2) != 0x0) {
            r5 = loc_e09f98(r4, @selector(longLongValue));
            r6 = @selector(longLongValue);
    }
    else {
            r5 = 0x0;
            r6 = 0x0;
    }
    loc_e09f94(r4);
    r0 = r5;
    return r0;
}

- (void)setStayBeginTime:(id)arg2 
{
    r0 = loc_e0a090(self, @selector(stayBeginTime), arg2);
    return;
}

- (id)stayBeginTime
{
    r0 = loc_e0a050(self, @selector(stayBeginTime));
    return r0;
}

- (id)getLiveTimeTimeInterval
{
    r5 = self;
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r8 = loc_e09f9c();
    r6 = @selector(beginLiveTimeDate);
    loc_e09f98(r5, r6);
    r7 = &arg_C;
    r4 = loc_e09f9c();
    loc_e09f94();
    if (r4 != 0x0) {
            loc_e09f98(r5, r6);
            r4 = loc_e09f9c();
            r5 = loc_e09f98(r8, @selector(timeIntervalSinceDate:), r4);
            loc_e09f94(r4);
            @selector(timeIntervalSinceDate:) << 0x10 | r5;
    }
    else {
            asm{ vmov.i32   d8, #0x0 } << 0x10 | 0x0;
    }
    loc_e09f94(r8);
    r0 = d8 & 0xffff;
    Pop();
    return r0;
}

- (id)getWatchTimeTimeInterval
{
    r5 = self;
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r8 = loc_e09f9c();
    r6 = @selector(beginWatchTimeDate);
    loc_e09f98(r5, r6);
    r7 = &arg_C;
    r4 = loc_e09f9c();
    loc_e09f94();
    if (r4 != 0x0) {
            loc_e09f98(r5, r6);
            r4 = loc_e09f9c();
            r5 = loc_e09f98(r8, @selector(timeIntervalSinceDate:), r4);
            loc_e09f94(r4);
            @selector(timeIntervalSinceDate:) << 0x10 | r5;
    }
    else {
            asm{ vmov.i32   d8, #0x0 } << 0x10 | 0x0;
    }
    loc_e09f94(r8);
    r0 = d8 & 0xffff;
    Pop();
    return r0;
}

- (id)getWrongItemNum
{
    r0 = self;
    r1 = @selector(itemNum);
    r0 = loc_1be4138(r0, r1);
    return r0;
}

- (void)trackerEnterLiveRoom
{
    loc_e09f98(NSMutableDictionary, @selector(dictionaryWithCapacity:), 0x7);
    r11 = loc_e09f9c();
    loc_e09f98(self, @selector(viewModel));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(currentActivity));
    r6 = loc_e09f9c();
    r2 = loc_e09f98(r6, @selector(activityId));
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), r2, @selector(activityId));
    r4 = loc_e09f9c();
    loc_e09f98(r11, @selector(setObject:forKeyedSubscript:), r4, @"million_pound_id");
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f98(self, @selector(viewModel));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(getActivityStatusStringForTracker));
    r6 = loc_e09f9c();
    loc_e09f98(r11, @selector(setValue:forKey:), r6, *0x20c664c);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f98(self, @selector(viewModel));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(enterFromStr));
    r6 = loc_e09f9c();
    loc_e09f98(r11, @selector(setValue:forKey:), r6, @"enter_from");
    loc_e09f94(r6);
    loc_e09f94(r4);
    r1 = @selector(eventV3:params:);
    loc_e09f98(TTTracker, r1, *0x20c705c, r11);
    r0 = r11;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)startTrackStayPage
{
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r5 = loc_e09f9c();
    r1 = @selector(setStayBeginTime:);
    loc_e09f98(self, r1, r5);
    r0 = r5;
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)endTrackStayPage:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x8;
    r11 = self;
    r10 = arg2;
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r8 = loc_e09f9c();
    loc_e09f98(r11, @selector(stayBeginTime));
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r8, @selector(timeIntervalSinceDate:), r5);
    loc_e09f94(r5);
    r0 = loc_e09f94(r8);
    @selector(timeIntervalSinceDate:) << 0x10 | r6;
    asm{ vmul.f64   d16, d17, d16 };
    asm{ vcvt.f32.f64 s16, d16 };
    asm{ vcmpe.f32  s16, s0 };
    asm{ vmrs       APSR_nzcv, fpscr };
    if (CPU_FLAGS & P) {
            Pop();
            Pop();
            Pop();
            Pop();
            return;
    }
    else {
            loc_e09f98(NSMutableDictionary, @selector(dictionaryWithCapacity:), 0x7);
            r0 = loc_e09f9c();
            arg_4 = r10;
            r10 = r0;
            loc_e09f98(r11, @selector(viewModel));
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(currentActivity));
            r8 = loc_e09f9c();
            r2 = loc_e09f98(r8, @selector(activityId));
            loc_e09f98(NSNumber, @selector(numberWithLongLong:), r2, @selector(activityId));
            r5 = loc_e09f9c();
            var_0 = @selector(setObject:forKeyedSubscript:);
            loc_e09f98(r10, @selector(setObject:forKeyedSubscript:), r5, @"million_pound_id");
            loc_e09f94(r5);
            loc_e09f94(r8);
            loc_e09f94(r4);
            loc_e09f98(r11, @selector(viewModel));
            r5 = loc_e09f9c();
            loc_e09f98(r5, @selector(getActivityStatusStringForTracker));
            r6 = loc_e09f9c();
            loc_e09f98(r10, @selector(setValue:forKey:), r6, *0x20c664c);
            loc_e09f94(r6);
            loc_e09f94(r5);
            loc_e09f98(r11, @selector(viewModel));
            r5 = loc_e09f9c();
            loc_e09f98(r5, @selector(enterFromStr));
            r6 = loc_e09f9c();
            loc_e09f98(r10, @selector(setValue:forKey:), r6, @"enter_from");
            loc_e09f94(r6);
            loc_e09f94(r5);
            asm{ vmov       r2, s16 };
            loc_e09f98(NSNumber, @selector(numberWithFloat:));
            r4 = loc_e09f9c();
            loc_e09f98(r10, var_0, r4, @"stay_time");
            loc_e09f94(r4);
            loc_e09f98(NSNumber, @selector(numberWithBool:), arg_4);
            r4 = loc_e09f9c();
            loc_e09f98(r10, var_0, r4, @"is_close");
            loc_e09f94(r4);
            r1 = @selector(eventV3:params:);
            loc_e09f98(TTTracker, r1, *0x20c7060, r10);
            r0 = r10;
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            r0 = loc_1be412c(r0, r1);
    }
    return;
}

- (id)initWithCoder:(id)arg2 
{
    loc_e09f98(self, @selector(doesNotRecognizeSelector:), _cmd);
    loc_e09f94(self);
    return 0x0;
}

- (id)initWithNibName:(id)arg2 bundle:(id)arg3 
{
    STK33 = r7;
    loc_e09f98(self, @selector(doesNotRecognizeSelector:), _cmd, arg3, lr, STK33, r4);
    loc_e09f94(self);
    return 0x0;
}

- (id)initWithViewModel:(id)arg2 immediatelyEnterAfterIndex:(id)arg3 enterAgain:(id)arg4 delegate:(id)arg5 
{
    STK33 = r5;
    STK35 = r7;
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x3 };
    sp = sp - 0x38;
    r10 = loc_e09fa4(arg2, _cmd, arg2, arg3, r8, r11, r10, r8, lr, STK35, r6, STK33, r4);
    r6 = loc_e09fa4(*(r7 + 0xc));
    arg_30 = self;
    arg_34 = *0x2352ee4;
    r11 = loc_e09fa0(&arg_30, @selector(initWithNibName:bundle:), 0x0, 0x0);
    if (r11 != 0x0) {
            asm{ strd       r5, r6, [sp, #0x8] };
            r6 = r10;
            r8 = @selector(mainScreen);
            loc_e09f98(UIScreen, r8);
            r7 = r7;
            r4 = loc_e09f9c();
            r10 = @selector(bounds);
            if (r4 != 0x0) {
                    loc_e09fb0(&arg_20, r4, r10);
                    asm{ vadd.f32   d0, d1, d0 };
            }
            else {
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            asm{ vabs.f32   d0, d0 };
            asm{ vmov.i32   d1, #0x800000 } << 0x10 | 0x800000;
            asm{ vcmpe.f32  s0, s2 };
            asm{ vmrs       APSR_nzcv, fpscr };
            if (CPU_FLAGS & GE) {
                    loc_e09f94(r4);
                    r10 = r6;
                    r0 = 0x2344f0c;
            }
            else {
                    r0 = *objc_cls_ref_UIScreen;
                    loc_e09f98(r0, r8);
                    r7 = r7;
                    r5 = loc_e09f9c();
                    if (r5 != 0x0) {
                            loc_e09fb0(&arg_10, r5, r10);
                            asm{ vadd.f32   d8, d1, d0 };
                    }
                    else {
                            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                            asm{ vst1.64    {d16, d17}, [r0] };
                    }
                    r10 = r6;
                    loc_e09f94(r5);
                    loc_e09f94(r4);
                    asm{ vabs.f32   d1, d8 };
                    asm{ vmov.i32   d0, #0x800000 } << 0x10 | 0x800000;
                    asm{ vcmpe.f32  s2, s0 };
                    asm{ vmrs       APSR_nzcv, fpscr };
                    if (CPU_FLAGS & GE) {
                            r0 = 0x2344f0c;
                    }
                    else {
                            r0 = 0x2344eb8;
                    }
            }
            loc_e09f98(r11, *r0, 0x1);
            loc_e09f98(r11, @selector(setViewModel:), r10);
            loc_e09f98(r11, @selector(viewModel));
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(setQuestionAnswerDelegate:), r11);
            loc_e09f94(r4);
            loc_e09f98(r11, @selector(viewModel));
            r4 = loc_e09f9c();
            r8 = @selector(setDelegate:);
            loc_e09f98(r4, r8, r11);
            loc_e09f94(r4);
            loc_e09f98(r11, @selector(viewModel));
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(setDebugDelegate:), r11);
            loc_e09f94(r4);
            loc_e09f98(NSMutableSet, @selector(setWithCapacity:), 0xc);
            r4 = loc_e09f9c();
            loc_e09f98(r11, @selector(setCurQuestionAnswerUserCountSet:), r4);
            loc_e09f94(r4);
            loc_e09f98(r11, @selector(setImmediatelyEnterAfterIndex:), arg_8);
            r2 = *(r7 + 0x8);
            loc_e09f98(r11, @selector(setEnterAgain:), r2);
            loc_e09f98(r11, @selector(setTtf_enableInteractivePopGestureRecognizer:), 0x0);
            r6 = arg_C;
            loc_e09f98(r11, r8, r6);
            loc_e09f98(r11, @selector(KVOController));
            r4 = loc_e09f9c();
            loc_e09f98(UIApplication, @selector(sharedApplication), objc_cls_ref_UIApplication);
            r7 = r7;
            r5 = loc_e09f9c();
            arg_4 = void ^(void * _block, void * arg1, void * arg2, struct NSDictionary * arg3) {
        STK32 = r4;
        STK37 = r8;
        r4 = @selector(sharedApplication);
        loc_e09f98(UIApplication, r4, arg2, arg3, STK37, lr, r7, r6, r5, STK32);
        r7 = &arg_C;
        r5 = loc_e09f9c();
        r6 = loc_e09f98(r5, @selector(isIdleTimerDisabled));
        r0 = loc_e09f94(r5);
        if (r6 != 0x0) {
                return;
        }
        else {
                r0 = *objc_cls_ref_UIApplication;
                loc_e09f98(r0, r4);
                r4 = loc_e09f9c();
                r1 = @selector(setIdleTimerDisabled:);
                loc_e09f98(r4, r1, 0x1);
                r0 = r4;
                Pop();
                Pop();
                Pop();
                Pop();
                Pop();
                r0 = loc_1be412c(r0, r1);
        }
        return;
    };
            var_0 = 0x1;
            loc_e09f98(r4, @selector(observe:keyPath:options:block:), r5, @"idleTimerDisabled");
            loc_e09f94(r5);
            loc_e09f94(r4);
    }
    loc_e09f94(r6);
    loc_e09f94(r10);
    r0 = r11;
    Pop();
    Pop();
    Pop();
    Pop();
    return r0;
}

- (void)dealloc
{
    sub_a22894(@"leave quiz show room", _cmd, r2, r3);
    loc_e09f98(TTFAudioServicesManager, @selector(sharedManager), objc_cls_ref_TTFAudioServicesManager);
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(stopAllAudio));
    loc_e09f94(r5);
    loc_e09f98(self, @selector(player));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(close));
    loc_e09f94(r5);
    loc_e09f98(self, @selector(videoEngine));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(stop));
    loc_e09f94(r5);
    loc_e09f98(AVAudioSession, @selector(sharedInstance), objc_cls_ref_AVAudioSession);
    r5 = loc_e09f9c();
    var_0 = 0x0;
    loc_e09f98(r5, @selector(setActive:withOptions:error:), 0x0, 0x1);
    loc_e09f94(r5);
    loc_e09f98(self, @selector(talkboardViewController));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(willMoveToParentViewController:), 0x0);
    loc_e09f98(r5, @selector(view));
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(removeFromSuperview));
    loc_e09f94(r6);
    loc_e09f98(r5, @selector(removeFromParentViewController));
    loc_e09f94(r5);
    loc_e09f98(self, @selector(logoLoopTimer));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(invalidate));
    loc_e09f94(r5);
    loc_e09f98(self, @selector(viewModel));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(recoverLifesIfNeed));
    loc_e09f94(r5);
    loc_e09f98(self, @selector(removeNotification));
    arg_4 = self;
    arg_8 = *0x2352ee4;
    r0 = loc_e09fa0((sp - 0xc) + 0x4, @selector(dealloc));
    return;
}

- (void)viewDidLoad
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x1e0 - sp - 0x40;
    r10 = self;
    arg_198 = r10;
    arg_19C = *0x2352ee4;
    loc_e09fa0(&arg_198, @selector(viewDidLoad));
    arg_50 = @selector(view);
    loc_e09f98(r10, @selector(view));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setClipsToBounds:), 0x1);
    loc_e09f94(r4);
    loc_e09f98(UIApplication, @selector(sharedApplication), objc_cls_ref_UIApplication);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setIdleTimerDisabled:), 0x1);
    loc_e09f94(r4);
    loc_e09f98(AVAudioSession, @selector(sharedInstance));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(setCategory:error:), *_AVAudioSessionCategoryPlayback, 0x0);
    loc_e09f94(r5);
    loc_e09f98(AVAudioSession, @selector(sharedInstance));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setActive:error:), 0x1, 0x0);
    loc_e09f94(r4);
    loc_e09f98(r10, @selector(startTrackStayPage));
    arg_48 = @selector(alloc);
    r5 = loc_e09f98(TTFTalkBoardViewController, @selector(alloc), objc_cls_ref_TTFTalkBoardViewController);
    loc_e09f98(r10, @selector(viewModel));
    r4 = loc_e09f9c();
    arg_34 = @selector(currentActivity);
    loc_e09f98(r4, @selector(currentActivity));
    r6 = loc_e09f9c();
    arg_38 = @selector(activityId);
    r2 = loc_e09f98(r6, @selector(activityId));
    r5 = loc_e09f98(r5, @selector(initWithActivityID:), r2, @selector(activityId));
    loc_e09f98(r10, @selector(setTalkboardViewController:), r5);
    loc_e09f94(r5);
    loc_e09f94(r6);
    loc_e09f94(r4);
    r8 = @selector(talkboardViewController);
    loc_e09f98(r10, r8);
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    r5 = loc_e09f9c();
    loc_e09f98(r10, @selector(viewModel));
    r6 = loc_e09f9c();
    loc_e09f98(r5, @selector(setLiveRoomViewModel:), r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f98(r10, r8);
    r4 = loc_e09f9c();
    loc_e09f98(r10, @selector(addChildViewController:), r4);
    loc_e09f94(r4);
    loc_e09f98(r10, arg_50);
    r4 = loc_e09f9c();
    loc_e09f98(UIColor, @selector(ttf_colorWithHexString:), @"1E1443");
    r5 = loc_e09f9c();
    arg_20 = @selector(setBackgroundColor:);
    loc_e09f98(r4, @selector(setBackgroundColor:), r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f98(r10, @selector(trackerEnterLiveRoom));
    loc_e09f98(TTFLiveTracker, arg_48);
    arg_40 = @selector(init);
    r4 = loc_e09f98();
    loc_e09f98(r10, @selector(setLiveTracker:), r4);
    loc_e09f94(r4);
    loc_e09f98(r10, @selector(liveTracker));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setDataSource:), r10);
    loc_e09f94(r4);
    loc_e09f98(r10, @selector(uiComponentsInit));
    arg_24 = r8;
    loc_e09f98(r10, r8);
    r4 = loc_e09f9c();
    loc_e09f98(r10, @selector(viewModel));
    r5 = loc_e09f9c();
    arg_4C = @selector(commentInterval);
    asm{ vmov       s0, r0 } << 0x10 | loc_e09f98(r5, @selector(commentInterval));
    asm{ vcvt.f64.s32 d16, s0 };
    loc_e09f98(r4, @selector(setPollingInterval:), d16 & 0xffff, d16 >> 0x10);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_54 = @selector(viewModel);
    loc_e09f98(r10, @selector(viewModel));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(checkActivityStatus));
    loc_e09f94(r4);
    sub_e09ff4(&arg_194, r10);
    arg_1A0 = &arg_17C + 0x14;
    arg_1C4 = *__objc_personality_v0;
    arg_1C8 = 0x1f21844;
    r0 = *0xaa3158;
    arg_1CC = r7;
    arg_1D4 = sp;
    arg_1D0 = (r0 | 0x1) + 0xaa26d2;
    arg_1B0 = 0x1;
    sub_e09ff8();
    arg_58 = r10;
    arg_30 = @selector(KVOController);
    loc_e09f98(r10, @selector(KVOController));
    arg_1B0 = 0xffffffff;
    arg_44 = loc_e09f9c();
    arg_1B0 = 0x2;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x2);
    arg_1B0 = 0xffffffff;
    arg_3C = loc_e09f9c();
    arg_1B0 = 0x3;
    sub_e0a018(arg_4C);
    arg_1B0 = 0xffffffff;
    r4 = loc_e09f9c();
    r0 = *_NSConcreteStackBlock;
    arg_4C = r0;
    arg_17C = r0;
    arg_180 = 0xc2000000;
    asm{ stm        r3!, {r0, r1, r2} };
    loc_e09ff0(arg_1A0, &arg_194, 0x20c5ab8, &arg_184);
    arg_1B0 = 0x4;
    arg_4 = &arg_17C;
    var_0 = 0x5;
    arg_2C = @selector(observe:keyPath:options:block:);
    arg_28 = r4;
    loc_e09f98(arg_44, @selector(observe:keyPath:options:block:), arg_3C, r4);
    loc_e09f94(arg_28);
    loc_e09f94(arg_3C);
    loc_e09f94(arg_44);
    arg_1A4 = &arg_164 + 0x14;
    arg_1B0 = 0x5;
    loc_e09f98(arg_58, arg_30);
    arg_1B0 = 0xffffffff;
    arg_44 = loc_e09f9c();
    arg_1B0 = 0x6;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x6);
    arg_1B0 = 0xffffffff;
    arg_3C = loc_e09f9c();
    arg_1B0 = 0x7;
    sub_e0a018(@selector(isLiveRoomIndexSuccess));
    arg_1B0 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_164 = arg_4C;
    arg_168 = 0xc2000000;
    asm{ strd       r2, r0, [sp, #0x16c] };
    arg_174 = 0x20c5ad0;
    loc_e09ff0(arg_1A4, &arg_194, 0x0);
    arg_1B0 = 0x8;
    arg_4 = &arg_164;
    var_0 = 0x1;
    arg_28 = r4;
    loc_e09f98(arg_44, arg_2C, arg_3C, r4);
    loc_e09f94(arg_28);
    loc_e09f94(arg_3C);
    loc_e09f94(arg_44);
    arg_1B0 = 0x9;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x9);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0xa;
    arg_3C = r0;
    arg_44 = @selector(activityStatus);
    r4 = loc_e09f98();
    loc_e09f94(arg_3C);
    if (r4 > 0x1) goto loc_aa2964;
    goto loc_aa288c;

loc_aa2964:
    arg_1B0 = 0x3b;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x3b);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x3c;
    arg_3C = r0;
    if (loc_e09f98() != 0x3) goto loc_aa2994;
    goto loc_aa298c;

loc_aa2994:
    arg_1B0 = 0x3d;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x3d);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x3e;
    arg_28 = r0;
    if (loc_e09f98() != 0x4) goto loc_aa2fde;
    goto loc_aa29be;

loc_aa2fde:
    loc_e09f94(arg_28);
    loc_e09f94(arg_3C);
    r11 = arg_58;

loc_aa30d0:
    arg_1B0 = 0x48;
    loc_e09f98(r11, arg_54);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x49;
    arg_3C = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_3C);
    if (r4 != 0x0) {
            arg_1B0 = 0x4a;
            if (loc_e09f98(arg_58, @selector(immediatelyEnterAfterIndex)) != 0x0) {
                    arg_1B0 = 0x4b;
                    asm{ ldrd       r1, r0, [sp, #0x54] };
                    loc_e09f98(0x4b);
                    arg_1B0 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x4c;
                    arg_3C = r0;
                    loc_e09f98();
            }
            else {
                    arg_1B0 = 0x4d;
                    loc_e09f98(TTFantasyService, @selector(sharedService), 0x4d);
                    arg_1B0 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x4e;
                    arg_28 = r0;
                    loc_e09f98();
                    arg_1B0 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x4f;
                    arg_24 = r0;
                    loc_e09f98();
                    arg_1B0 = 0xffffffff;
                    r7 = r7;
                    arg_3C = loc_e09f9c();
                    loc_e09f94(arg_24);
                    loc_e09f94(arg_28);
                    arg_1B0 = 0x50;
                    r2 = loc_e09f98(NSNumber, @selector(class), 0x50);
                    arg_1B0 = 0x51;
                    if (loc_e09f98(arg_3C, @selector(isKindOfClass:), r2) != 0x0) {
                            arg_1B0 = 0x52;
                            if (loc_e09f98(arg_3C, @selector(boolValue)) == 0x0) {
                                    sub_e09ff4(&arg_14C, arg_58);
                                    arg_1B0 = 0x53;
                                    r0 = sub_e0a998(0x5);
                                    asm{ umull      r2, r3, r0, r1 };
                                    r4 = sub_e0a03c(0x0, 0x0);
                                    r8 = &arg_EC;
                                    arg_EC = arg_4C;
                                    asm{ strd       r2, r6, [sp, #0xf0] };
                                    r10 = &arg_14C;
                                    asm{ strd       r0, r1, [sp, #0xf8] };
                                    loc_e09ff0(r8 + 0x14, r10, 0xc2000000);
                                    sub_e0a038(r4, 0x0, *_dispatch_main_q);
                                    sub_e09f90(r8 + 0x14);
                                    sub_e09f90(r10);
                            }
                    }
                    else {
                            sub_e09ff4(&arg_14C, arg_58);
                            arg_1B0 = 0x53;
                            r0 = sub_e0a998(0x5);
                            asm{ umull      r2, r3, r0, r1 };
                            r4 = sub_e0a03c(0x0, 0x0);
                            r8 = &arg_EC;
                            arg_EC = arg_4C;
                            asm{ strd       r2, r6, [sp, #0xf0] };
                            r10 = &arg_14C;
                            asm{ strd       r0, r1, [sp, #0xf8] };
                            loc_e09ff0(r8 + 0x14, r10, 0xc2000000);
                            sub_e0a038(r4, 0x0, *_dispatch_main_q);
                            sub_e09f90(r8 + 0x14);
                            sub_e09f90(r10);
                    }
            }
            loc_e09f94(arg_3C);
            arg_1B0 = 0x54;
            if (loc_e09f98(arg_58, @selector(isFetchStreamInfoSuccess)) == 0x0) {
                    arg_1B0 = 0x55;
                    arg_3C = @selector(playerIndicatorView);
                    loc_e09f98(arg_58, @selector(playerIndicatorView));
                    arg_1B0 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x56;
                    arg_28 = r0;
                    loc_e09f98();
                    loc_e09f94(arg_28);
                    arg_1B0 = 0x57;
                    loc_e09f98(arg_58, arg_3C);
                    arg_1B0 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x58;
                    arg_3C = r0;
                    loc_e09f98();
                    loc_e09f94(arg_3C);
                    arg_1B0 = 0x59;
                    asm{ ldrd       r1, r0, [sp, #0x54] };
                    loc_e09f98(0x59);
                    arg_1B0 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x5a;
                    arg_3C = r0;
                    loc_e09f98();
                    loc_e09f94(arg_3C);
                    arg_1B0 = 0x5b;
                    loc_e09f98(TTFantasyService, @selector(sharedService), 0x5b);
                    arg_1B0 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x5c;
                    arg_3C = r0;
                    r4 = loc_e09f98();
                    loc_e09f94(arg_3C);
                    if (r4 != 0x1) {
                            arg_1B0 = 0x5d;
                            asm{ ldrd       r1, r0, [sp, #0x54] };
                            loc_e09f98(0x5d);
                            arg_1B0 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_1B0 = 0x5e;
                            arg_3C = r0;
                            loc_e09f98();
                            arg_1B0 = 0xffffffff;
                            r7 = r7;
                            r0 = loc_e09f9c();
                            arg_1B0 = 0x5f;
                            arg_28 = r0;
                            r4 = loc_e09f98();
                            loc_e09f94(arg_28);
                            loc_e09f94(arg_3C);
                            if (r4 == 0x0) {
                                    arg_1B0 = 0x60;
                                    loc_e09f98(TTFIndicatorView, @selector(showIndicatorText:animated:), cfstring_S_MR_N___, 0x1);
                                    arg_1B0 = 0xffffffff;
                                    r7 = r7;
                                    loc_e09f9c();
                                    loc_e09f94();
                            }
                    }
            }
    }
    arg_1B0 = 0x61;
    arg_3C = @selector(standardUserDefaults);
    loc_e09f98(NSUserDefaults, @selector(standardUserDefaults), 0x61);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x62;
    arg_28 = r0;
    arg_1C = loc_e09f98();
    loc_e09f94(arg_28);
    arg_1B0 = 0x63;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x63);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x64;
    arg_28 = r0;
    loc_e09f98();
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x65;
    arg_34 = r0;
    arg_24 = loc_e09f98();
    loc_e09f94(arg_34);
    loc_e09f94(arg_28);
    arg_1B0 = 0x66;
    loc_e09f98(NSUserDefaults, arg_3C);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x67;
    arg_38 = r0;
    arg_34 = loc_e09f98();
    loc_e09f94(arg_38);
    arg_1B0 = 0x68;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x68);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x69;
    arg_38 = r0;
    if (loc_e09f98() >= 0x3) goto loc_aa371c;
    goto loc_aa358e;

loc_aa371c:

loc_aa371e:
    loc_e09f94();

loc_aa3722:
    arg_1B0 = 0x74;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x74);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x75;
    arg_3C = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_3C);
    if (r4 >= 0x2) {
            arg_1B0 = 0x76;
            arg_3C = @selector(date);
            loc_e09f98(NSDate, @selector(date), 0x76);
            arg_1B0 = 0xffffffff;
            r2 = loc_e09f9c();
            arg_1B0 = 0x77;
            arg_44 = r2;
            loc_e09f98(arg_58, @selector(setBeginLiveTimeDate:), r2);
            loc_e09f94(arg_44);
            arg_1B0 = 0x78;
            asm{ ldrd       r1, r0, [sp, #0x54] };
            loc_e09f98(0x78);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0x79;
            arg_44 = r0;
            arg_38 = @selector(authInfo);
            loc_e09f98();
            arg_1B0 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            if (r0 != 0x0) {
                    arg_34 = r0;
                    arg_1B0 = 0x7a;
                    asm{ ldrd       r1, r0, [sp, #0x54] };
                    loc_e09f98(0x7a);
                    arg_1B0 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x7b;
                    arg_28 = r0;
                    loc_e09f98();
                    arg_1B0 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x7c;
                    arg_38 = r0;
                    r4 = loc_e09f98();
                    loc_e09f94(arg_38);
                    loc_e09f94(arg_28);
                    loc_e09f94(arg_34);
                    loc_e09f94(arg_44);
                    if (r4 != 0x0) {
                            arg_1B0 = 0x7d;
                            loc_e09f98(NSDate, arg_3C);
                            arg_1B0 = 0xffffffff;
                            r7 = r7;
                            r2 = loc_e09f9c();
                            arg_1B0 = 0x7e;
                            arg_44 = r2;
                            loc_e09f98(arg_58, @selector(setBeginWatchTimeDate:), r2);
                            loc_e09f94(arg_44);
                    }
            }
            else {
                    loc_e09f94();
                    loc_e09f94(arg_44);
                    arg_1B0 = 0x7d;
                    loc_e09f98(NSDate, arg_3C);
                    arg_1B0 = 0xffffffff;
                    r7 = r7;
                    r2 = loc_e09f9c();
                    arg_1B0 = 0x7e;
                    arg_44 = r2;
                    loc_e09f98(arg_58, @selector(setBeginWatchTimeDate:), r2);
                    loc_e09f94(arg_44);
            }
            arg_1B0 = 0x7f;
            loc_e09f98(TTFantasyService, @selector(sharedService), 0x7f);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0x80;
            arg_44 = r0;
            loc_e09f98();
            arg_1B0 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_1B0 = 0x81;
            arg_3C = r0;
            r4 = loc_e09f98();
            loc_e09f94(arg_3C);
            loc_e09f94(arg_44);
            if (r4 == 0x0) {
                    arg_1B0 = 0x82;
                    loc_e09f98(arg_58, @selector(loginButton));
                    arg_1B0 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_1B0 = 0x83;
                    arg_44 = r0;
                    loc_e09f98();
                    loc_e09f94(arg_44);
                    arg_1B0 = 0x84;
                    loc_e09f98(arg_58, @selector(_updateButtonStatus));
            }
    }
    arg_1B0 = 0x85;
    loc_e09f98(arg_58, @selector(registerNotification));
    arg_1B0 = 0x86;
    loc_e09f98(TTFantasyService, @selector(sharedService), 0x86);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x87;
    arg_44 = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_44);
    if (r4 != 0x0) {
            arg_1B0 = 0x88;
            loc_e09f98(UIView, arg_48);
            arg_1B0 = 0x89;
            r2 = loc_e09f98();
            arg_1B0 = 0x8a;
            arg_44 = r2;
            loc_e09f98(arg_58, @selector(setDebugToolContainer:), arg_44);
            loc_e09f94(arg_44);
            arg_1B0 = 0x8b;
            arg_44 = @selector(debugToolContainer);
            loc_e09f98(arg_58, @selector(debugToolContainer));
            arg_1B0 = 0xffffffff;
            arg_3C = loc_e09f9c();
            arg_1B0 = 0x8c;
            loc_e09f98(UIColor, @selector(blackColor), 0x8c);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0x8d;
            arg_38 = r0;
            arg_28 = @selector(colorWithAlphaComponent:);
            loc_e09f98();
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0x8e;
            arg_34 = r0;
            loc_e09f98(arg_3C, arg_20, r0);
            loc_e09f94(arg_34);
            loc_e09f94(arg_38);
            loc_e09f94(arg_3C);
            arg_1B0 = 0x8f;
            loc_e09f98(arg_58, arg_50);
            arg_1B0 = 0xffffffff;
            arg_50 = loc_e09f9c();
            arg_1B0 = 0x90;
            loc_e09f98(arg_58, arg_44);
            arg_1B0 = 0xffffffff;
            r2 = loc_e09f9c();
            arg_1B0 = 0x91;
            asm{ strd       r2, r1, [sp, #0x38] };
            loc_e09f98(arg_50, @selector(addSubview:), r2);
            loc_e09f94(arg_38);
            loc_e09f94(arg_50);
            arg_1B0 = 0x92;
            loc_e09f98(arg_58, arg_44);
            arg_1B0 = 0xffffffff;
            r4 = loc_e09f9c();
            arg_D4 = arg_4C;
            arg_D8 = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0xdc] };
            arg_E4 = 0x20c5b30;
            r0 = loc_e09fa4(arg_58, 0x20c5b30, 0x0);
            arg_50 = r0;
            arg_E8 = r0;
            arg_1B0 = 0x93;
            arg_34 = r4;
            arg_38 = @selector(mas_makeConstraints:);
            loc_e09f98(r4, @selector(mas_makeConstraints:), &arg_D4);
            arg_1B0 = 0xffffffff;
            loc_e09f9c();
            loc_e09f94();
            loc_e09f94(arg_34);
            arg_1B0 = 0x94;
            loc_e09f98(UISwitch, arg_48);
            arg_1B0 = 0x95;
            r2 = loc_e09f98();
            arg_1B0 = 0x96;
            arg_34 = r2;
            loc_e09f98(arg_50, @selector(setDisableFrontierButton:), arg_34);
            loc_e09f94(arg_34);
            arg_1B0 = 0x97;
            arg_34 = @selector(disableFrontierButton);
            loc_e09f98(arg_50, @selector(disableFrontierButton));
            arg_1B0 = 0xffffffff;
            loc_e09f9c();
            arg_1B0 = 0x98;
            var_0 = 0x1000;
            asm{ strd       r1, r0, [sp, #0x20] };
            loc_e09f98();
            loc_e09f94(arg_24);
            arg_1B0 = 0x99;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0x9a;
            arg_24 = r0;
            arg_1C = @selector(setOn:);
            loc_e09f98();
            loc_e09f94(arg_24);
            arg_1B0 = 0x9b;
            loc_e09f98(arg_50, arg_44);
            arg_1B0 = 0xffffffff;
            arg_24 = loc_e09f9c();
            arg_1B0 = 0x9c;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0x9d;
            arg_18 = r0;
            loc_e09f98(arg_24, arg_3C, r0);
            loc_e09f94(arg_18);
            loc_e09f94(arg_24);
            arg_1B0 = 0x9e;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            r4 = loc_e09f9c();
            arg_BC = arg_4C;
            arg_C0 = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0xc4] };
            arg_CC = 0x20c5b48;
            r0 = loc_e09fa4(arg_50, 0x20c5b48, 0x0);
            arg_50 = r0;
            arg_D0 = r0;
            arg_1B0 = 0x9f;
            arg_34 = r4;
            loc_e09f98(r4, arg_38, &arg_BC);
            arg_1B0 = 0xffffffff;
            loc_e09f9c();
            loc_e09f94();
            loc_e09f94(arg_34);
            arg_1B0 = 0xa0;
            loc_e09f98(UISwitch, arg_48);
            arg_1B0 = 0xa1;
            r2 = loc_e09f98();
            arg_1B0 = 0xa2;
            arg_34 = r2;
            loc_e09f98(arg_50, @selector(setDisableCommentButton:), arg_34);
            loc_e09f94(arg_34);
            arg_1B0 = 0xa3;
            arg_34 = @selector(disableCommentButton);
            loc_e09f98(arg_50, @selector(disableCommentButton));
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xa4;
            var_0 = 0x1000;
            arg_24 = r0;
            loc_e09f98();
            loc_e09f94(arg_24);
            arg_1B0 = 0xa5;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xa6;
            arg_24 = r0;
            loc_e09f98();
            loc_e09f94(arg_24);
            arg_1B0 = 0xa7;
            loc_e09f98(arg_50, arg_44);
            arg_1B0 = 0xffffffff;
            arg_24 = loc_e09f9c();
            arg_1B0 = 0xa8;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xa9;
            arg_20 = r0;
            loc_e09f98(arg_24, arg_3C, r0);
            loc_e09f94(arg_20);
            loc_e09f94(arg_24);
            arg_1B0 = 0xaa;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            r4 = loc_e09f9c();
            arg_A4 = arg_4C;
            arg_A8 = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0xac] };
            arg_B4 = 0x20c5b60;
            r0 = loc_e09fa4(arg_50, 0x20c5b60, 0x0);
            arg_50 = r0;
            arg_B8 = r0;
            arg_1B0 = 0xab;
            arg_34 = r4;
            loc_e09f98(r4, arg_38, &arg_A4);
            arg_1B0 = 0xffffffff;
            loc_e09f9c();
            loc_e09f94();
            loc_e09f94(arg_34);
            arg_1B0 = 0xac;
            loc_e09f98(UILabel, arg_48);
            arg_1B0 = 0xad;
            r2 = loc_e09f98();
            arg_1B0 = 0xae;
            arg_34 = r2;
            loc_e09f98(arg_50, @selector(setHeartbeatLabel:), arg_34);
            loc_e09f94(arg_34);
            arg_1B0 = 0xaf;
            arg_34 = @selector(heartbeatLabel);
            loc_e09f98(arg_50, @selector(heartbeatLabel));
            arg_1B0 = 0xffffffff;
            arg_24 = loc_e09f9c();
            arg_1B0 = 0xb0;
            arg_1C = @selector(whiteColor);
            loc_e09f98(UIColor, @selector(whiteColor), 0xb0);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xb1;
            arg_20 = r0;
            loc_e09f98();
            arg_1B0 = 0xffffffff;
            r2 = loc_e09f9c();
            arg_1B0 = 0xb2;
            asm{ strd       r2, r1, [sp, #0x14] };
            loc_e09f98(arg_24, @selector(setTextColor:), r2);
            loc_e09f94(arg_14);
            loc_e09f94(arg_20);
            loc_e09f94(arg_24);
            arg_1B0 = 0xb3;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            arg_24 = loc_e09f9c();
            arg_1B0 = 0xb4;
            arg_14 = @selector(systemFontOfSize:);
            loc_e09f98(UIFont, @selector(systemFontOfSize:), 0x40c00000);
            arg_1B0 = 0xffffffff;
            r2 = loc_e09f9c();
            arg_1B0 = 0xb5;
            arg_10 = @selector(setFont:);
            arg_20 = r2;
            loc_e09f98(arg_24, @selector(setFont:), r2);
            loc_e09f94(arg_20);
            loc_e09f94(arg_24);
            arg_1B0 = 0xb6;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            loc_e09f9c();
            arg_1B0 = 0xb7;
            asm{ strd       r1, r0, [sp, #0x20] };
            loc_e09f98();
            loc_e09f94(arg_24);
            arg_1B0 = 0xb8;
            loc_e09f98(arg_50, arg_44);
            arg_1B0 = 0xffffffff;
            arg_24 = loc_e09f9c();
            arg_1B0 = 0xb9;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xba;
            arg_C = r0;
            loc_e09f98(arg_24, arg_3C, r0);
            loc_e09f94(arg_C);
            loc_e09f94(arg_24);
            arg_1B0 = 0xbb;
            loc_e09f98(arg_50, arg_34);
            arg_1B0 = 0xffffffff;
            r4 = loc_e09f9c();
            arg_8C = arg_4C;
            arg_90 = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0x94] };
            arg_9C = 0x20c5b78;
            r0 = loc_e09fa4(arg_50, 0x20c5b78, 0x0);
            arg_50 = r0;
            arg_A0 = r0;
            arg_1B0 = 0xbc;
            arg_34 = r4;
            loc_e09f98(r4, arg_38, &arg_8C);
            arg_1B0 = 0xffffffff;
            loc_e09f9c();
            loc_e09f94();
            loc_e09f94(arg_34);
            arg_1B0 = 0xbd;
            loc_e09f98(UILabel, arg_48);
            arg_1B0 = 0xbe;
            r2 = loc_e09f98();
            arg_1B0 = 0xbf;
            arg_48 = r2;
            loc_e09f98(arg_50, @selector(setUserAuthLabel:), arg_48);
            loc_e09f94(arg_48);
            arg_1B0 = 0xc0;
            arg_48 = @selector(userAuthLabel);
            loc_e09f98(arg_50, @selector(userAuthLabel));
            arg_1B0 = 0xffffffff;
            arg_40 = loc_e09f9c();
            arg_1B0 = 0xc1;
            loc_e09f98(UIColor, arg_1C);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xc2;
            arg_34 = r0;
            loc_e09f98();
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xc3;
            arg_28 = r0;
            loc_e09f98(arg_40, arg_18, r0);
            loc_e09f94(arg_28);
            loc_e09f94(arg_34);
            loc_e09f94(arg_40);
            arg_1B0 = 0xc4;
            loc_e09f98(arg_50, arg_48);
            arg_1B0 = 0xffffffff;
            arg_40 = loc_e09f9c();
            arg_1B0 = 0xc5;
            loc_e09f98(UIFont, arg_14, 0x41200000);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xc6;
            arg_34 = r0;
            loc_e09f98(arg_40, arg_10, r0);
            loc_e09f94(arg_34);
            loc_e09f94(arg_40);
            arg_1B0 = 0xc7;
            loc_e09f98(arg_50, arg_48);
            arg_1B0 = 0xffffffff;
            arg_40 = loc_e09f9c();
            arg_28 = NSString;
            arg_1B0 = 0xc8;
            asm{ ldrd       r0, r1, [sp, #0x50] };
            loc_e09f98(0xc8);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xc9;
            arg_34 = r0;
            loc_e09f98();
            arg_1B0 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_1B0 = 0xca;
            arg_24 = r0;
            r0 = loc_e09f98();
            arg_1B0 = 0xcb;
            asm{ it         eq };
            if (r0 == 0x0) {
            }
            loc_e09f98(arg_28);
            arg_1B0 = 0xffffffff;
            r2 = loc_e09f9c();
            arg_1B0 = 0xcc;
            arg_28 = r2;
            loc_e09f98(arg_40, @selector(setText:), r2);
            loc_e09f94(arg_28);
            loc_e09f94(arg_24);
            loc_e09f94(arg_34);
            loc_e09f94(arg_40);
            arg_1B0 = 0xcd;
            loc_e09f98(arg_50, arg_48);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xce;
            arg_40 = r0;
            loc_e09f98();
            loc_e09f94(arg_40);
            arg_1B0 = 0xcf;
            loc_e09f98(arg_50, arg_44);
            arg_1B0 = 0xffffffff;
            arg_44 = loc_e09f9c();
            arg_1B0 = 0xd0;
            loc_e09f98(arg_50, arg_48);
            arg_1B0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_1B0 = 0xd1;
            arg_40 = r0;
            loc_e09f98(arg_44, arg_3C, r0);
            loc_e09f94(arg_40);
            loc_e09f94(arg_44);
            arg_1B0 = 0xd2;
            loc_e09f98(arg_50, arg_48);
            arg_1B0 = 0xffffffff;
            r4 = loc_e09f9c();
            arg_74 = arg_4C;
            arg_78 = 0xc2000000;
            asm{ strdeq     r2, r0, [sp, #0x7c] };
            arg_84 = 0x20c5b90;
            r0 = loc_e09fa4(arg_50, 0x20c5b90, 0x0);
            arg_48 = r0;
            arg_88 = r0;
            arg_1B0 = 0xd3;
            arg_50 = r4;
            loc_e09f98(r4, arg_38, &arg_74);
            arg_1B0 = 0xffffffff;
            loc_e09f9c();
            loc_e09f94();
            loc_e09f94(arg_50);
            arg_1A8 = &arg_5C + 0x14;
            arg_1B0 = 0xd4;
            loc_e09f98(arg_48, arg_30);
            arg_1B0 = 0xffffffff;
            arg_50 = loc_e09f9c();
            arg_1B0 = 0xd5;
            loc_e09f98(arg_48, arg_54);
            arg_1B0 = 0xffffffff;
            arg_54 = loc_e09f9c();
            arg_1B0 = 0xd6;
            loc_e09f98(NSString, @selector(stringWithUTF8String:), "authInfo.answerStatus", 0xd6);
            arg_1B0 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_5C = arg_4C;
            arg_60 = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0x64] };
            arg_6C = 0x20c5ba8;
            loc_e09ff0(arg_1A8, &arg_194, 0x0);
            arg_1B0 = 0xd7;
            arg_4 = &arg_5C;
            var_0 = 0x1;
            asm{ ldrd       r0, r2, [sp, #0x50] };
            arg_4C = r4;
            loc_e09f98(0x1, arg_2C);
            loc_e09f94(arg_4C);
            loc_e09f94(arg_54);
            loc_e09f94(arg_50);
            sub_e09f90(arg_1A8);
            loc_e09f94(arg_88);
            loc_e09f94(arg_A0);
            loc_e09f94(arg_B8);
            loc_e09f94(arg_D0);
            loc_e09f94(arg_E8);
    }
    arg_1B0 = 0xd8;
    loc_e09f98(arg_58, @selector(preloadShareImage));
    sub_e09f90(arg_1A4);
    sub_e09f90(arg_1A0);
    sub_e09f90(&arg_194);
    r0 = loc_e09fec(&arg_1AC);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;

loc_aa358e:
    arg_1B0 = 0x6a;
    arg_14 = @selector(sharedService);
    loc_e09f98(TTFantasyService, @selector(sharedService), 0x6a);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x6b;
    arg_28 = r0;
    loc_e09f98();
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x6c;
    arg_18 = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_18);
    loc_e09f94(arg_28);
    loc_e09f94(arg_38);
    if ((arg_1C != arg_24) && ((arg_34 | r4) == 0x0)) goto loc_aa361a;
    goto loc_aa3722;

loc_aa361a:
    arg_1B0 = 0x6d;
    loc_e09f98(TTFantasyService, arg_14);
    arg_1B0 = 0xffffffff;
    arg_38 = loc_e09f9c();
    arg_1B0 = 0x6e;
    loc_e09f98(arg_58, @selector(loginTrackerDicWithSection:), @"login_enter_window");
    arg_1B0 = 0xffffffff;
    r3 = loc_e09f9c();
    arg_1B0 = 0x6f;
    var_0 = 0x0;
    arg_34 = r3;
    loc_e09f98(arg_38, @selector(loginFromViewController:trackerDic:completion:), arg_58, r3);
    loc_e09f94(arg_34);
    loc_e09f94(arg_38);
    arg_1B0 = 0x70;
    loc_e09f98(NSUserDefaults, arg_3C);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x71;
    arg_38 = r0;
    loc_e09f98();
    loc_e09f94(arg_38);
    arg_1B0 = 0x72;
    loc_e09f98(NSUserDefaults, arg_3C);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x73;
    arg_3C = r0;
    loc_e09f98();
    goto loc_aa371e;

loc_aa29be:
    arg_24 = 0x1;

loc_aa29c2:
    arg_1B0 = 0x3f;
    loc_e09f98(arg_58, arg_54);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x40;
    arg_1C = r0;
    loc_e09f98();
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x41;
    arg_18 = r0;
    if (loc_e09f98() == 0x2) {
            arg_1B0 = 0x42;
            r0 = loc_e09f98(arg_58, @selector(enterAgain));
            r4 = 0x0;
            asm{ it         eq };
            if (r0 == 0x0) {
                    r4 = 0x1;
            }
    }
    else {
            r4 = 0x0;
    }
    r11 = arg_58;
    loc_e09f94(arg_18);
    loc_e09f94(arg_1C);
    if (arg_24 != 0x1) goto loc_aa2a5e;
    goto loc_aa2a4e;

loc_aa2a5e:
    loc_e09f94(arg_3C);
    if (r4 != 0x1) goto loc_aa30d0;

loc_aa2a6a:
    arg_1B0 = 0x43;
    arg_3C = loc_e09f98(TTFLateView, arg_48);
    arg_1B0 = 0x44;
    loc_e09f98(arg_58, arg_50);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_28 = r0;
    if (r0 != 0x0) {
            arg_1B0 = 0x45;
            loc_e09fb0(&arg_120);
            asm{ ldmeq      r6, {r2, r3, r6} };
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    arg_1B0 = 0x46;
    asm{ strd       r6, r0, [sp] };
    arg_3C = loc_e09f98(arg_3C, @selector(initWithFrame:));
    loc_e09f94(arg_28);
    arg_1B0 = 0x47;
    loc_e09f98(arg_3C, @selector(setDelegate:), arg_58);
    r8 = arg_58;
    sub_e09ff4(&arg_14C, r8);
    r11 = sub_e0a03c(0x0, 0x0);
    r10 = &arg_104;
    arg_104 = arg_4C;
    asm{ strd       r2, r4, [sp, #0x108] };
    asm{ strd       r0, r1, [sp, #0x110] };
    loc_e09ff0(r10 + 0x18, &arg_14C, 0xc2000000);
    arg_118 = arg_3C;
    r5 = loc_e09fa4(arg_3C);
    r2 = *_dispatch_main_q;
    r0 = r11;
    r11 = r8;
    sub_e0a038(r0, 0x0, r2);
    loc_e09f94(arg_118);
    loc_e09f94(r5);
    sub_e09f90(r10 + 0x18);
    r0 = &arg_14C;

loc_aa30cc:
    sub_e09f90(r0);
    goto loc_aa30d0;

loc_aa2a4e:
    loc_e09f94(arg_28);
    loc_e09f94(arg_3C);
    if (r4 != 0x0) goto loc_aa2a6a;
    goto loc_aa30d0;

loc_aa298c:
    arg_24 = 0x0;
    arg_28 = 0x0;
    goto loc_aa29c2;

loc_aa288c:
    arg_1B0 = 0xb;
    loc_e09f98(arg_58, arg_50);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0xc;
    arg_1C = r0;
    arg_28 = @selector(height);
    arg_3C = loc_e09f98();
    arg_1B0 = 0xd;
    loc_e09f98(arg_58, arg_24);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0xe;
    arg_24 = r0;
    loc_e09f98();
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0xf;
    arg_18 = r0;
    arg_28 = loc_e09f98();
    loc_e09f94(arg_18);
    loc_e09f94(arg_24);
    loc_e09f94(arg_1C);
    arg_1B0 = 0x10;
    arg_1C = loc_e09f98(TTFCountdownView, arg_48);
    arg_1B0 = 0x11;
    loc_e09f98(arg_58, arg_50);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_24 = r0;
    if (r0 != 0x0) {
            arg_1B0 = 0x12;
            r0 = loc_e09fb0(&arg_150);
            asm{ ldm        r3, {r0, r1, r2, r3} };
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
            r0 = 0x0;
    }
    arg_1B0 = 0x13;
    r0 = sub_e0a1a0(r0);
    r0 << 0x10 | r0;
    arg_3C << 0x10 | arg_3C;
    arg_28 << 0x10 | arg_28;
    asm{ vsub.f32   d0, d16, d17 };
    arg_1B0 = 0x14;
    arg_4 = s0;
    var_0 = s2;
    r2 = loc_e09f98(arg_1C, @selector(initWithFrame:), 0x0, 0x0);
    arg_1B0 = 0x15;
    arg_3C = r2;
    loc_e09f98(arg_58, @selector(setCountdownView:), arg_3C);
    loc_e09f94(arg_3C);
    loc_e09f94(arg_24);
    arg_1B0 = 0x16;
    arg_3C = @selector(countdownView);
    loc_e09f98(arg_58, @selector(countdownView));
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x17;
    arg_28 = r0;
    loc_e09f98();
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x18;
    arg_24 = r0;
    var_0 = 0x40;
    loc_e09f98();
    loc_e09f94(arg_24);
    loc_e09f94(arg_28);
    arg_1B0 = 0x19;
    loc_e09f98(arg_58, arg_3C);
    arg_1B0 = 0xffffffff;
    arg_28 = loc_e09f9c();
    arg_1B0 = 0x1a;
    asm{ ldrd       r1, r0, [sp, #0x54] };
    loc_e09f98(0x1a);
    arg_1B0 = 0xffffffff;
    r2 = loc_e09f9c();
    arg_1B0 = 0x1b;
    arg_24 = r2;
    loc_e09f98(arg_28, @selector(beginCountdownWithViewModel:), r2);
    loc_e09f94(arg_24);
    loc_e09f94(arg_28);
    arg_1B0 = 0x1c;
    loc_e09f98(arg_58, @selector(containerView));
    arg_1B0 = 0xffffffff;
    arg_28 = loc_e09f9c();
    arg_1B0 = 0x1d;
    loc_e09f98(arg_58, arg_3C);
    arg_1B0 = 0xffffffff;
    arg_24 = loc_e09f9c();
    arg_1B0 = 0x1e;
    loc_e09f98(arg_58, @selector(closeButton));
    arg_1B0 = 0xffffffff;
    r3 = loc_e09f9c();
    arg_1B0 = 0x1f;
    asm{ ldrd       r2, r0, [sp, #0x24] };
    arg_1C = r3;
    loc_e09f98(0x1f, @selector(insertSubview:belowSubview:));
    loc_e09f94(arg_1C);
    loc_e09f94(arg_24);
    loc_e09f94(arg_28);
    arg_1B0 = 0x20;
    loc_e09f98(arg_58, arg_3C);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x21;
    arg_3C = r0;
    loc_e09f98();
    loc_e09f94(arg_3C);
    arg_1B0 = 0x22;
    arg_28 = @selector(standardUserDefaults);
    loc_e09f98(NSUserDefaults, @selector(standardUserDefaults), 0x22);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x23;
    arg_3C = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_3C);
    if (r4 == 0x0) goto loc_aa2e9c;
    goto loc_aa2d2e;

loc_aa2e9c:
    arg_1B0 = 0x24;
    loc_e09f98(arg_58, @selector(resurrectionView));
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x25;
    arg_3C = r0;
    loc_e09f98();
    loc_e09f94(arg_3C);
    arg_1B0 = 0x26;
    loc_e09f98(NSUserDefaults, arg_28);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x27;
    arg_3C = r0;
    loc_e09f98();
    loc_e09f94(arg_3C);
    arg_1B0 = 0x28;
    loc_e09f98(NSUserDefaults, arg_28);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x29;
    arg_3C = r0;
    loc_e09f98();

loc_aa2f5c:

loc_aa2f5e:
    loc_e09f94();

loc_aa2f62:
    r11 = arg_58;
    r8 = &arg_14C;
    sub_e09ff4(r8, r11);
    r5 = sub_e0a03c(0x0, 0x0);
    r10 = &arg_134;
    arg_134 = arg_4C;
    asm{ strd       r2, r4, [sp, #0x138] };
    asm{ strd       r0, r1, [sp, #0x140] };
    loc_e09ff0(r10 + 0x14, r8, 0xc2000000);
    sub_e0a038(r5, 0x0, *_dispatch_main_q);
    sub_e09f90(r10 + 0x14);
    r0 = r8;
    goto loc_aa30cc;

loc_aa2d2e:
    arg_1B0 = 0x2a;
    arg_24 = @selector(sharedService);
    loc_e09f98(TTFantasyService, @selector(sharedService), 0x2a);
    arg_1B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_1B0 = 0x2b;
    arg_3C = r0;
    loc_e09f98();
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x2c;
    arg_28 = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_28);
    loc_e09f94(arg_3C);
    if (r4 == 0x0) goto loc_aa2f62;
    arg_1B0 = 0x2d;
    loc_e09f98(TTFantasyService, arg_24);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x2e;
    arg_3C = r0;
    if (loc_e09f98() == 0x0) goto loc_aa2f5c;
    arg_1B0 = 0x2f;
    arg_1C = @selector(currentCalendar);
    loc_e09f98(NSCalendar, @selector(currentCalendar), 0x2f);
    arg_1B0 = 0xffffffff;
    arg_28 = loc_e09f9c();
    arg_24 = NSDate;
    arg_1B0 = 0x30;
    r2 = loc_e09f98(TTFShareViewModel, @selector(lastSharedTimeInterval), 0x30);
    arg_1B0 = 0x31;
    arg_18 = @selector(dateWithTimeIntervalSince1970:);
    loc_e09f98(arg_24, @selector(dateWithTimeIntervalSince1970:), r2, @selector(lastSharedTimeInterval));
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r2 = loc_e09f9c();
    arg_1B0 = 0x32;
    arg_14 = @selector(isDateInToday:);
    arg_24 = r2;
    if (loc_e09f98(arg_28, @selector(isDateInToday:), r2) == 0x0) goto loc_aa450c;
    goto loc_aa2e8e;

loc_aa450c:
    arg_1B0 = 0x33;
    loc_e09f98(NSCalendar, arg_1C);
    arg_1B0 = 0xffffffff;
    arg_1C = loc_e09f9c();
    arg_10 = NSDate;
    arg_1B0 = 0x34;
    r0 = loc_e09f98(TTFShareTaskTipView, @selector(showedTimeInterval), 0x34);
    arg_1B0 = 0x35;
    loc_e09f98(arg_10, arg_18, r0, @selector(showedTimeInterval));
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x36;
    arg_18 = r0;
    r4 = loc_e09f98(arg_1C, arg_14, r0);
    loc_e09f94(arg_18);
    loc_e09f94(arg_1C);
    loc_e09f94(arg_24);
    loc_e09f94(arg_28);
    loc_e09f94(arg_3C);
    if (r4 != 0x0) goto loc_aa2f62;
    arg_1B0 = 0x37;
    loc_e09f98(arg_58, @selector(showShareTaskTipView));
    arg_3C = TTFShareTaskTipView;
    arg_1B0 = 0x38;
    loc_e09f98(NSDate, @selector(date), 0x38);
    arg_1B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_1B0 = 0x39;
    arg_28 = r0;
    r2 = loc_e09f98();
    arg_1B0 = 0x3a;
    loc_e09f98(arg_3C, @selector(setShowedTimeInterval:), r2, @selector(timeIntervalSince1970));
    goto loc_aa2f5e;

loc_aa2e8e:
    loc_e09f94(arg_24);
    loc_e09f94(arg_28);
    goto loc_aa2f5c;
}

- (void)viewWillAppear:(id)arg2 
{
    var_0 = self;
    arg_4 = *0x2352ee4;
    loc_e09fa0(sp - 0x8, @selector(viewWillAppear:), arg2);
    loc_e09f98(self, @selector(navigationController));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setNavigationBarHidden:), 0x1);
    r0 = loc_e09f94(r4);
    return;
}

- (void)viewDidAppear:(id)arg2 
{
    r7 = &arg_C;
    sp = sp + 0xfffffffffffffffc - 0x8;
    r4 = self;
    var_0 = r4;
    arg_4 = *0x2352ee4;
    loc_e09fa0(sp, @selector(viewDidAppear:), arg2);
    r8 = @selector(fireworkAnimationView);
    loc_e09f98(r4, r8);
    r7 = r7;
    r6 = loc_e09f9c();
    r5 = loc_e09f98(r6, @selector(isAnimationPlaying));
    r0 = loc_e09f94(r6);
    if (r5 == 0x0) {
            loc_e09f98(r4, r8);
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(play));
            r0 = loc_e09f94(r4);
    }
    return;
}

- (void)viewWillDisappear:(id)arg2 
{
    r7 = &arg_C;
    sp = sp + 0xfffffffffffffffc - 0x8;
    r4 = self;
    var_0 = r4;
    arg_4 = *0x2352ee4;
    loc_e09fa0(sp, @selector(viewWillDisappear:), arg2);
    r8 = @selector(fireworkAnimationView);
    loc_e09f98(r4, r8);
    r7 = r7;
    r6 = loc_e09f9c();
    r5 = loc_e09f98(r6, @selector(isAnimationPlaying));
    r0 = loc_e09f94(r6);
    if (r5 != 0x0) {
            loc_e09f98(r4, r8);
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(pause));
            r0 = loc_e09f94(r4);
    }
    return;
}

- (void)uiComponentsInit
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x290 - sp - 0x40;
    arg_8C = self;
    arg_9C = @selector(alloc);
    loc_e09f98(TTFPlayer, @selector(alloc), objc_cls_ref_TTFPlayer);
    r4 = loc_e09f98();
    loc_e09f98(self, @selector(setPlayer:), r4);
    loc_e09f94(r4);
    arg_A0 = @selector(player);
    loc_e09f98(self, @selector(player));
    r10 = loc_e09f9c();
    arg_98 = @selector(playerView);
    loc_e09f98(r10, @selector(playerView));
    r6 = loc_e09f9c();
    arg_94 = @selector(view);
    loc_e09f98(self, @selector(view));
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = @selector(bounds);
    arg_274 = *__objc_personality_v0;
    arg_278 = 0x1f21a54;
    r0 = *0xaa67d0;
    arg_27C = r7;
    arg_284 = sp;
    arg_280 = (r0 | 0x1) + 0xaa5cda;
    sub_e09ff8();
    arg_88 = r5;
    if (r4 != 0x0) {
            arg_260 = 0xffffffff;
            loc_e09fb0(&arg_248, r4, r5);
            asm{ ldm        r5, {r2, r3, r5} };
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    arg_260 = 0xffffffff;
    asm{ strd       r5, r0, [sp] };
    loc_e09f98(r6, @selector(setFrame:));
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f94(r10);
    arg_260 = 0xffffffff;
    r8 = arg_8C;
    loc_e09f98(r8, arg_A0);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(setDelegate:), r8);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_94);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_A0);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_A0 = @selector(addSubview:);
    loc_e09f98(r4, @selector(addSubview:), r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(TTVideoEngine, arg_9C);
    arg_260 = 0xffffffff;
    r4 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(r8, @selector(setVideoEngine:), r4);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, @selector(videoEngine));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    arg_60 = @selector(setDelegate:);
    loc_e09f98();
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, @selector(videoEngine));
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(setScaleMode:), 0x2);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    arg_90 = @selector(videoEngine);
    loc_e09f98(r8, @selector(videoEngine));
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(setLooping:), 0x1);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    r5 = @selector(viewModel);
    loc_e09f98(r8, r5);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_84 = r0;
    r4 = @selector(warmupVideoAddr);
    loc_e09f98();
    arg_260 = 0xffffffff;
    r10 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(mainURL));
    arg_260 = 0xffffffff;
    r7 = r7;
    r6 = loc_e09f9c();
    arg_6C = r5;
    if (r6 != 0x0) {
            r11 = loc_e09fa4(r6);
    }
    else {
            arg_260 = 0xffffffff;
            loc_e09f98(r8, r5);
            arg_260 = 0xffffffff;
            r0 = loc_e09f9c();
            r5 = r0;
            arg_260 = 0xffffffff;
            loc_e09f98();
            arg_260 = 0xffffffff;
            r4 = loc_e09f9c();
            arg_260 = 0xffffffff;
            loc_e09f98(r4, @selector(backupURL1));
            arg_260 = 0xffffffff;
            r7 = r7;
            r11 = loc_e09f9c();
            loc_e09f94(r4);
            loc_e09f94(r5);
    }
    loc_e09f94(r6);
    loc_e09f94(r10);
    loc_e09f94(arg_84);
    arg_260 = 0xffffffff;
    r2 = loc_e09f98(NSString, @selector(class), objc_cls_ref_NSString);
    arg_260 = 0xffffffff;
    r0 = loc_e09f98(r11, @selector(isKindOfClass:), r2);
    arg_44 = r11;
    if (r0 != 0x0) {
            arg_260 = 0xffffffff;
            if (loc_e09f98(r11, @selector(length)) != 0x0) {
                    arg_260 = 0xffffffff;
                    loc_e09f98(arg_8C, arg_6C);
                    arg_260 = 0xffffffff;
                    r7 = r7;
                    r4 = loc_e09f9c();
                    arg_260 = 0xffffffff;
                    r5 = loc_e09f98(r4, @selector(activityStatus));
                    loc_e09f94(r4);
                    if (r5 <= 0x1) {
                            arg_260 = 0xffffffff;
                            loc_e09f98(UIView, arg_9C);
                            arg_260 = 0xffffffff;
                            r4 = loc_e09f98();
                            arg_260 = 0xffffffff;
                            loc_e09f98(arg_8C, @selector(setVideoEngineMaskView:), r4);
                            loc_e09f94(r4);
                            arg_260 = 0xffffffff;
                            arg_84 = @selector(videoEngineMaskView);
                            loc_e09f98(arg_8C, @selector(videoEngineMaskView));
                            arg_260 = 0xffffffff;
                            r5 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            arg_4 = 0x3f4ccccd;
                            var_0 = 0x3e868687;
                            loc_e09f98(UIColor, @selector(colorWithRed:green:blue:alpha:), 0x3df0f0f1, 0x3da0a0a1);
                            arg_260 = 0xffffffff;
                            r6 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            loc_e09f98(r5, @selector(setBackgroundColor:), r6);
                            loc_e09f94(r6);
                            loc_e09f94(r5);
                            arg_260 = 0xffffffff;
                            loc_e09f98(arg_8C, arg_90);
                            arg_260 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            r5 = r0;
                            loc_e09f98();
                            arg_260 = 0xffffffff;
                            r6 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            loc_e09f98(arg_8C, @selector(videoEngineMaskView));
                            arg_260 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            r4 = r0;
                            loc_e09f98(r6, arg_A0, r4);
                            loc_e09f94(r4);
                            loc_e09f94(r6);
                            loc_e09f94(r5);
                            arg_260 = 0xffffffff;
                            loc_e09f98(arg_8C, arg_84);
                            arg_260 = 0xffffffff;
                            r5 = loc_e09f9c();
                            r0 = *_NSConcreteStackBlock;
                            arg_230 = r0;
                            arg_234 = 0xc2000000;
                            asm{ stm        r3!, {r0, r1, r2} };
                            r4 = loc_e09fa4(arg_8C, 0xaa8823, 0x20c5bc0, &arg_238);
                            arg_244 = r4;
                            arg_260 = 0xffffffff;
                            loc_e09f98(r5, @selector(mas_makeConstraints:), &arg_230);
                            arg_260 = 0xffffffff;
                            loc_e09f9c();
                            loc_e09f94();
                            loc_e09f94(r5);
                            arg_260 = 0xffffffff;
                            r8 = arg_90;
                            loc_e09f98(r4, r8);
                            arg_260 = 0xffffffff;
                            r7 = r7;
                            r5 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            loc_e09f98(r5, @selector(setDirectPlayURL:), r11);
                            loc_e09f94(r5);
                            COND = r2 <= 0x0;
                            arg_260 = 0xffffffff;
                            loc_e09f98(r4, @selector(setIsPlayRemoteVideo:), r2);
                            arg_260 = 0xffffffff;
                            loc_e09f98(r4, @selector(setWarmupVideoUrl:), r11);
                            arg_260 = 0xffffffff;
                            arg_84 = loc_e09f98(TTFQuizShowLiveRoomWarmupVideoHelper, @selector(progressTimeIntervalForVideoUrl:), r11);
                            r2 = r11;
                            r11 = @selector(progressTimeIntervalForVideoUrl:);
                            arg_260 = 0xffffffff;
                            @selector(progressTimeIntervalForVideoUrl:) << 0x10 | loc_e09f98(TTFQuizShowLiveRoomWarmupVideoHelper, @selector(progressTimeIntervalForVideoUrl:), r2);
                            asm{ vcmpe.f64  d16, #0x0 };
                            asm{ vmrs       APSR_nzcv, fpscr };
                            if (!COND) {
                                    arg_260 = 0xffffffff;
                                    loc_e09f98(r4, r8);
                                    arg_260 = 0xffffffff;
                                    r7 = r7;
                                    r5 = loc_e09f9c();
                                    arg_260 = 0xffffffff;
                                    loc_e09f98(r5, @selector(setStartTime:), arg_84, r11);
                                    loc_e09f94(r5);
                            }
                            arg_260 = 0xffffffff;
                            loc_e09f98(r4, r8);
                            arg_260 = 0xffffffff;
                            r7 = r7;
                            r4 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            loc_e09f98(r4, @selector(play));
                            loc_e09f94(r4);
                            loc_e09f94(arg_244);
                            r11 = arg_8C;
                    }
                    else {
                            r4 = @selector(mainLoader);
                            arg_260 = 0xffffffff;
                            loc_e09f98(TTFResourceLoader, r4);
                            arg_260 = 0xffffffff;
                            r5 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            loc_e09f98(r5, @selector(videoWithName:), @"background.mp4");
                            arg_260 = 0xffffffff;
                            r7 = r7;
                            r6 = loc_e09f9c();
                            loc_e09f94(r5);
                            if (r6 != 0x0) {
                                    arg_260 = 0xffffffff;
                                    r11 = arg_8C;
                                    r8 = arg_90;
                                    loc_e09f98(r11, r8);
                                    arg_260 = 0xffffffff;
                                    r4 = loc_e09f9c();
                                    arg_260 = 0xffffffff;
                                    loc_e09f98(r6, @selector(absoluteString));
                                    arg_260 = 0xffffffff;
                                    r7 = r7;
                                    r5 = loc_e09f9c();
                                    arg_260 = 0xffffffff;
                                    loc_e09f98(r4, @selector(setLocalURL:), r5);
                                    loc_e09f94(r5);
                                    loc_e09f94(r4);
                            }
                            else {
                                    r8 = objc_cls_ref_TTFResourceLoader;
                                    arg_84 = r6;
                                    sub_e09ff4(&arg_22C, arg_8C);
                                    r0 = *r8;
                                    arg_260 = 0x1;
                                    loc_e09f98(r0, r4);
                                    arg_258 = &arg_214 + 0x14;
                                    r5 = loc_e09fa4();
                                    r0 = *_NSConcreteStackBlock;
                                    arg_214 = r0;
                                    arg_218 = 0xc2000000;
                                    asm{ stm        r3!, {r0, r1, r2} };
                                    loc_e09ff0(arg_258, &arg_22C, 0x20c5bd8, &arg_21C);
                                    arg_260 = 0x2;
                                    arg_80 = r5;
                                    loc_e09f98(r5, @selector(loadVideoWithName:completion:), @"background.mp4", &arg_214);
                                    loc_e09f94(arg_80);
                                    sub_e09f90(arg_258);
                                    sub_e09f90(&arg_22C);
                                    asm{ ldrd       r11, r8, [sp, #0x8c] };
                                    r6 = arg_84;
                            }
                            arg_260 = 0xffffffff;
                            loc_e09f98(r11, r8);
                            arg_260 = 0xffffffff;
                            r7 = r7;
                            r4 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            loc_e09f98(r4, @selector(play));
                            loc_e09f94(r4);
                            loc_e09f94(r6);
                    }
            }
            else {
                    r4 = @selector(mainLoader);
                    arg_260 = 0xffffffff;
                    loc_e09f98(TTFResourceLoader, r4);
                    arg_260 = 0xffffffff;
                    r5 = loc_e09f9c();
                    arg_260 = 0xffffffff;
                    loc_e09f98(r5, @selector(videoWithName:), @"background.mp4");
                    arg_260 = 0xffffffff;
                    r7 = r7;
                    r6 = loc_e09f9c();
                    loc_e09f94(r5);
                    if (r6 != 0x0) {
                            arg_260 = 0xffffffff;
                            r11 = arg_8C;
                            r8 = arg_90;
                            loc_e09f98(r11, r8);
                            arg_260 = 0xffffffff;
                            r4 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            loc_e09f98(r6, @selector(absoluteString));
                            arg_260 = 0xffffffff;
                            r7 = r7;
                            r5 = loc_e09f9c();
                            arg_260 = 0xffffffff;
                            loc_e09f98(r4, @selector(setLocalURL:), r5);
                            loc_e09f94(r5);
                            loc_e09f94(r4);
                    }
                    else {
                            r8 = objc_cls_ref_TTFResourceLoader;
                            arg_84 = r6;
                            sub_e09ff4(&arg_22C, arg_8C);
                            r0 = *r8;
                            arg_260 = 0x1;
                            loc_e09f98(r0, r4);
                            arg_258 = &arg_214 + 0x14;
                            r5 = loc_e09fa4();
                            r0 = *_NSConcreteStackBlock;
                            arg_214 = r0;
                            arg_218 = 0xc2000000;
                            asm{ stm        r3!, {r0, r1, r2} };
                            loc_e09ff0(arg_258, &arg_22C, 0x20c5bd8, &arg_21C);
                            arg_260 = 0x2;
                            arg_80 = r5;
                            loc_e09f98(r5, @selector(loadVideoWithName:completion:), @"background.mp4", &arg_214);
                            loc_e09f94(arg_80);
                            sub_e09f90(arg_258);
                            sub_e09f90(&arg_22C);
                            asm{ ldrd       r11, r8, [sp, #0x8c] };
                            r6 = arg_84;
                    }
                    arg_260 = 0xffffffff;
                    loc_e09f98(r11, r8);
                    arg_260 = 0xffffffff;
                    r7 = r7;
                    r4 = loc_e09f9c();
                    arg_260 = 0xffffffff;
                    loc_e09f98(r4, @selector(play));
                    loc_e09f94(r4);
                    loc_e09f94(r6);
            }
    }
    else {
            r4 = @selector(mainLoader);
            arg_260 = 0xffffffff;
            loc_e09f98(TTFResourceLoader, r4);
            arg_260 = 0xffffffff;
            r5 = loc_e09f9c();
            arg_260 = 0xffffffff;
            loc_e09f98(r5, @selector(videoWithName:), @"background.mp4");
            arg_260 = 0xffffffff;
            r7 = r7;
            r6 = loc_e09f9c();
            loc_e09f94(r5);
            if (r6 != 0x0) {
                    arg_260 = 0xffffffff;
                    r11 = arg_8C;
                    r8 = arg_90;
                    loc_e09f98(r11, r8);
                    arg_260 = 0xffffffff;
                    r4 = loc_e09f9c();
                    arg_260 = 0xffffffff;
                    loc_e09f98(r6, @selector(absoluteString));
                    arg_260 = 0xffffffff;
                    r7 = r7;
                    r5 = loc_e09f9c();
                    arg_260 = 0xffffffff;
                    loc_e09f98(r4, @selector(setLocalURL:), r5);
                    loc_e09f94(r5);
                    loc_e09f94(r4);
            }
            else {
                    r8 = objc_cls_ref_TTFResourceLoader;
                    arg_84 = r6;
                    sub_e09ff4(&arg_22C, arg_8C);
                    r0 = *r8;
                    arg_260 = 0x1;
                    loc_e09f98(r0, r4);
                    arg_258 = &arg_214 + 0x14;
                    r5 = loc_e09fa4();
                    r0 = *_NSConcreteStackBlock;
                    arg_214 = r0;
                    arg_218 = 0xc2000000;
                    asm{ stm        r3!, {r0, r1, r2} };
                    loc_e09ff0(arg_258, &arg_22C, 0x20c5bd8, &arg_21C);
                    arg_260 = 0x2;
                    arg_80 = r5;
                    loc_e09f98(r5, @selector(loadVideoWithName:completion:), @"background.mp4", &arg_214);
                    loc_e09f94(arg_80);
                    sub_e09f90(arg_258);
                    sub_e09f90(&arg_22C);
                    asm{ ldrd       r11, r8, [sp, #0x8c] };
                    r6 = arg_84;
            }
            arg_260 = 0xffffffff;
            loc_e09f98(r11, r8);
            arg_260 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_260 = 0xffffffff;
            loc_e09f98(r4, @selector(play));
            loc_e09f94(r4);
            loc_e09f94(r6);
    }
    arg_260 = 0xffffffff;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_68 = @selector(setHidden:);
    loc_e09f98(r5, @selector(setHidden:), 0x0);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_94);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    r5 = r0;
    arg_260 = 0xffffffff;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98(r4, arg_A0, r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(UIActivityIndicatorView, arg_9C);
    arg_260 = 0xffffffff;
    r4 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(r11, @selector(setPlayerIndicatorView:), r4);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    arg_84 = @selector(playerIndicatorView);
    loc_e09f98(r11, @selector(playerIndicatorView));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    r1 = r11;
    r11 = r0;
    arg_260 = 0xffffffff;
    loc_e09f98(r1, arg_94);
    arg_260 = 0xffffffff;
    r7 = r7;
    r8 = loc_e09f9c();
    if (r8 != 0x0) {
            arg_260 = 0xffffffff;
            r6 = arg_88;
            loc_e09fb0(&arg_200, r8, r6);
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            r6 = arg_88;
            asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    asm{ vmov.f32   d16, #0x5 } << 0x10 | 0x5;
    arg_260 = 0xffffffff;
    asm{ vmul.f32   d8, d0, d16 };
    loc_e09f98(arg_8C, arg_94);
    arg_260 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    if (r4 != 0x0) {
            arg_260 = 0xffffffff;
            loc_e09fb0(&arg_1F0, r4, r6);
    }
    else {
            asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    asm{ vmov.f32   d16, #0x5 } << 0x10 | 0x5;
    asm{ vmov       r2, s16 };
    asm{ vmul.f32   d0, d0, d16 };
    arg_260 = 0xffffffff;
    asm{ vmov       r3, s0 };
    loc_e09f98(r11, @selector(setCenter:));
    loc_e09f94(r4);
    loc_e09f94(r8);
    loc_e09f94(r11);
    arg_260 = 0xffffffff;
    r11 = arg_8C;
    loc_e09f98(r11, arg_84);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_90);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_84);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98(r5, arg_A0, r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    r0 = loc_e09f98(UIView, arg_9C);
    arg_260 = 0xffffffff;
    r8 = r0;
    loc_e09f98(r11, arg_94);
    arg_260 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    if (r4 != 0x0) {
            arg_260 = 0xffffffff;
            loc_e09fb0(&arg_1E0, r4, arg_88);
            asm{ ldm        r5, {r2, r3, r5} };
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    arg_260 = 0xffffffff;
    asm{ strd       r5, r0, [sp] };
    arg_7C = @selector(initWithFrame:);
    r5 = loc_e09f98(r8, @selector(initWithFrame:));
    arg_260 = 0xffffffff;
    loc_e09f98(r11, @selector(setContainerView:), r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_94);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_90 = @selector(containerView);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, @selector(containerView));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r4, arg_A0, r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_94);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_84 = @selector(talkboardViewController);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, @selector(talkboardViewController));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    r5 = r0;
    arg_260 = 0xffffffff;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, arg_A0, r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_84);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(didMoveToParentViewController:), r11);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_84);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_94);
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_40 = @selector(height);
    r0 = loc_e09f98(r6, @selector(height));
    r0 << 0x10 | r0;
    arg_78 = @selector(setHeight:);
    arg_260 = 0xffffffff;
    asm{ vmul.f32   d0, d16, d0 };
    asm{ vmov       r2, s0 };
    loc_e09f98(r5, @selector(setHeight:));
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_84);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    r4 = r0;
    arg_260 = 0xffffffff;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_94);
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_3C = @selector(bottom);
    r2 = loc_e09f98(r6, @selector(bottom));
    arg_260 = 0xffffffff;
    arg_38 = @selector(setBottom:);
    loc_e09f98(r5, @selector(setBottom:), r2);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(UIButton, arg_9C);
    arg_260 = 0xffffffff;
    arg_80 = @selector(init);
    r4 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(r11, @selector(setCloseButton:), r4);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    arg_70 = @selector(closeButton);
    loc_e09f98(r11, @selector(closeButton));
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(setAdjustsImageWhenHighlighted:), 0x0);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, @selector(closeButton));
    arg_260 = 0xffffffff;
    arg_98 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_74 = @selector(sharedService);
    loc_e09f98(TTFantasyService, @selector(sharedService));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_64 = @selector(resourceBundle);
    loc_e09f98(r5, @selector(resourceBundle));
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    var_0 = 0x0;
    arg_58 = @selector(imageNamed:inBundle:compatibleWithTraitCollection:);
    loc_e09f98(UIImage, @selector(imageNamed:inBundle:compatibleWithTraitCollection:), @"arrowReturn", r4);
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(arg_98, @selector(setImage:forState:), r6, 0x0);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(arg_98);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_70);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_5C = @selector(addTarget:action:forControlEvents:);
    var_0 = 0x40;
    loc_e09f98(r4, @selector(addTarget:action:forControlEvents:), r11, @selector(closeLiveRoom));
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_90);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_70);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r4, arg_A0, r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_70);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_30 = @selector(setWidth:);
    loc_e09f98(r4, @selector(setWidth:), 0x42300000);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_70);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_70);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_4C = @selector(setLeft:);
    loc_e09f98(r4, @selector(setLeft:), 0x40a00000);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_70);
    arg_260 = 0xffffffff;
    r11 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_98 = @selector(mainScreen);
    loc_e09f98(UIScreen, @selector(mainScreen));
    arg_260 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 != 0x0) {
            arg_260 = 0xffffffff;
            loc_e09fb0(&arg_1D0, r5, arg_88);
    }
    else {
            asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    asm{ vadd.f32   d16, d0, d8 };
    asm{ vmov.i32   d0, #0x800000 } << 0x10 | 0x800000;
    asm{ vabs.f32   d1, d16 };
    asm{ vcmpe.f32  s2, s0 };
    asm{ vmrs       APSR_nzcv, fpscr };
    if (CPU_FLAGS & GE) {
            arg_260 = 0xffffffff;
            arg_50 = @selector(setTop:);
            loc_e09f98(r11, @selector(setTop:), 0x0);
    }
    else {
            arg_260 = 0xffffffff;
            loc_e09f98(UIScreen, arg_98);
            arg_260 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            if (r4 != 0x0) {
                    arg_260 = 0xffffffff;
                    loc_e09fb0(&arg_1C0, r4, arg_88);
            }
            else {
                    asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            asm{ vadd.f32   d16, d0, d1 };
            asm{ vmov.i32   d0, #0x800000 } << 0x10 | 0x800000;
            arg_260 = 0xffffffff;
            r1 = @selector(setTop:);
            r0 = 0xaa7078;
            asm{ vabs.f32   d1, d16 };
            asm{ vcmpe.f32  s2, s0 };
            asm{ vmrs       APSR_nzcv, fpscr };
            asm{ it         ls };
            if (CPU_FLAGS & A) {
                    r0 = 0xaa7078 + 0x4;
            }
            arg_50 = r1;
            loc_e09f98(r11);
            loc_e09f94(r4);
    }
    loc_e09f94(r5);
    loc_e09f94(r11);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, arg_70);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_4 = 0xc1200000;
    var_0 = 0xc1a00000;
    arg_54 = @selector(setTtf_hitTestEdgeInsets:);
    loc_e09f98(r4, @selector(setTtf_hitTestEdgeInsets:), 0xc1200000, 0xc1200000);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(TTFResurrectionTipView, arg_9C);
    arg_260 = 0xffffffff;
    asm{ strdls     r5, r1, [sp] };
    r4 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, @selector(setResurrectionView:), r4);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, @selector(resurrectionView));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, arg_90);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, @selector(resurrectionView));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r4, arg_A0, r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, @selector(resurrectionView));
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, arg_70);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r0 = loc_e09f98(r5, @selector(right));
    asm{ vmov.f32   d16, #0x6 } << 0x10 | 0x6;
    arg_260 = 0xffffffff;
    r0 << 0x10 | r0;
    asm{ vadd.f32   d0, d17, d16 };
    asm{ vmov       r2, s0 };
    loc_e09f98(r4, arg_4C);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    arg_34 = @selector(resurrectionView);
    loc_e09f98(arg_8C, @selector(resurrectionView));
    arg_260 = 0xffffffff;
    r8 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(UIScreen, arg_98);
    arg_260 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 != 0x0) {
            arg_260 = 0xffffffff;
            loc_e09fb0(&arg_1B0, r5, arg_88);
    }
    else {
            asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    asm{ vadd.f32   d16, d0, d8 };
    asm{ vmov.i32   d0, #0x800000 } << 0x10 | 0x800000;
    asm{ vabs.f32   d1, d16 };
    asm{ vcmpe.f32  s2, s0 };
    asm{ vmrs       APSR_nzcv, fpscr };
    if (CPU_FLAGS & GE) {
            arg_260 = 0xffffffff;
            loc_e09f98(r8, arg_50, 0x41400000);
    }
    else {
            arg_260 = 0xffffffff;
            loc_e09f98(UIScreen, arg_98);
            arg_260 = 0xffffffff;
            r7 = r7;
            r6 = loc_e09f9c();
            if (r6 != 0x0) {
                    arg_260 = 0xffffffff;
                    loc_e09fb0(&arg_1A0, r6, arg_88);
            }
            else {
                    asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            asm{ vmov.i32   d1, #0x800000 } << 0x10 | 0x800000;
            asm{ vmov.f32   d3, #0x1 } << 0x10 | 0x1;
            asm{ vadd.f32   d16, d0, d2 };
            asm{ vabs.f32   d2, d16 };
            asm{ vcmpe.f32  s4, s2 };
            asm{ vmrs       APSR_nzcv, fpscr };
            asm{ it         ls };
            asm{ vmovls.f32 s6, s0 };
            arg_260 = 0xffffffff;
            asm{ vmov       r2, s6 };
            loc_e09f98(r8, arg_50);
            loc_e09f94(r6);
    }
    loc_e09f94(r5);
    loc_e09f94(r8);
    arg_260 = 0xffffffff;
    loc_e09f98(UIView, arg_9C);
    arg_260 = 0xffffffff;
    arg_48 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(TTFantasyService, arg_74);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_50 = r6;
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(UIImageView, arg_9C);
    arg_260 = 0xffffffff;
    asm{ strd       r1, r1, [sp] };
    r5 = loc_e09f98();
    arg_20 = @selector(setUserInteractionEnabled:);
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(setUserInteractionEnabled:), 0x1);
    arg_1C = @selector(setTag:);
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(setTag:), 0x0);
    arg_260 = 0xffffffff;
    var_0 = 0x0;
    loc_e09f98(UIImage, arg_58, @"shareMoments", r6);
    arg_260 = 0xffffffff;
    r2 = loc_e09f9c();
    arg_4C = r2;
    arg_24 = @selector(setImage:);
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(setImage:), r2);
    arg_260 = 0xffffffff;
    arg_4 = 0xc1200000;
    var_0 = 0xc1700000;
    arg_2C = r5;
    loc_e09f98(r5, arg_54, 0xc1700000, 0xc1200000);
    arg_260 = 0xffffffff;
    loc_e09f98(UITapGestureRecognizer, arg_9C);
    arg_60 = @selector(initWithTarget:action:);
    arg_18 = @selector(shareAction:);
    arg_260 = 0xffffffff;
    r2 = loc_e09f98();
    arg_28 = r2;
    arg_14 = @selector(addGestureRecognizer:);
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(addGestureRecognizer:), r2);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_48, arg_A0, r5);
    arg_260 = 0xffffffff;
    loc_e09f98(UIImageView, arg_9C);
    arg_260 = 0xffffffff;
    asm{ strd       r1, r1, [sp] };
    r0 = loc_e09f98();
    arg_260 = 0xffffffff;
    r8 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_1C, 0x1);
    arg_260 = 0xffffffff;
    var_0 = 0x0;
    loc_e09f98(UIImage, arg_58, @"shareWechat", arg_50);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_7C = r5;
    arg_260 = 0xffffffff;
    arg_4 = 0xc1200000;
    var_0 = 0xc1700000;
    loc_e09f98(r8, arg_54, 0xc1700000, 0xc1200000);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_24, r5);
    arg_260 = 0xffffffff;
    loc_e09f98(UITapGestureRecognizer, arg_9C);
    arg_260 = 0xffffffff;
    r0 = loc_e09f98();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98(r8, arg_14, r4);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_48, arg_A0, r8);
    loc_e09f94(r4);
    loc_e09f94(arg_7C);
    loc_e09f94(r8);
    loc_e09f94(arg_28);
    loc_e09f94(arg_4C);
    loc_e09f94(arg_2C);
    loc_e09f94(arg_50);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, @selector(setShareTopContainer:), arg_48);
    loc_e09f94(arg_48);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, arg_90);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, @selector(shareTopContainer));
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r5, arg_A0, r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, @selector(shareTopContainer));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    r1 = *_NSConcreteStackBlock;
    arg_7C = r1;
    arg_188 = r1;
    arg_18C = 0xc2000000;
    asm{ strd       r1, r0, [sp, #0x190] };
    arg_198 = 0x20c5bf0;
    r10 = loc_e09fa4(arg_8C, 0x0);
    arg_19C = r10;
    arg_8C = @selector(mas_makeConstraints:);
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(mas_makeConstraints:), &arg_188);
    arg_260 = 0xffffffff;
    loc_e09f9c();
    loc_e09f94();
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(UIButton, @selector(buttonWithType:), 0x0);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(setInputInvitationCodeButton:), r5);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(inputInvitationCodeButton));
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_4 = 0x3f800000;
    var_0 = 0x3ed8d8d9;
    loc_e09f98(UIColor, @selector(colorWithRed:green:blue:alpha:), 0x3f7cfcfd, 0x3e44c4c5);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_58 = @selector(setBackgroundColor:);
    loc_e09f98(r6, @selector(setBackgroundColor:), r5);
    loc_e09f94(r5);
    loc_e09f94(r6);
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(inputInvitationCodeButton));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_4C = @selector(layer);
    loc_e09f98(r5, @selector(layer));
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_50 = @selector(setCornerRadius:);
    loc_e09f98(r6, @selector(setCornerRadius:), 0x41700000);
    loc_e09f94(r6);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(inputInvitationCodeButton));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    var_0 = 0x40;
    loc_e09f98(r5, arg_5C, r10, @selector(inputInvitationCodeButtonDidClicked:));
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(inputInvitationCodeButton));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_2C = @selector(setTitle:forState:);
    loc_e09f98(r5, @selector(setTitle:forState:), cfstring_kX_____x, 0x0);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(inputInvitationCodeButton));
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_24 = @selector(titleLabel);
    loc_e09f98(r6, @selector(titleLabel));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_28 = @selector(boldSystemFontOfSize:);
    loc_e09f98(UIFont, @selector(boldSystemFontOfSize:), 0x41500000);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_48 = @selector(setFont:);
    loc_e09f98(r5, @selector(setFont:), r4);
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r6);
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(inputInvitationCodeButton));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    asm{ strd       r2, r2, [sp] };
    loc_e09f98();
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r10, arg_90);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(inputInvitationCodeButton));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r4, arg_A0, r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r10, @selector(inputInvitationCodeButton));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_170 = arg_7C;
    arg_174 = 0xc2000000;
    arg_178 = 0x0;
    arg_17C = 0xaa8d59;
    arg_180 = 0x20c5c08;
    r8 = loc_e09fa4(r10);
    arg_184 = r8;
    arg_260 = 0xffffffff;
    loc_e09f98(r5, arg_8C, &arg_170);
    arg_260 = 0xffffffff;
    loc_e09f9c();
    loc_e09f94();
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(UILabel, arg_9C);
    arg_260 = 0xffffffff;
    r5 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(r8, @selector(setUsersCountLabel:), r5);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, @selector(usersCountLabel));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_54 = @selector(whiteColor);
    loc_e09f98(UIColor, @selector(whiteColor));
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(setTextColor:), r6);
    r0 = r6;
    loc_e09f94(r0);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    arg_20 = @selector(usersCountLabel);
    loc_e09f98(r8, @selector(usersCountLabel));
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(UIFont, @selector(fontWithName:size:), @"DINAlternate-Bold", 0x41700000);
    arg_260 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 != 0x0) {
            r0 = loc_e09fa4(r5);
    }
    else {
            r0 = *objc_cls_ref_UIFont;
            arg_260 = 0xffffffff;
            loc_e09f98(r0, @selector(systemFontOfSize:), 0x41700000);
            arg_260 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
    }
    r6 = r0;
    loc_e09f94(r5);
    loc_e0a030(r6);
    arg_260 = 0xffffffff;
    loc_e09f98(r4, arg_48, r6);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_90);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r8, arg_20);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98(r5, arg_A0, r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_20);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_158 = arg_7C;
    arg_15C = 0xc2000000;
    asm{ strd       r1, r0, [sp, #0x160] };
    arg_168 = 0x20c5c20;
    r4 = loc_e09fa4(r8, 0x0);
    arg_16C = r4;
    arg_260 = 0xffffffff;
    loc_e09f98(r5, arg_8C, &arg_158);
    arg_260 = 0xffffffff;
    loc_e09f9c();
    loc_e09f94();
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(UIView, arg_9C);
    arg_260 = 0xffffffff;
    r5 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(setRedDotView:), r5);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(redDotView));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98();
    loc_e09f94(r5);
    loc_e09f94(r6);
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(redDotView));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_20 = @selector(ttf_colorWithHexString:);
    loc_e09f98(UIColor, @selector(ttf_colorWithHexString:), @"fc316c");
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98(r5, arg_58, r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r4, arg_90);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(redDotView));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98(r5, arg_A0, r6);
    loc_e09f94(r6);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(redDotView));
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_140 = arg_7C;
    arg_144 = 0xc2000000;
    arg_148 = 0x0;
    arg_14C = 0xaa90ff;
    arg_150 = 0x20c5c38;
    r6 = loc_e09fa4(r4);
    arg_154 = r6;
    arg_260 = 0xffffffff;
    loc_e09f98(r5, arg_8C, &arg_140);
    arg_260 = 0xffffffff;
    loc_e09f9c();
    loc_e09f94();
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(UIButton, arg_9C);
    arg_260 = 0xffffffff;
    r4 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(r6, @selector(setLoginButton:), r4);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    arg_8C = r6;
    arg_80 = @selector(loginButton);
    loc_e09f98(r6, @selector(loginButton));
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    r4 = UIFont;
    arg_260 = 0xffffffff;
    loc_e09f98(UIScreen, arg_98);
    arg_260 = 0xffffffff;
    r7 = r7;
    r11 = loc_e09f9c();
    if (r11 != 0x0) {
            arg_260 = 0xffffffff;
            r8 = arg_88;
            loc_e09fb0(&arg_130, r11, r8);
            asm{ vmov.f32   d0, #0x1 } << 0x10 | 0x1;
            asm{ vadd.f32   d2, d3, d2 };
            asm{ vcmpe.f32  s4, s2 };
            asm{ vmrs       APSR_nzcv, fpscr };
            asm{ it         mi };
            if (CPU_FLAGS & P) {
                    asm{ vmovmi.f32 s0, s8 } << 0x10 | 0xc0004181;
            }
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            r8 = arg_88;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    asm{ vmov       r2, s0 };
    arg_260 = 0xffffffff;
    loc_e09f98(r4, arg_28);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98(r6, arg_48, r4);
    loc_e09f94(r4);
    loc_e09f94(r11);
    loc_e09f94(r6);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, arg_80);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r11 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(UIScreen, arg_98);
    arg_260 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 != 0x0) {
            arg_260 = 0xffffffff;
            loc_e09fb0(&arg_120, r5, r8);
            asm{ vadd.f32   d1, d2, d1 };
            asm{ vcmpe.f32  s2, s0 };
            asm{ vmrs       APSR_nzcv, fpscr };
            if (CPU_FLAGS & NP) {
                    arg_260 = 0xffffffff;
                    loc_e09f98(r11, arg_50, 0x41e00000);
            }
            else {
                    r10 = r4;
                    arg_260 = 0xffffffff;
                    loc_e09f98(UIScreen, arg_98);
                    arg_260 = 0xffffffff;
                    r7 = r7;
                    r6 = loc_e09f9c();
                    if (r6 != 0x0) {
                            arg_260 = 0xffffffff;
                            loc_e09fb0(&arg_110, r6, r8);
                    }
                    else {
                            asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
                            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                            asm{ vst1.64    {d16, d17}, [r0] };
                    }
                    asm{ vmov.f32   d16, #0x5 } << 0x10 | 0x5;
                    r4 = r10;
                    asm{ vdiv.f32   s0, s0, s2 };
                    arg_260 = 0xffffffff;
                    asm{ vmul.f32   d17, d0, d1 };
                    asm{ vmul.f32   d0, d17, d16 };
                    asm{ vmov       r2, s0 };
                    loc_e09f98(r11, arg_50);
                    loc_e09f94(r6);
            }
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
            r10 = r4;
            arg_260 = 0xffffffff;
            loc_e09f98(UIScreen, arg_98);
            arg_260 = 0xffffffff;
            r7 = r7;
            r6 = loc_e09f9c();
            if (r6 != 0x0) {
                    arg_260 = 0xffffffff;
                    loc_e09fb0(&arg_110, r6, r8);
            }
            else {
                    asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            asm{ vmov.f32   d16, #0x5 } << 0x10 | 0x5;
            r4 = r10;
            asm{ vdiv.f32   s0, s0, s2 };
            arg_260 = 0xffffffff;
            asm{ vmul.f32   d17, d0, d1 };
            asm{ vmul.f32   d0, d17, d16 };
            asm{ vmov       r2, s0 };
            loc_e09f98(r11, arg_50);
            loc_e09f94(r6);
    }
    loc_e09f94(r5);
    loc_e09f94(r11);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    r11 = arg_8C;
    r8 = arg_80;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(UIColor, arg_20, @"fc316c");
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r4, arg_58, r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(UIColor, arg_54);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(setTitleColor:forState:), r5, 0x0);
    loc_e09f94(r5);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(TTFantasyService, arg_74);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(settings));
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(valueForKey:), @"fantasy_living_login_btn_text");
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    arg_58 = r6;
    asm{ it         ne };
    if (r6 != 0x0) {
    }
    r4 = r0;
    loc_e09f98();
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    var_0 = 0x40;
    loc_e09f98(r4, arg_5C, r11, @selector(signUp:));
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, arg_90);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98(r11, arg_70);
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(insertSubview:belowSubview:), r4, r6);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r11, r8);
    arg_260 = 0xffffffff;
    r11 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(UIScreen, arg_98);
    arg_260 = 0xffffffff;
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 != 0x0) {
            arg_260 = 0xffffffff;
            r8 = arg_88;
            loc_e09fb0(&arg_100, r6, r8);
            asm{ vaddne.f32 d1, d2, d1 };
            asm{ vcmpe.f32  s2, s0 };
            asm{ vmrs       APSR_nzcv, fpscr };
            if (CPU_FLAGS & NP) {
                    arg_260 = 0xffffffff;
                    loc_e09f98(r11, arg_78, 0x42600000);
            }
            else {
                    arg_260 = 0xffffffff;
                    loc_e09f98(UIScreen, arg_98);
                    arg_260 = 0xffffffff;
                    r7 = r7;
                    r5 = loc_e09f9c();
                    if (r5 != 0x0) {
                            arg_260 = 0xffffffff;
                            loc_e09fb0(&arg_F0, r5, r8);
                    }
                    else {
                            asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
                            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                            asm{ vst1.64    {d16, d17}, [r0] };
                    }
                    arg_260 = 0xffffffff;
                    asm{ vdiv.f32   s0, s0, s2 };
                    asm{ vmul.f32   d0, d0, d1 };
                    asm{ vmov       r2, s0 };
                    loc_e09f98(r11, arg_78);
                    loc_e09f94(r5);
            }
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            r8 = arg_88;
            asm{ vst1.64    {d16, d17}, [r0] };
            arg_260 = 0xffffffff;
            loc_e09f98(UIScreen, arg_98);
            arg_260 = 0xffffffff;
            r7 = r7;
            r5 = loc_e09f9c();
            if (r5 != 0x0) {
                    arg_260 = 0xffffffff;
                    loc_e09fb0(&arg_F0, r5, r8);
            }
            else {
                    asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            arg_260 = 0xffffffff;
            asm{ vdiv.f32   s0, s0, s2 };
            asm{ vmul.f32   d0, d0, d1 };
            asm{ vmov       r2, s0 };
            loc_e09f98(r11, arg_78);
            loc_e09f94(r5);
    }
    loc_e09f94(r6);
    loc_e09f94(r11);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, arg_80);
    arg_260 = 0xffffffff;
    r11 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(UIScreen, arg_98);
    arg_260 = 0xffffffff;
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 != 0x0) {
            arg_260 = 0xffffffff;
            loc_e09fb0(&arg_E0, r6, r8);
            asm{ vadd.f32   d1, d1, d8 };
            asm{ vcmpe.f32  s2, s0 };
            asm{ vmrs       APSR_nzcv, fpscr };
            if (CPU_FLAGS & NP) {
                    arg_260 = 0xffffffff;
                    loc_e09f98(r11, arg_30, 0x437f0000);
                    r8 = arg_8C;
            }
            else {
                    arg_260 = 0xffffffff;
                    loc_e09f98(UIScreen, arg_98);
                    arg_260 = 0xffffffff;
                    r7 = r7;
                    r5 = loc_e09f9c();
                    if (r5 != 0x0) {
                            arg_260 = 0xffffffff;
                            loc_e09fb0(&arg_D0, r5, r8);
                    }
                    else {
                            asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
                            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                            asm{ vst1.64    {d16, d17}, [r0] };
                    }
                    r8 = arg_8C;
                    asm{ vdiv.f32   s0, s0, s2 };
                    arg_260 = 0xffffffff;
                    asm{ vmul.f32   d0, d0, d1 };
                    asm{ vmov       r2, s0 };
                    loc_e09f98(r11, arg_30);
                    loc_e09f94(r5);
            }
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
            arg_260 = 0xffffffff;
            loc_e09f98(UIScreen, arg_98);
            arg_260 = 0xffffffff;
            r7 = r7;
            r5 = loc_e09f9c();
            if (r5 != 0x0) {
                    arg_260 = 0xffffffff;
                    loc_e09fb0(&arg_D0, r5, r8);
            }
            else {
                    asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            r8 = arg_8C;
            asm{ vdiv.f32   s0, s0, s2 };
            arg_260 = 0xffffffff;
            asm{ vmul.f32   d0, d0, d1 };
            asm{ vmov       r2, s0 };
            loc_e09f98(r11, arg_30);
            loc_e09f94(r5);
    }
    loc_e09f94(r6);
    loc_e09f94(r11);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_80);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98(r8, arg_90);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r2 = loc_e09f98(r4, @selector(ttf_centerX));
    arg_260 = 0xffffffff;
    loc_e09f98(r6, @selector(setTtf_centerX:), r2);
    loc_e09f94(r4);
    loc_e09f94(r6);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_80);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98(r8, arg_94);
    arg_260 = 0xffffffff;
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 != 0x0) {
            arg_260 = 0xffffffff;
            loc_e09fb0(&arg_C0, r6, @selector(frame));
            asm{ vmul.f32   d0, d1, d0 };
    }
    else {
            asm{ vmov.i32   d0, #0x0 } << 0x10 | 0x0;
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    asm{ vmov       r2, s0 };
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(setTtf_centerY:));
    loc_e09f94(r6);
    loc_e09f94(r4);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_94);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r8, arg_84);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    r4 = r0;
    arg_260 = 0xffffffff;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98(r5, arg_A0, r6);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(arg_8C, arg_84);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    r5 = r0;
    arg_260 = 0xffffffff;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    loc_e09f98(arg_8C, arg_94);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    r0 = loc_e09f98();
    asm{ vmov.f32   d16, #0x2 } << 0x10 | 0x2;
    arg_260 = 0xffffffff;
    r0 << 0x10 | r0;
    asm{ vmul.f32   d0, d17, d16 };
    asm{ vmov       r2, s0 };
    loc_e09f98(r6, arg_78);
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    r8 = arg_8C;
    loc_e09f98(arg_8C, arg_84);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    r5 = r0;
    arg_260 = 0xffffffff;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_94);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r6 = r0;
    r0 = loc_e09f98();
    arg_260 = 0xffffffff;
    loc_e09f98(r4, arg_38, r0);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(TTFantasyService, arg_74);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_260 = 0xffffffff;
    var_0 = @"animation";
    loc_e09f98(r4, @selector(URLForResource:withExtension:subdirectory:), @"logo_loop_data", @"json");
    arg_260 = 0xffffffff;
    r7 = r7;
    r6 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(r5);
    arg_A0 = r6;
    if (r6 != 0x0) {
            sub_e09ff4(&arg_22C, r8);
            sub_e0a074(0x0, 0x0);
            arg_260 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_A4 = arg_7C;
            asm{ strd       r2, r5, [sp, #0xa8] };
            asm{ strd       r0, r1, [sp, #0xb0] };
            arg_B8 = loc_e09fa4(arg_A0, 0x20c5c80, 0xc2000000);
            loc_e09ff0(0x18, &arg_22C);
            sub_e0a01c(r4, &arg_A4);
            loc_e09f94(r4);
            sub_e09f90(0x18);
            loc_e09f94(arg_B8);
            sub_e09f90(&arg_22C);
    }
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_34);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r8, arg_6C);
    arg_260 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_98 = @selector(curUser);
    arg_260 = 0xffffffff;
    loc_e09f98(r4, @selector(curUser));
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r2 = sign_extend_32(loc_e09f98(r6, @selector(lifesCanUse)));
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(setHasLife:), r2);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, arg_34);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r5 = r0;
    loc_e09f98(r8, arg_6C);
    arg_260 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98();
    arg_260 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r2 = loc_e09f98(r6, @selector(lifes));
    arg_260 = 0xffffffff;
    loc_e09f98(r5, @selector(setLifes:), r2);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    arg_260 = 0xffffffff;
    loc_e09f98(r8, @selector(setCurUserCountAttributedString));
    arg_260 = 0xffffffff;
    loc_e09f98(r8, @selector(_updateButtonStatus));
    arg_260 = 0xffffffff;
    r0 = loc_e09f98(UITapGestureRecognizer, arg_9C);
    arg_260 = 0xffffffff;
    r4 = r0;
    loc_e09f98(r8, arg_84);
    arg_260 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_260 = 0xffffffff;
    r4 = loc_e09f98(r4, arg_60, r5, @selector(stopEditing));
    arg_260 = 0xffffffff;
    loc_e09f98(r8, @selector(setHideKeyboardGesture:), r4);
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(arg_A0);
    loc_e09f94(arg_58);
    loc_e09f94(arg_154);
    loc_e09f94(arg_16C);
    loc_e09f94(arg_184);
    loc_e09f94(arg_19C);
    loc_e09f94(arg_44);
    r0 = loc_e09fec(&arg_25C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)_updateButtonStatus
{
    r7 = &arg_C;
    sp = sp - 0x34;
    r10 = self;
    r8 = @selector(sharedService);
    loc_e09f98(TTFantasyService, r8);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(delegate));
    r7 = r7;
    r6 = loc_e09f9c();
    r5 = loc_e09f98(r6, @selector(isLogin));
    loc_e09f94(r6);
    loc_e09f94(r4);
    if (r5 != 0x0) {
            r0 = *objc_cls_ref_TTFantasyService;
            loc_e09f98(r0, r8);
            r4 = loc_e09f9c();
            r6 = loc_e09f98(r4, @selector(inputInvitationCodeDisabled));
            loc_e09f94(r4);
            var_0 = @selector(inputInvitationCodeButton);
            loc_e09f98(r10, @selector(inputInvitationCodeButton));
            r7 = r7;
            r5 = loc_e09f9c();
            if (r6 != 0x0) {
                    r8 = @selector(setHidden:);
                    loc_e09f98(r5, r8, 0x1);
            }
            else {
                    loc_e09f98(r10, @selector(viewModel));
                    r7 = r7;
                    r4 = loc_e09f9c();
                    r2 = loc_e09f98(r4, @selector(isActivityGetOn));
                    r8 = @selector(setHidden:);
                    loc_e09f98(r5, r8, r2);
                    loc_e09f94(r4);
            }
            loc_e09f94(r5);
            r11 = @selector(shareTopContainer);
            loc_e09f98(r10, r11);
            r4 = loc_e09f9c();
            loc_e09f98(r10, var_0);
            r7 = r7;
            r5 = loc_e09f9c();
            r6 = @selector(isHidden);
            r0 = loc_e09f98(r5, r6);
            asm{ it         eq };
            if (r0 == 0x0) {
            }
            loc_e09f98(r4, r8);
            loc_e09f94(r5);
    }
    else {
            loc_e09f98(r10, @selector(inputInvitationCodeButton));
            r4 = loc_e09f9c();
            loc_e09f98(r10, @selector(viewModel));
            r5 = loc_e09f9c();
            r2 = loc_e09f98(r5, @selector(isActivityGetOn));
            r8 = @selector(setHidden:);
            loc_e09f98(r4, r8, r2);
            loc_e09f94(r5);
            loc_e09f94(r4);
            r11 = @selector(shareTopContainer);
            loc_e09f98(r10, r11);
            r5 = loc_e09f9c();
            loc_e09f98(r10, @selector(inputInvitationCodeButton));
            r7 = r7;
            r4 = loc_e09f9c();
            r6 = @selector(isHidden);
            r0 = loc_e09f98(r4, r6);
            asm{  };
            if (r0 == 0x0) {
            }
            loc_e09f98(r5, r8);
            loc_e09f94(r4);
    }
    loc_e09f94();
    loc_e09f98(r10, r11);
    r7 = r7;
    r0 = loc_e09f9c();
    r5 = loc_e09f98();
    loc_e09f94(r0);
    if (r5 != 0x0) {
            loc_e09f98();
            r5 = loc_e09f9c();
            r0 = *_NSConcreteStackBlock;
            arg_1C = r0;
            arg_20 = 0xc2000000;
            asm{ stmeq      r3!, {r0, r1, r2} };
            loc_e09fa4(r10, 0xaaa0ab, 0x20c5c98, &arg_24);
            arg_30 = r10;
            loc_e09f98(r5, @selector(mas_remakeConstraints:), &arg_1C);
            loc_e09f9c();
            loc_e09f94();
            loc_e09f94(r5);
    }
    else {
            loc_e09f98();
            r5 = loc_e09f9c();
            r0 = *_NSConcreteStackBlock;
            arg_4 = r0;
            arg_8 = 0xc2000000;
            asm{ stm        r3!, {r0, r1, r2} };
            loc_e09fa4(r10, 0xaaa257, 0x20c5cb0, &arg_C);
            arg_18 = r10;
            loc_e09f98(r5, @selector(mas_remakeConstraints:), &arg_4);
            loc_e09f9c();
            loc_e09f94();
            loc_e09f94(r5);
    }
    r0 = loc_e09f94();
    Pop();
    Pop();
    Pop();
    return;
}

- (void)registerNotification
{
    loc_e09f98(NSNotificationCenter, @selector(defaultCenter));
    r4 = loc_e09f9c();
    r0 = *0x20c3a74;
    arg_4 = 0x0;
    var_0 = r0;
    loc_e09f98(r4, @selector(addObserver:selector:name:object:), self, @selector(ttf_accountStatusChangeNotification:));
    loc_e09f94(r4);
    loc_e09f98(NSNotificationCenter, @selector(defaultCenter));
    r4 = loc_e09f9c();
    arg_4 = 0x0;
    var_0 = *_UIKeyboardWillShowNotification;
    loc_e09f98(r4, @selector(addObserver:selector:name:object:), self, @selector(keyboardWillShow:));
    loc_e09f94(r4);
    loc_e09f98(NSNotificationCenter, @selector(defaultCenter));
    r4 = loc_e09f9c();
    arg_4 = 0x0;
    var_0 = *_UIKeyboardWillHideNotification;
    loc_e09f98(r4, @selector(addObserver:selector:name:object:), self, @selector(keyboardWillHide:));
    loc_e09f94(r4);
    loc_e09f98(NSNotificationCenter, @selector(defaultCenter));
    r4 = loc_e09f9c();
    arg_4 = 0x0;
    var_0 = *_UIApplicationDidEnterBackgroundNotification;
    loc_e09f98(r4, @selector(addObserver:selector:name:object:), self, @selector(ttf_applicationDidEnterBackground:));
    loc_e09f94(r4);
    loc_e09f98(NSNotificationCenter, @selector(defaultCenter));
    r4 = loc_e09f9c();
    asm{ strd       r0, r11, [sp] };
    loc_e09f98(r4, @selector(addObserver:selector:name:object:), self, @selector(ttf_applicationWillEnterForeground:));
    loc_e09f94(r4);
    loc_e09f98(NSNotificationCenter, @selector(defaultCenter));
    r6 = loc_e09f9c();
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(getReachabilityDidChangeNotificationName));
    r7 = &arg_C;
    r4 = loc_e09f9c();
    asm{ strd       r4, r0, [sp] };
    r1 = @selector(addObserver:selector:name:object:);
    loc_e09f98(r6, r1, self, @selector(onReachabilityChangedNotification:));
    loc_e09f94(r4);
    loc_e09f94(r5);
    r0 = r6;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)removeNotification
{
    loc_e09f98(NSNotificationCenter, @selector(defaultCenter), objc_cls_ref_NSNotificationCenter);
    r5 = loc_e09f9c();
    r1 = @selector(removeObserver:);
    loc_e09f98(r5, r1, self);
    r0 = r5;
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)closeLiveRoom
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x70 - sp - 0x40;
    sub_e09ff4(&arg_34, self);
    arg_54 = *__objc_personality_v0;
    r0 = *0xaaac3c;
    arg_58 = 0x1f21a70;
    arg_5C = r7;
    arg_64 = sp;
    arg_60 = (r0 | 0x1) + 0xaaa6a2;
    arg_40 = 0x1;
    sub_e09ff8();
    arg_18 = self;
    if (loc_e09f98(self, @selector(canShowAlertForResrrection)) != 0x0) {
            arg_40 = 0x2;
            loc_e09f98(arg_18, @selector(lastShowResurrectionTime));
            asm{ strd       r1, r0, [sp, #0x10] };
            arg_40 = 0x3;
            r8 = loc_e09f98(arg_18, @selector(midNightInterval));
            asm{ ldrd       r1, r0, [sp, #0x10] };
            r6 = sub_e0a078();
            if ((sub_e0a078() ^ r6 | @selector(midNightInterval) ^ @selector(midNightInterval)) == 0x0) {
                    arg_40 = 0x5;
                    if ((loc_e09f98(arg_18, @selector(showResurrectionCount)) > 0x2) || (*(int8_t *)0x23fa3f4 == 0x1)) {
                            arg_40 = 0x6;
                            loc_e09f98(arg_18, @selector(leaveLiveRoom));
                    }
                    else {
                            arg_40 = 0x7;
                            loc_e09f98(arg_18, @selector(showAlertForResurrection));
                    }
            }
            else {
                    arg_40 = 0x4;
                    loc_e09f98(arg_18, @selector(showAlertForResurrection));
            }
    }
    else {
            arg_40 = 0x8;
            arg_10 = @selector(viewModel);
            loc_e09f98(arg_18, @selector(viewModel));
            arg_40 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_40 = 0x9;
            arg_14 = r0;
            arg_C = @selector(activityStatus);
            r4 = loc_e09f98();
            loc_e09f94(arg_14);
            if (r4 <= 0x4) {
                    arg_40 = 0xa;
                    loc_e09f98(arg_18, arg_10);
                    arg_40 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_40 = 0xb;
                    arg_14 = r0;
                    r4 = loc_e09f98();
                    loc_e09f94(arg_14);
                    if (r4 <= 0x2) {
                            arg_40 = 0xc;
                            loc_e09f98(TTFantasyService, @selector(sharedService), 0xc);
                            arg_40 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_40 = 0xd;
                            arg_14 = r0;
                            loc_e09f98();
                            arg_40 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_40 = 0xe;
                            arg_C = r0;
                            loc_e09f98();
                            arg_40 = 0xffffffff;
                            r7 = r7;
                            r4 = loc_e09f9c();
                            loc_e09f94(arg_C);
                            loc_e09f94(arg_14);
                            arg_14 = r4;
                            if (r4 != 0x0) {
                                    arg_40 = 0xf;
                                    r2 = loc_e09f98(NSString, @selector(class), 0xf);
                                    arg_40 = 0x10;
                                    if (loc_e09f98(arg_14, @selector(isKindOfClass:), r2) != 0x0) {
                                            arg_40 = 0x11;
                                            if (loc_e09f98(arg_14, @selector(length)) != 0x0) {
                                                    arg_40 = 0x12;
                                                    if (loc_e09f98(arg_14, @selector(isEqualToString:), @"null") != 0x0) {
                                                            arg_C = TTFQuizShowLiveRoomViewModel;
                                                            arg_40 = 0x13;
                                                            loc_e09f98(arg_18, arg_10);
                                                            arg_40 = 0xffffffff;
                                                            r0 = loc_e09f9c();
                                                            arg_40 = 0x14;
                                                            arg_10 = r0;
                                                            loc_e09f98();
                                                            arg_40 = 0xffffffff;
                                                            r0 = loc_e09f9c();
                                                            arg_40 = 0x15;
                                                            arg_8 = r0;
                                                            r2 = loc_e09f98();
                                                            arg_40 = 0x16;
                                                            loc_e09f98(arg_C, @selector(formatToBonus:), r2, @selector(prize));
                                                            arg_40 = 0xffffffff;
                                                            r4 = loc_e09f9c();
                                                            loc_e09f94(arg_8);
                                                            loc_e09f94(arg_10);
                                                            arg_8 = NSString;
                                                            arg_40 = 0x17;
                                                            arg_10 = r4;
                                                            loc_e09f98(r4, @selector(firstObject));
                                                            arg_40 = 0xffffffff;
                                                            arg_C = loc_e09f9c();
                                                            arg_40 = 0x18;
                                                            loc_e09f98(arg_10, @selector(lastObject));
                                                            arg_40 = 0xffffffff;
                                                            loc_e09f9c();
                                                            arg_40 = 0x19;
                                                            asm{ strd       r0, r0, [sp] };
                                                            asm{ ldrd       r0, r3, [sp, #0x8] };
                                                            loc_e09f98();
                                                            arg_40 = 0xffffffff;
                                                            r7 = r7;
                                                            r4 = loc_e09f9c();
                                                            loc_e09f94(arg_4);
                                                            loc_e09f94(arg_C);
                                                            loc_e09f94(arg_10);
                                                    }
                                                    else {
                                                            r4 = loc_e09fa4(arg_14);
                                                    }
                                            }
                                            else {
                                                    arg_C = TTFQuizShowLiveRoomViewModel;
                                                    arg_40 = 0x13;
                                                    loc_e09f98(arg_18, arg_10);
                                                    arg_40 = 0xffffffff;
                                                    r0 = loc_e09f9c();
                                                    arg_40 = 0x14;
                                                    arg_10 = r0;
                                                    loc_e09f98();
                                                    arg_40 = 0xffffffff;
                                                    r0 = loc_e09f9c();
                                                    arg_40 = 0x15;
                                                    arg_8 = r0;
                                                    r2 = loc_e09f98();
                                                    arg_40 = 0x16;
                                                    loc_e09f98(arg_C, @selector(formatToBonus:), r2, @selector(prize));
                                                    arg_40 = 0xffffffff;
                                                    r4 = loc_e09f9c();
                                                    loc_e09f94(arg_8);
                                                    loc_e09f94(arg_10);
                                                    arg_8 = NSString;
                                                    arg_40 = 0x17;
                                                    arg_10 = r4;
                                                    loc_e09f98(r4, @selector(firstObject));
                                                    arg_40 = 0xffffffff;
                                                    arg_C = loc_e09f9c();
                                                    arg_40 = 0x18;
                                                    loc_e09f98(arg_10, @selector(lastObject));
                                                    arg_40 = 0xffffffff;
                                                    loc_e09f9c();
                                                    arg_40 = 0x19;
                                                    asm{ strd       r0, r0, [sp] };
                                                    asm{ ldrd       r0, r3, [sp, #0x8] };
                                                    loc_e09f98();
                                                    arg_40 = 0xffffffff;
                                                    r7 = r7;
                                                    r4 = loc_e09f9c();
                                                    loc_e09f94(arg_4);
                                                    loc_e09f94(arg_C);
                                                    loc_e09f94(arg_10);
                                            }
                                    }
                                    else {
                                            arg_C = TTFQuizShowLiveRoomViewModel;
                                            arg_40 = 0x13;
                                            loc_e09f98(arg_18, arg_10);
                                            arg_40 = 0xffffffff;
                                            r0 = loc_e09f9c();
                                            arg_40 = 0x14;
                                            arg_10 = r0;
                                            loc_e09f98();
                                            arg_40 = 0xffffffff;
                                            r0 = loc_e09f9c();
                                            arg_40 = 0x15;
                                            arg_8 = r0;
                                            r2 = loc_e09f98();
                                            arg_40 = 0x16;
                                            loc_e09f98(arg_C, @selector(formatToBonus:), r2, @selector(prize));
                                            arg_40 = 0xffffffff;
                                            r4 = loc_e09f9c();
                                            loc_e09f94(arg_8);
                                            loc_e09f94(arg_10);
                                            arg_8 = NSString;
                                            arg_40 = 0x17;
                                            arg_10 = r4;
                                            loc_e09f98(r4, @selector(firstObject));
                                            arg_40 = 0xffffffff;
                                            arg_C = loc_e09f9c();
                                            arg_40 = 0x18;
                                            loc_e09f98(arg_10, @selector(lastObject));
                                            arg_40 = 0xffffffff;
                                            loc_e09f9c();
                                            arg_40 = 0x19;
                                            asm{ strd       r0, r0, [sp] };
                                            asm{ ldrd       r0, r3, [sp, #0x8] };
                                            loc_e09f98();
                                            arg_40 = 0xffffffff;
                                            r7 = r7;
                                            r4 = loc_e09f9c();
                                            loc_e09f94(arg_4);
                                            loc_e09f94(arg_C);
                                            loc_e09f94(arg_10);
                                    }
                            }
                            else {
                                    arg_C = TTFQuizShowLiveRoomViewModel;
                                    arg_40 = 0x13;
                                    loc_e09f98(arg_18, arg_10);
                                    arg_40 = 0xffffffff;
                                    r0 = loc_e09f9c();
                                    arg_40 = 0x14;
                                    arg_10 = r0;
                                    loc_e09f98();
                                    arg_40 = 0xffffffff;
                                    r0 = loc_e09f9c();
                                    arg_40 = 0x15;
                                    arg_8 = r0;
                                    r2 = loc_e09f98();
                                    arg_40 = 0x16;
                                    loc_e09f98(arg_C, @selector(formatToBonus:), r2, @selector(prize));
                                    arg_40 = 0xffffffff;
                                    r4 = loc_e09f9c();
                                    loc_e09f94(arg_8);
                                    loc_e09f94(arg_10);
                                    arg_8 = NSString;
                                    arg_40 = 0x17;
                                    arg_10 = r4;
                                    loc_e09f98(r4, @selector(firstObject));
                                    arg_40 = 0xffffffff;
                                    arg_C = loc_e09f9c();
                                    arg_40 = 0x18;
                                    loc_e09f98(arg_10, @selector(lastObject));
                                    arg_40 = 0xffffffff;
                                    loc_e09f9c();
                                    arg_40 = 0x19;
                                    asm{ strd       r0, r0, [sp] };
                                    asm{ ldrd       r0, r3, [sp, #0x8] };
                                    loc_e09f98();
                                    arg_40 = 0xffffffff;
                                    r7 = r7;
                                    r4 = loc_e09f9c();
                                    loc_e09f94(arg_4);
                                    loc_e09f94(arg_C);
                                    loc_e09f94(arg_10);
                            }
                            loc_e09f94(arg_14);
                    }
                    else {
                            r4 = cfstring_;
                            loc_e09fa4(r4);
                    }
                    arg_40 = 0x1a;
                    var_0 = 0x1;
                    arg_10 = r4;
                    loc_e09f98(UIAlertController, @selector(alertControllerWithTitle:message:preferredStyle:), r4, 0x0);
                    arg_40 = 0xffffffff;
                    arg_14 = loc_e09f9c();
                    arg_1C = *_NSConcreteStackBlock;
                    arg_20 = 0xc2000000;
                    arg_38 = &arg_1C + 0x14;
                    asm{ strd       r1, r0, [sp, #0x24] };
                    arg_2C = 0x20c5cc8;
                    loc_e09ff0(arg_38, &arg_34, 0x20c5cc8, &arg_1C + 0x14);
                    arg_40 = 0x1b;
                    var_0 = &arg_1C;
                    arg_C = @selector(actionWithTitle:style:handler:);
                    loc_e09f98(UIAlertAction, @selector(actionWithTitle:style:handler:), cfstring__y, 0x0);
                    arg_40 = 0xffffffff;
                    r2 = loc_e09f9c();
                    arg_40 = 0x1c;
                    asm{ strd       r2, r1, [sp, #0x4] };
                    loc_e09f98(arg_14, @selector(addAction:), r2);
                    loc_e09f94(arg_4);
                    arg_40 = 0x1d;
                    var_0 = 0x0;
                    loc_e09f98(UIAlertAction, arg_C, cfstring_Yu_N, 0x0);
                    arg_40 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_40 = 0x1e;
                    arg_C = r0;
                    loc_e09f98(arg_14, arg_8, r0);
                    loc_e09f94(arg_C);
                    arg_40 = 0x1f;
                    var_0 = 0x0;
                    asm{ ldrd       r2, r0, [sp, #0x14] };
                    loc_e09f98(0x0, @selector(presentViewController:animated:completion:));
                    sub_e09f90(arg_38);
                    loc_e09f94(arg_14);
                    loc_e09f94(arg_10);
            }
            else {
                    arg_40 = 0x20;
                    loc_e09f98(arg_18, @selector(leaveLiveRoom));
            }
    }
    sub_e09f90(&arg_34);
    r0 = loc_e09fec(&arg_3C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)leaveLiveRoom
{
    r7 = &arg_C;
    sp = sp - 0x4;
    r10 = self;
    loc_e09f98(r10, @selector(KVOController));
    r6 = loc_e09f9c();
    r8 = objc_cls_ref_UIApplication;
    loc_e09f98(UIApplication, @selector(sharedApplication));
    r4 = loc_e09f9c();
    loc_e09f98(r6, @selector(unobserve:), r4);
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f98(UIApplication, @selector(sharedApplication));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setIdleTimerDisabled:), 0x0);
    loc_e09f94(r4);
    r5 = @selector(delegate);
    loc_e09f98(r10, r5);
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 != 0x0) {
            loc_e09f98(r10, r5);
            r7 = r7;
            r4 = loc_e09f9c();
            r8 = @selector(quizShowLiveRoomClose:);
            r11 = loc_e09f98(r4, @selector(respondsToSelector:), r8);
            loc_e09f94(r4);
            loc_e09f94(r6);
            if (r11 != 0x0) {
                    loc_e09f98(r10, r5);
                    r7 = r7;
                    r0 = loc_e09f9c();
                    r4 = r0;
                    loc_e09f98();
                    loc_e09f94(r4);
            }
    }
    loc_e09f98(r10, @selector(ttf_dismissSelf));
    loc_e09f98(r10, @selector(liveTracker));
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(closePlayerTrack));
    loc_e09f94(r4);
    loc_e09f98(r10, @selector(endTrackStayPage:), 0x1);
    r0 = loc_e09f98(r10, @selector(isPlayRemoteVideo));
    if (r0 != 0x0) {
            loc_e09f98(r10, @selector(videoEngine));
            r6 = loc_e09f9c();
            r11 = loc_e09f98(r6, @selector(currentPlaybackTime));
            loc_e09f98(r10, @selector(warmupVideoUrl));
            r4 = loc_e09f9c();
            var_0 = r4;
            r1 = @selector(setProgressTimeInterval:videoUrl:);
            loc_e09f98(TTFQuizShowLiveRoomWarmupVideoHelper, r1, r11, @selector(currentPlaybackTime));
            loc_e09f94(r4);
            r0 = r6;
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            r0 = loc_1be412c(r0, r1);
    }
    else {
            Pop();
            Pop();
            Pop();
            return;
    }
    return;
}

- (id)canShowAlertForResrrection
{
    r7 = &arg_C;
    sp = sp - 0x4;
    r10 = self;
    r11 = @selector(sharedService);
    loc_e09f98(TTFantasyService, r11);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(isShowAlertForResrrectionEnabled));
    loc_e09f94(r4);
    if (r5 == 0x0) goto loc_aab0c6;
    goto loc_aaaee2;

loc_aab0c6:
    r0 = 0x0;

loc_aab0c8:
    Pop();
    Pop();
    Pop();
    return r0;

loc_aaaee2:
    r8 = @selector(viewModel);
    loc_e09f98(r10, r8);
    r7 = r7;
    r5 = loc_e09f9c();
    r4 = @selector(activityStatus);
    if (loc_e09f98(r5, r4) >= 0x5) goto loc_aab01e;
    goto loc_aaaf1a;

loc_aab01e:
    loc_e09f94(r5);
    goto loc_aab0c6;

loc_aaaf1a:
    loc_e09f98(r10, r8);
    r7 = r7;
    r0 = loc_e09f9c();
    r4 = loc_e09f98();
    loc_e09f94(r0);
    loc_e09f94(r5);
    if (r4 < 0x3) goto loc_aab0c6;
    loc_e09f98(TTFantasyService, r11);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(delegate));
    r7 = r7;
    r6 = loc_e09f9c();
    if (loc_e09f98(r6, @selector(isLogin)) == 0x0) goto loc_aab02c;
    goto loc_aaaf8e;

loc_aab02c:
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f98(NSCalendar, @selector(currentCalendar), objc_cls_ref_NSCalendar);
    r4 = loc_e09f9c();
    r2 = loc_e09f98(TTFShareViewModel, @selector(lastSharedTimeInterval), objc_cls_ref_TTFShareViewModel);
    loc_e09f98(NSDate, @selector(dateWithTimeIntervalSince1970:), r2, @selector(lastSharedTimeInterval));
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r4, @selector(isDateInToday:), r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    if (r6 != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = 0x1;
    }
    goto loc_aab0c8;

loc_aaaf8e:
    loc_e09f98(r10, r8);
    r0 = loc_e09f9c();
    var_0 = r0;
    r5 = @selector(authInfo);
    loc_e09f98();
    r7 = r7;
    r11 = loc_e09f9c();
    if (r11 == 0x0) goto loc_aab026;
    goto loc_aaafbe;

loc_aab026:
    loc_e09f94(var_0);
    goto loc_aab02c;

loc_aaafbe:
    loc_e09f98(r10, r8);
    r0 = loc_e09f9c();
    r10 = r4;
    r4 = r0;
    loc_e09f98();
    r7 = r7;
    r5 = loc_e09f9c();
    r8 = loc_e09f98(r5, @selector(answerStatus));
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(r11);
    loc_e09f94(var_0);
    loc_e09f94(r6);
    loc_e09f94(r10);
    if (r8 == 0x0) {
            r0 = 0x0;
    }
    else {
            loc_e09f98(NSCalendar, @selector(currentCalendar), objc_cls_ref_NSCalendar);
            r4 = loc_e09f9c();
            r2 = loc_e09f98(TTFShareViewModel, @selector(lastSharedTimeInterval), objc_cls_ref_TTFShareViewModel);
            loc_e09f98(NSDate, @selector(dateWithTimeIntervalSince1970:), r2, @selector(lastSharedTimeInterval));
            r5 = loc_e09f9c();
            r6 = loc_e09f98(r4, @selector(isDateInToday:), r5);
            loc_e09f94(r5);
            loc_e09f94(r4);
            if (r6 != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = 0x1;
            }
    }
    goto loc_aab0c8;
}

- (void)showAlertForResurrection
{
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    arg_18 = self;
    sub_e09ff4((0x90 - sp - 0x40) + 0x50, self);
    loc_e09fa4(cfstring__N_WVY___f_Y_T___cMR___S_f_Y_Y_maS__);
    arg_74 = *__objc_personality_v0;
    r0 = *0xaab34c;
    arg_78 = 0x1f21ab4;
    arg_7C = &arg_C;
    arg_84 = 0x90 - sp - 0x40;
    arg_80 = (r0 | 0x1) + 0xaab142;
    arg_60 = 0x1;
    sub_e09ff8();
    var_0 = 0x1;
    loc_e09f98(UIAlertController, @selector(alertControllerWithTitle:message:preferredStyle:), cfstring__N_WVY___f_Y_T___cMR___S_f_Y_Y_maS__, 0x0);
    arg_60 = 0xffffffff;
    arg_1C = loc_e09f9c();
    r6 = *_NSConcreteStackBlock;
    arg_54 = "itle:message:preferredStyle:";
    arg_38 = r6;
    arg_3C = 0xc2000000;
    arg_10 = r6;
    asm{ strd       r1, r0, [sp, #0x40] };
    arg_48 = 0x20c5ce0;
    loc_e09ff0(arg_54, (0x90 - sp - 0x40) + 0x50, 0x20c5ce0, objc_cls_ref_UIAlertAction);
    arg_60 = 0x2;
    var_0 = (0x90 - sp - 0x40) + 0x38;
    arg_14 = @selector(actionWithTitle:style:handler:);
    loc_e09f98(UIAlertAction, @selector(actionWithTitle:style:handler:), cfstring_, 0x0);
    arg_60 = 0xffffffff;
    r2 = loc_e09f9c();
    arg_60 = 0x3;
    asm{ strd       r2, r1, [sp, #0x8] };
    loc_e09f98(arg_1C, @selector(addAction:), r2);
    loc_e09f94(arg_8);
    arg_58 = "itle:message:preferredStyle:";
    arg_20 = arg_10;
    arg_24 = 0xc2000000;
    asm{ strd       r2, r0, [sp, #0x28] };
    arg_30 = 0x20c5d10;
    loc_e09ff0(arg_58, (0x90 - sp - 0x40) + 0x50, 0x0);
    arg_60 = 0x4;
    var_0 = (0x90 - sp - 0x40) + 0x20;
    loc_e09f98(UIAlertAction, arg_14, cfstring__S___S, 0x0);
    arg_60 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_60 = 0x5;
    arg_14 = r0;
    loc_e09f98(arg_1C, arg_C, r0);
    loc_e09f94(arg_14);
    arg_60 = 0x6;
    var_0 = 0x0;
    asm{ ldrd       r0, r2, [sp, #0x18] };
    loc_e09f98(0x0, @selector(presentViewController:animated:completion:));
    arg_60 = 0x7;
    loc_e09f98(arg_18, @selector(updateShowResurrectionTimeAndCount));
    sub_e09f90(arg_58);
    sub_e09f90(arg_54);
    loc_e09f94(arg_1C);
    loc_e09f94(cfstring__N_WVY___f_Y_T___cMR___S_f_Y_Y_maS__);
    sub_e09f90((0x90 - sp - 0x40) + 0x50);
    r0 = loc_e09fec((0x90 - sp - 0x40) + 0x5c);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (id)midNightInterval
{
    loc_e09f98(NSCalendar, @selector(currentCalendar));
    r6 = loc_e09f9c();
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r4 = loc_e09f9c();
    loc_e09f98(r6, @selector(components:fromDate:), 0x1c, r4);
    r5 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f98(r5, @selector(setHour:), 0x0);
    loc_e09f98(r5, @selector(setMinute:), 0x0);
    loc_e09f98(r5, @selector(setSecond:), 0x0);
    loc_e09f98(NSCalendar, @selector(currentCalendar));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(dateFromComponents:), r5);
    r6 = loc_e09f9c();
    r8 = loc_e09f98(r6, @selector(timeIntervalSince1970));
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    r0 = r8;
    Pop();
    Pop();
    return r0;
}

- (id)lastShowResurrectionTime
{
    loc_e09f98(NSUserDefaults, @selector(standardUserDefaults), objc_cls_ref_NSUserDefaults);
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(doubleForKey:), @"kTTFShowResurrectionTimeKey");
    loc_e09f94(r4);
    r0 = r5;
    return r0;
}

- (void)setLastShowResurrectionTime:(id)arg2 
{
    loc_e09f98(NSUserDefaults, @selector(standardUserDefaults), objc_cls_ref_NSUserDefaults);
    r7 = &arg_C;
    r6 = loc_e09f9c();
    r1 = @selector(setDouble:forKey:);
    var_0 = @"kTTFShowResurrectionTimeKey";
    loc_e09f98(r6, r1, arg2, r3);
    r0 = r6;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (id)showResurrectionCount
{
    loc_e09f98(NSUserDefaults, @selector(standardUserDefaults), objc_cls_ref_NSUserDefaults);
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(doubleForKey:), @"kTTFShowResurrectionCountKey");
    r0 = loc_e09f94(r4);
    @selector(doubleForKey:) << 0x10 | r5;
    asm{ vcvt.s32.f64 s0, d16 };
    asm{ vmov       r0, s0 };
    return r0;
}

- (void)setShowResurrectionCount:(id)arg2 
{
    loc_e09f98(NSUserDefaults, @selector(standardUserDefaults), objc_cls_ref_NSUserDefaults);
    r5 = loc_e09f9c();
    r1 = @selector(setInteger:forKey:);
    loc_e09f98(r5, r1, arg2, @"kTTFShowResurrectionCountKey");
    r0 = r5;
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)updateShowResurrectionTimeAndCount
{
    r7 = &arg_C;
    r4 = self;
    *(int8_t *)0x23fa3f4 = 0x1;
    r5 = loc_e09f98(r4, @selector(lastShowResurrectionTime), 0x1);
    r8 = loc_e09f98(r4, @selector(midNightInterval));
    r10 = @selector(midNightInterval);
    r5 = sub_e0a078();
    r6 = @selector(lastShowResurrectionTime);
    if ((sub_e0a078() ^ r5 | r10 ^ r6) == 0x0) {
            loc_e09f98(r4, @selector(showResurrectionCount)) + 0x1;
            r0 = r4;
            r1 = @selector(setShowResurrectionCount:);
    }
    else {
            loc_e09f98(r4, @selector(setLastShowResurrectionTime:), r8, r10);
            r1 = @selector(setShowResurrectionCount:);
            r0 = r4;
    }
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be4138(r0, r1);
    return;
}

- (void)countdownShare:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0xc;
    r8 = self;
    loc_e09f98(r8, @selector(extraDict), arg2);
    r6 = loc_e09f9c();
    r10 = loc_e09f98(r6, @selector(mutableCopy));
    loc_e09f94(r6);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(showShareImageEnabled));
    loc_e09f94(r5);
    if (r6 != 0x0) {
            loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
            r4 = loc_e09f9c();
            loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/live_fuhuo", r4);
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f94(r4);
            loc_e09f98(r10, @selector(setObject:forKeyedSubscript:), r5, *0x20c663c);
            loc_e09f94(r5);
    }
    loc_e09f98(r8, @selector(view));
    r5 = loc_e09f9c();
    asm{ strd       r10, r6, [sp, #0x4] };
    r1 = @selector(shareInSource:inView:showTip:params:isImageStyle:);
    r2 = *0x20c6610;
    var_0 = 0x1;
    loc_e09f98(TTFShareHelper, r1, r2, r5);
    loc_e09f94(r5);
    r0 = r10;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)liveBackShare:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0xc;
    r8 = self;
    loc_e09f98(r8, @selector(extraDict), arg2);
    r6 = loc_e09f9c();
    r10 = loc_e09f98(r6, @selector(mutableCopy));
    loc_e09f94(r6);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(showShareImageEnabled));
    loc_e09f94(r5);
    if (r6 != 0x0) {
            loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
            r4 = loc_e09f9c();
            loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/live_fuhuo/", r4);
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f94(r4);
            loc_e09f98(r10, @selector(setObject:forKeyedSubscript:), r5, *0x20c663c);
            loc_e09f94(r5);
    }
    loc_e09f98(r8, @selector(view));
    r5 = loc_e09f9c();
    asm{ strd       r10, r6, [sp, #0x4] };
    r1 = @selector(shareInSource:inView:showTip:params:isImageStyle:);
    r2 = *0x20c6644;
    var_0 = 0x1;
    loc_e09f98(TTFShareHelper, r1, r2, r5);
    loc_e09f94(r5);
    r0 = r10;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)inputInvitationCodeButtonDidClicked:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0xa0 - sp - 0x40;
    arg_18 = loc_e09fa4(arg2, _cmd, arg2);
    asm{ strd       r2, r0, [sp, #0x5c] };
    var_0 = 0x1;
    loc_e09f98(NSDictionary, @selector(dictionaryWithObjects:forKeys:count:), &arg_60, &arg_5C);
    r5 = loc_e09f9c();
    loc_e09f98(TTTracker, @selector(eventV3:params:), *0x20c7064, r5);
    loc_e09f94(r5);
    arg_1C = self;
    sub_e09ff4(&arg_58, self);
    arg_84 = *__objc_personality_v0;
    r0 = *0xaac0fc;
    arg_88 = 0x1f21ad0;
    arg_8C = r7;
    arg_94 = sp;
    arg_90 = (r0 | 0x1) + 0xaabdb2;
    arg_70 = 0x1;
    sub_e09ff8();
    arg_C = @selector(sharedService);
    loc_e09f98(TTFantasyService, @selector(sharedService));
    arg_70 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_70 = 0x2;
    arg_14 = r0;
    loc_e09f98();
    arg_70 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_70 = 0x3;
    arg_10 = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_10);
    loc_e09f94(arg_14);
    if (r4 != 0x0) {
            arg_70 = 0x7;
            arg_14 = @selector(inputInvitationCodeView);
            loc_e09f98(arg_1C, @selector(inputInvitationCodeView));
            arg_70 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f94();
            if (r4 == 0x0) {
                    arg_70 = 0x8;
                    loc_e09f98(TTFInputInvitationCodeView, @selector(alloc), 0x8);
                    arg_70 = 0x9;
                    asm{ strd       r5, r6, [sp] };
                    r2 = loc_e09f98();
                    arg_70 = 0xa;
                    arg_10 = r2;
                    loc_e09f98(arg_1C, @selector(setInputInvitationCodeView:), arg_10);
                    loc_e09f94(arg_10);
                    sub_e09ff4(&arg_38, arg_1C);
                    arg_70 = 0xb;
                    loc_e09f98(arg_1C, arg_14);
                    arg_68 = &arg_20 + 0x14;
                    r5 = loc_e09fa4();
                    r0 = *_NSConcreteStackBlock;
                    arg_20 = r0;
                    arg_24 = 0xc2000000;
                    asm{ stm        r3!, {r0, r1, r2} };
                    loc_e09ff0(arg_68, &arg_38, 0x20c5d58, &arg_28);
                    arg_70 = 0xc;
                    arg_10 = r5;
                    loc_e09f98(r5, @selector(setTtf_beginCheckInvitationCode:), &arg_20);
                    loc_e09f94(arg_10);
                    sub_e09f90(arg_68);
                    sub_e09f90(&arg_38);
            }
            arg_70 = 0xd;
            loc_e09f98(arg_1C, arg_14);
            arg_70 = 0xffffffff;
            arg_14 = loc_e09f9c();
            arg_70 = 0xe;
            loc_e09f98(arg_1C, @selector(view));
            arg_70 = 0xffffffff;
            r7 = r7;
            r2 = loc_e09f9c();
            arg_70 = 0xf;
            arg_1C = r2;
            loc_e09f98(arg_14, @selector(showInView:), r2);
            loc_e09f94(arg_1C);
            loc_e09f94(arg_14);
    }
    else {
            arg_64 = &arg_3C + 0x18;
            arg_70 = 0x4;
            loc_e09f98(TTFantasyService, arg_C);
            arg_70 = 0xffffffff;
            arg_14 = loc_e09f9c();
            arg_70 = 0x5;
            loc_e09f98(arg_1C, @selector(loginTrackerDicWithSection:), @"invite_code");
            arg_70 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            r0 = *_NSConcreteStackBlock;
            arg_3C = r0;
            arg_40 = 0xc2000000;
            asm{ stm        r3!, {r0, r1, r2} };
            loc_e09ff0(arg_64, &arg_58, 0x20c5d28, &arg_44);
            r0 = loc_e09fa4(arg_18);
            arg_50 = r0;
            arg_70 = 0x6;
            var_0 = &arg_3C;
            arg_1C = r4;
            loc_e09f98(arg_14, @selector(loginFromViewController:trackerDic:completion:), arg_1C, r4);
            loc_e09f94(arg_1C);
            loc_e09f94(arg_14);
            loc_e09f94(arg_50);
            sub_e09f90(arg_64);
    }
    sub_e09f90(&arg_58);
    loc_e09f94(arg_18);
    r0 = loc_e09fec(&arg_6C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)preloadShareImage
{
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r7 = &arg_8;
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(showShareImageEnabled));
    r0 = loc_e09f94(r4);
    if (r5 != 0x0) {
            loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
            r5 = loc_e09f9c();
            loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/live_share", r5);
            r4 = loc_e09f9c();
            loc_e09f94(r5);
            loc_e09f98(TTFShareImageHelper, @selector(sharedManager), objc_cls_ref_TTFShareImageHelper);
            r5 = loc_e09f9c();
            r1 = @selector(loadURL:completion:);
            loc_e09f98(r5, r1, r4, 0x0);
            loc_e09f94(r5);
            r0 = r4;
            Pop();
            Pop();
            Pop();
            Pop();
            r0 = loc_1be412c(r0, r1);
    }
    else {
            return;
    }
    return;
}

- (void)shareToFriends:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x8;
    r8 = self;
    loc_e09f98(r8, @selector(extraDict), arg2);
    r6 = loc_e09f9c();
    r10 = loc_e09f98(r6, @selector(mutableCopy));
    loc_e09f94(r6);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(showShareImageEnabled));
    loc_e09f94(r5);
    if (r6 != 0x0) {
            loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
            r4 = loc_e09f9c();
            loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/live_share", r4);
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f94(r4);
            loc_e09f98(r10, @selector(setObject:forKeyedSubscript:), r5, *0x20c663c);
            loc_e09f94(r5);
    }
    loc_e09f98(r8, @selector(view));
    r5 = loc_e09f9c();
    r1 = @selector(shareInSource:inView:params:isImageStyle:);
    asm{ strd       r10, r6, [sp] };
    loc_e09f98(TTFShareHelper, r1, *0x20c6618, r5);
    loc_e09f94(r5);
    r0 = r10;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)shareAction:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0xf0 - sp - 0x40;
    r8 = self;
    r6 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(r6, @selector(view));
    r7 = r7;
    r5 = loc_e09f9c();
    r4 = loc_e09f98(r5, @selector(tag));
    loc_e09f94(r5);
    arg_D4 = *__objc_personality_v0;
    r0 = *0xaaccf8;
    arg_D8 = 0x1f21afc;
    arg_DC = r7;
    arg_E4 = sp;
    arg_E0 = (r0 | 0x1) + 0xaac8be;
    sub_e09ff8();
    arg_40 = r6;
    if (r4 > 0x3) goto loc_aac8d6;
    goto loc_aac8ce;

loc_aac8d6:
    arg_3C = @"weixin_moments";
    loc_e09fa4(@"weixin_moments");
    r0 = 0x0;

loc_aac924:
    arg_30 = r0;
    arg_C0 = 0xffffffff;
    arg_48 = r8;
    arg_34 = @selector(extraDict);
    loc_e09f98(r8, @selector(extraDict));
    arg_C0 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_C0 = 0xffffffff;
    arg_38 = @selector(mutableCopy);
    r8 = loc_e09f98(r4, @selector(mutableCopy));
    loc_e09f94(r4);
    arg_C0 = 0xffffffff;
    arg_28 = @selector(sharedService);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    arg_C0 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_C0 = 0xffffffff;
    arg_2C = @selector(showShareImageEnabled);
    r5 = loc_e09f98(r4, @selector(showShareImageEnabled));
    loc_e09f94(r4);
    if (r5 != 0x0) {
            arg_C0 = 0xffffffff;
            loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
            arg_C0 = 0xffffffff;
            r5 = loc_e09f9c();
            arg_C0 = 0xffffffff;
            loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/live_share", r5);
            arg_C0 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f94(r5);
            arg_C0 = 0xffffffff;
            loc_e09f98(r8, @selector(setObject:forKeyedSubscript:), r4, *0x20c663c);
            loc_e09f94(r4);
    }
    arg_44 = r8;
    arg_A8 = 0x0;
    arg_AC = &arg_A8;
    arg_B0 = 0x20000000;
    arg_B4 = 0x14;
    arg_B8 = 0x1;
    arg_24 = TTFShareHelper;
    arg_C0 = 0x1;
    arg_18 = @selector(mainScreen);
    loc_e09f98(UIScreen, @selector(mainScreen), TTFShareHelper, objc_cls_ref_UIScreen);
    arg_C0 = 0xffffffff;
    r7 = r7;
    r1 = loc_e09f9c();
    arg_20 = r1;
    arg_10 = @selector(bounds);
    if (r1 != 0x0) {
            arg_C0 = 0x2;
            loc_e09fb0(&arg_78);
            r0 = arg_80;
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
            r0 = 0x0;
    }
    arg_1C = r0;
    arg_C0 = 0x3;
    loc_e09f98(UIScreen, arg_18);
    arg_C0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_14 = r0;
    if (r0 != 0x0) {
            arg_C0 = 0x4;
            loc_e09fb0(&arg_68);
            r0 = arg_74;
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
            r0 = 0x0;
    }
    arg_18 = r0;
    arg_C0 = 0x5;
    loc_e09f98(TTFantasyService, arg_28);
    arg_C0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_C0 = 0x6;
    arg_28 = r0;
    loc_e09f98();
    r2 = *0x20c6618;
    r1 = *_NSConcreteStackBlock;
    arg_2C = r1;
    arg_8C = r1;
    arg_90 = 0xc2000000;
    asm{ strd       r1, r5, [sp, #0x94] };
    arg_9C = 0x20c5db8;
    arg_A0 = &arg_A8;
    arg_A4 = arg_30;
    arg_C0 = 0x7;
    asm{ strd       r0, r3, [sp, #0x8] };
    arg_4 = arg_18;
    var_0 = arg_1C;
    arg_30 = r2;
    loc_e09f98(arg_24, @selector(shareMessageInSource:params:size:isImageStyle:completion:), r2, arg_44);
    loc_e09f94(arg_28);
    loc_e09f94(arg_14);
    loc_e09f94(arg_20);
    arg_C0 = 0x8;
    loc_e09f98(arg_48, arg_34);
    arg_C0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_C0 = 0x9;
    arg_34 = r0;
    arg_48 = loc_e09f98();
    loc_e09f94(arg_34);
    arg_C0 = 0xa;
    loc_e09f98(arg_48, @selector(setObject:forKeyedSubscript:), @"exposed", *0x20c6648);
    arg_4C = arg_2C;
    arg_50 = 0xc2000000;
    asm{ strd       r2, r0, [sp, #0x54] };
    arg_5C = 0x20c5dd0;
    r0 = loc_e09fa4(arg_3C, 0x20c5dd0, 0x0);
    arg_60 = r0;
    arg_3C = r0;
    arg_64 = &arg_A8;
    arg_C0 = 0xb;
    var_0 = &arg_4C;
    loc_e09f98(TTFShareHelper, @selector(trackInfoInSource:params:completion:), arg_30, arg_48);
    loc_e09f94(arg_60);
    loc_e09f94(arg_48);
    sub_e0a084(&arg_A8);
    loc_e09f94(arg_44);
    loc_e09f94(arg_3C);
    loc_e09f94(arg_40);
    r0 = loc_e09fec(&arg_BC);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;

loc_aac8ce:
    (*(int8_t *)(0xaac8d2 + r4))();
    goto loc_aac8d6;
}

- (void)help:(id)arg2 
{
    loc_e09f98(TTFHelpViewController, @selector(alloc), objc_cls_ref_TTFHelpViewController);
    r4 = loc_e09f98();
    loc_e09f98(self, @selector(viewModel));
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(currentActivity));
    r5 = loc_e09f9c();
    r2 = loc_e09f98(r5, @selector(activityId));
    loc_e09f98(r4, @selector(setActivity_id:), r2);
    loc_e09f94(r5);
    loc_e09f94(r6);
    loc_e09f98(self, @selector(navigationController));
    r5 = loc_e09f9c();
    r1 = @selector(pushViewController:animated:);
    loc_e09f98(r5, r1, r4, 0x1);
    loc_e09f94(r5);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)signUp:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x24;
    r8 = self;
    arg_1C = *0x20c664c;
    loc_e09f98(r8, @selector(viewModel), 0x233145c);
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(getActivityStatusStringForTracker));
    r4 = loc_e09f9c();
    var_0 = 0x1;
    arg_20 = r4;
    loc_e09f98(NSDictionary, @selector(dictionaryWithObjects:forKeys:count:), &arg_20, &arg_1C);
    r5 = loc_e09f9c();
    loc_e09f98(TTTracker, @selector(eventV3:params:), *0x20c7038, r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(r6);
    r10 = @selector(sharedService);
    loc_e09f98(TTFantasyService, r10);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(delegate));
    r7 = r7;
    r6 = loc_e09f9c();
    r5 = loc_e09f98(r6, @selector(isLogin));
    loc_e09f94(r6);
    r0 = loc_e09f94(r4);
    if (r5 == 0x0) {
            r0 = *objc_cls_ref_TTFantasyService;
            loc_e09f98(r0, r10);
            r5 = loc_e09f9c();
            loc_e09f98(r8, @selector(loginTrackerDicWithSection:), @"login_button");
            r4 = loc_e09f9c();
            r0 = *_NSConcreteStackBlock;
            arg_4 = r0;
            arg_8 = 0xc2000000;
            asm{ stm        r3!, {r0, r1, r2} };
            r0 = loc_e09fa4(r8, 0xaad361, 0x20c5de8, &arg_C);
            arg_18 = r0;
            var_0 = &arg_4;
            loc_e09f98(r5, @selector(loginFromViewController:trackerDic:completion:), r8, r4);
            loc_e09f94(r4);
            loc_e09f94(r5);
            r0 = loc_e09f94(arg_18);
    }
    Pop();
    Pop();
    Pop();
    return;
}

- (void)quizShowLiveRoomInitCompletedWithSuccess:(id)arg2 
{
    var_0 = @selector(resurrectionView);
    loc_e09f98(self, @selector(resurrectionView), arg2);
    r6 = loc_e09f9c();
    loc_e09f98(self, @selector(viewModel));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(curUser));
    r8 = loc_e09f9c();
    r2 = sign_extend_32(loc_e09f98(r8, @selector(lifesCanUse)));
    loc_e09f98(r6, @selector(setHasLife:), r2);
    loc_e09f94(r8);
    loc_e09f94(r5);
    loc_e09f94(r6);
    loc_e09f98(self, var_0);
    r6 = loc_e09f9c();
    loc_e09f98(self, @selector(viewModel));
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    r7 = &arg_C;
    r5 = loc_e09f9c();
    r2 = loc_e09f98(r5, @selector(lifes));
    r1 = @selector(setLifes:);
    loc_e09f98(r6, r1, r2);
    loc_e09f94(r5);
    loc_e09f94(r4);
    r0 = r6;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)quizShowLiveRoomUsersCountChange
{
    r0 = self;
    r1 = @selector(setCurUserCountAttributedString);
    r0 = loc_1be4138(r0, r1);
    return;
}

- (void)fetchedLivingStreamInfo:(id)arg2 
{
    r5 = self;
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(r5, @selector(playerIndicatorView));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(stopAnimating));
    loc_e09f94(r4);
    loc_e09f98(r5, @selector(playerIndicatorView));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setHidden:), 0x1);
    loc_e09f94(r4);
    loc_e09f98(r5, @selector(setIsFetchStreamInfoSuccess:), 0x1);
    loc_e09f98(r5, @selector(viewModel));
    r7 = &arg_C;
    r4 = loc_e09f9c();
    r1 = @selector(isActivityGetOn);
    r6 = loc_e09f98(r4, r1);
    loc_e09f94(r4);
    if (r6 != 0x0) {
            loc_e09f98(r5, @selector(player));
            r7 = r7;
            r4 = loc_e09f9c();
            r1 = @selector(playWithLiveStreamInfo:);
            loc_e09f98(r4, r1, r8);
            loc_e09f94(r4);
    }
    r0 = r8;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)didFailedFetchingLiveStreamInfo
{
    loc_e09f98(self, @selector(playerIndicatorView));
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(stopAnimating));
    loc_e09f94(r6);
    loc_e09f98(self, @selector(playerIndicatorView));
    r4 = loc_e09f9c();
    r1 = @selector(setHidden:);
    loc_e09f98(r4, r1, 0x1);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)quizShowActivityChangeToStatus:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0xa0 - sp - 0x40;
    r10 = self;
    r4 = arg2;
    arg_84 = *__objc_personality_v0;
    r0 = *0xaadfdc;
    arg_88 = 0x1f21b18;
    arg_8C = r7;
    arg_94 = sp;
    arg_90 = (r0 | 0x1) + 0xaad670;
    sub_e09ff8();
    if (r4 < 0x2) goto loc_aadf7c;
    goto loc_aad680;

loc_aadf7c:
    r0 = loc_e09fec(&arg_6C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;

loc_aad680:
    arg_14 = r4;
    arg_70 = 0xffffffff;
    loc_e09f98(r10, @selector(beginLiveTimeDate));
    arg_70 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f94();
    if (r4 == 0x0) {
            arg_70 = 0xffffffff;
            loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
            arg_70 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_70 = 0xffffffff;
            loc_e09f98(r10, @selector(setBeginLiveTimeDate:), r4);
            loc_e09f94(r4);
    }
    arg_70 = 0xffffffff;
    loc_e09f98(r10, @selector(beginWatchTimeDate));
    arg_70 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_18 = r10;
    if (r4 != 0x0) goto loc_aad816;
    goto loc_aad716;

loc_aad816:
    loc_e09f94(r4);

loc_aad81c:
    arg_70 = 0xffffffff;
    r4 = @selector(countdownView);
    loc_e09f98(r10, r4);
    arg_70 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    loc_e09f94();
    if (r5 != 0x0) {
            arg_70 = 0xffffffff;
            loc_e09f98(r10, r4);
            arg_70 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_70 = 0xffffffff;
            loc_e09f98(r4, @selector(removeFromSuperview));
            loc_e09f94(r4);
            arg_70 = 0xffffffff;
            loc_e09f98(r10, @selector(setCountdownView:), 0x0);
    }
    r8 = @selector(sharedService);
    arg_70 = 0xffffffff;
    loc_e09f98(TTFantasyService, r8);
    arg_70 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_70 = 0xffffffff;
    loc_e09f98(r4, @selector(delegate));
    arg_70 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_70 = 0xffffffff;
    r6 = loc_e09f98(r5, @selector(isLogin));
    loc_e09f94(r5);
    loc_e09f94(r4);
    r0 = r10;
    arg_70 = 0xffffffff;
    r10 = @selector(loginButton);
    loc_e09f98(r0, r10);
    arg_70 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_70 = 0xffffffff;
    r5 = loc_e09f98(r4, @selector(isHidden));
    if (r6 == 0x0) goto loc_aad97c;
    goto loc_aad94e;

loc_aad97c:
    loc_e09f94();
    if (r5 == 0x0) goto loc_aad9b6;
    goto loc_aad982;

loc_aad9b6:
    r11 = 0xffffffff;
    arg_70 = r11;
    r10 = arg_18;
    loc_e09f98(r10, @selector(_updateButtonStatus));
    arg_70 = r11;
    r6 = @selector(viewModel);
    loc_e09f98(r10, r6);
    arg_70 = r11;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_70 = r11;
    r5 = loc_e09f98(r4, @selector(isActivityGetOn));
    loc_e09f94(r4);
    if (r5 != 0x0) {
            r11 = 0xffffffff;
            arg_70 = r11;
            arg_10 = r6;
            loc_e09f98(r10, r6);
            arg_70 = r11;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_70 = r11;
            r5 = loc_e09f98(r4, @selector(isLiveRoomInitSuccess));
            loc_e09f94(r4);
            if (r5 == 0x0) {
                    arg_70 = 0xffffffff;
                    loc_e09f98(TTFantasyService, r8);
                    arg_70 = 0xffffffff;
                    r4 = loc_e09f9c();
                    arg_70 = 0xffffffff;
                    loc_e09f98(r4, @selector(settings));
                    arg_70 = 0xffffffff;
                    r5 = loc_e09f9c();
                    arg_70 = 0xffffffff;
                    loc_e09f98(r5, @selector(valueForKey:), @"should_not_request_init");
                    arg_70 = 0xffffffff;
                    r7 = r7;
                    r6 = loc_e09f9c();
                    loc_e09f94(r5);
                    loc_e09f94(r4);
                    arg_70 = 0xffffffff;
                    r2 = loc_e09f98(NSNumber, @selector(class), objc_cls_ref_NSNumber);
                    arg_70 = 0xffffffff;
                    if (loc_e09f98(r6, @selector(isKindOfClass:), r2) != 0x0) {
                            arg_70 = 0xffffffff;
                            if (loc_e09f98(r6, @selector(boolValue)) == 0x0) {
                                    arg_C = r6;
                                    sub_e09ff4(&arg_68, r10);
                                    arg_70 = 0x1;
                                    r0 = sub_e0a998(0x5);
                                    asm{ umull      r2, r3, r0, r1 };
                                    r4 = sub_e0a03c(0x0, 0x0);
                                    r0 = *_NSConcreteStackBlock;
                                    arg_50 = r0;
                                    asm{ strd       r0, r6, [sp, #0x54] };
                                    asm{ strd       r1, r2, [sp, #0x5c] };
                                    loc_e09ff0(&arg_50 + 0x14, &arg_68, 0x20c5e00);
                                    sub_e0a038(r4, 0x0, *_dispatch_main_q);
                                    sub_e09f90(&arg_50 + 0x14);
                                    sub_e09f90(&arg_68);
                                    r10 = arg_18;
                                    r11 = 0xffffffff;
                                    r6 = arg_C;
                            }
                    }
                    else {
                            arg_C = r6;
                            sub_e09ff4(&arg_68, r10);
                            arg_70 = 0x1;
                            r0 = sub_e0a998(0x5);
                            asm{ umull      r2, r3, r0, r1 };
                            r4 = sub_e0a03c(0x0, 0x0);
                            r0 = *_NSConcreteStackBlock;
                            arg_50 = r0;
                            asm{ strd       r0, r6, [sp, #0x54] };
                            asm{ strd       r1, r2, [sp, #0x5c] };
                            loc_e09ff0(&arg_50 + 0x14, &arg_68, 0x20c5e00);
                            sub_e0a038(r4, 0x0, *_dispatch_main_q);
                            sub_e09f90(&arg_50 + 0x14);
                            sub_e09f90(&arg_68);
                            r10 = arg_18;
                            r11 = 0xffffffff;
                            r6 = arg_C;
                    }
                    loc_e09f94(r6);
            }
            arg_70 = 0xffffffff;
            if (loc_e09f98(r10, @selector(isFetchStreamInfoSuccess)) != 0x0) {
                    r8 = @selector(setHidden:);
            }
            else {
                    arg_70 = 0xffffffff;
                    loc_e09f98(r10, @selector(playerIndicatorView));
                    arg_70 = 0xffffffff;
                    r5 = loc_e09f9c();
                    arg_70 = 0xffffffff;
                    loc_e09f98(r5, @selector(startAnimating));
                    loc_e09f94(r5);
                    arg_70 = 0xffffffff;
                    loc_e09f98(r10, @selector(playerIndicatorView));
                    arg_70 = 0xffffffff;
                    r5 = loc_e09f9c();
                    arg_70 = 0xffffffff;
                    r8 = @selector(setHidden:);
                    loc_e09f98(r5, r8, 0x0);
                    loc_e09f94(r5);
                    arg_70 = 0xffffffff;
                    loc_e09f98(r10, arg_10);
                    arg_70 = 0xffffffff;
                    r7 = r7;
                    r5 = loc_e09f9c();
                    arg_70 = 0xffffffff;
                    loc_e09f98(r5, @selector(getStreamInfo));
                    loc_e09f94(r5);
            }
            arg_70 = 0xffffffff;
            loc_e09f98(r10, @selector(logoLoopAnimationView));
            arg_70 = 0xffffffff;
            r5 = loc_e09f9c();
            arg_70 = 0xffffffff;
            loc_e09f98(r10, @selector(clearanceUsersView));
            arg_70 = 0xffffffff;
            r7 = r7;
            r6 = loc_e09f9c();
            arg_70 = 0xffffffff;
            asm{ it         ne };
            if (r6 != 0x0) {
            }
            loc_e09f98(r5, r8);
            loc_e09f94(r6);
            loc_e09f94(r5);
    }
    arg_70 = r11;
    loc_e09f98(r10, @selector(resurrectionView));
    arg_70 = r11;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_70 = r11;
    loc_e09f98(r4, @selector(shrinkTip));
    loc_e09f94(r4);
    if (arg_14 == 0x5) {
            arg_34 = 0x0;
            arg_38 = &arg_34;
            arg_3C = 0x32000000;
            asm{ strdne     r6, r0, [sp, #0x40] };
            asm{ strd       r2, r3, [sp, #0x48] };
            arg_70 = 0x2;
            arg_C = @selector(navigationController);
            loc_e09f98(r10, @selector(navigationController), 0xaae041, 0x0);
            arg_70 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_70 = 0x3;
            arg_14 = r0;
            loc_e09f98();
            arg_70 = 0xffffffff;
            r7 = r7;
            r6 = loc_e09f9c();
            r0 = *_NSConcreteStackBlock;
            arg_1C = r0;
            arg_20 = 0xc2000000;
            asm{ stm.w      r9, {r0, r1, r3} };
            arg_30 = &arg_34;
            arg_70 = 0x4;
            arg_10 = r6;
            loc_e09f98(r6, @selector(enumerateObjectsUsingBlock:), &arg_1C, 0x20c5e18);
            loc_e09f94(arg_10);
            loc_e09f94(arg_14);
            if (*(arg_38 + 0x18) != 0x0) {
                    arg_70 = 0x5;
                    loc_e09f98(arg_18, arg_C);
                    arg_70 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_70 = 0x6;
                    arg_18 = r0;
                    loc_e09f98();
                    arg_70 = 0xffffffff;
                    r7 = r7;
                    loc_e09f9c();
            }
            else {
                    arg_70 = 0x7;
                    loc_e09f98(arg_18, @selector(player));
                    arg_70 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_70 = 0x8;
                    arg_14 = r0;
                    loc_e09f98();
                    loc_e09f94(arg_14);
                    arg_70 = 0x9;
                    loc_e09f98(arg_18, @selector(liveTracker));
                    arg_70 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_70 = 0xa;
                    arg_14 = r0;
                    loc_e09f98();
                    loc_e09f94(arg_14);
                    arg_70 = 0xb;
                    arg_14 = @selector(videoEngine);
                    loc_e09f98(arg_18, @selector(videoEngine));
                    arg_70 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_70 = 0xc;
                    arg_10 = r0;
                    loc_e09f98();
                    loc_e09f94(arg_10);
                    arg_70 = 0xd;
                    asm{ ldrd       r1, r0, [sp, #0x14] };
                    loc_e09f98(0xd);
                    arg_70 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_70 = 0xe;
                    arg_18 = r0;
                    loc_e09f98();
                    arg_70 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_70 = 0xf;
                    arg_14 = r0;
                    loc_e09f98();
            }
            loc_e09f94();
            loc_e09f94(arg_18);
            sub_e0a084(&arg_34);
            loc_e09f94(arg_4C);
    }
    goto loc_aadf7c;

loc_aad982:
    arg_70 = 0xffffffff;
    loc_e09f98(arg_18, r10);
    arg_70 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_70 = 0xffffffff;
    r0 = 0x2330a84;

loc_aad9a8:
    loc_e09f98(r4, *r0);
    loc_e09f94(r4);
    goto loc_aad9b6;

loc_aad94e:
    loc_e09f94();
    if (r5 != 0x0) goto loc_aad9b6;
    arg_70 = 0xffffffff;
    loc_e09f98(arg_18, r10);
    arg_70 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    r0 = 0x2330a84;
    arg_70 = 0xffffffff;
    goto loc_aad9a8;

loc_aad716:
    arg_70 = 0xffffffff;
    r11 = @selector(viewModel);
    loc_e09f98(r10, r11);
    arg_70 = 0xffffffff;
    r8 = loc_e09f9c();
    arg_70 = 0xffffffff;
    r6 = @selector(authInfo);
    loc_e09f98(r8, r6);
    arg_70 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    r1 = r10;
    r10 = r0;
    if (r10 == 0x0) goto loc_aad7c6;
    goto loc_aad764;

loc_aad7c6:
    r10 = r1;
    loc_e09f94(r8);
    loc_e09f94(r4);

loc_aad7d4:
    arg_70 = 0xffffffff;
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    arg_70 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_70 = 0xffffffff;
    loc_e09f98(r10, @selector(setBeginWatchTimeDate:), r4);
    goto loc_aad816;

loc_aad764:
    arg_70 = 0xffffffff;
    loc_e09f98(r1, r11);
    arg_70 = 0xffffffff;
    r0 = loc_e09f9c();
    r11 = r0;
    arg_70 = 0xffffffff;
    loc_e09f98();
    arg_70 = 0xffffffff;
    r7 = r7;
    r6 = loc_e09f9c();
    arg_70 = 0xffffffff;
    r5 = loc_e09f98(r6, @selector(answerStatus));
    loc_e09f94(r6);
    loc_e09f94(r11);
    loc_e09f94(r10);
    loc_e09f94(r8);
    loc_e09f94(r4);
    r10 = arg_18;
    if (r5 != 0x0) goto loc_aad7d4;
    goto loc_aad81c;
}

- (void)quizShowFinishedWithViewModel:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x3 };
    sp = sp - 0x28;
    r10 = self;
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    r11 = @selector(clearanceUsersView);
    loc_e09f98(r10, r11);
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f94();
    if (r4 == 0x0) {
            loc_e09f98(r10, @selector(videoEngine));
            r6 = loc_e09f9c();
            arg_14 = @selector(play);
            loc_e09f98(r6, @selector(play));
            loc_e09f94(r6);
            loc_e09f98(r10, @selector(videoEngine));
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(playerView));
            r6 = loc_e09f9c();
            loc_e09f98(r6, @selector(setHidden:), 0x0);
            loc_e09f94(r6);
            loc_e09f94(r4);
            loc_e09f98(r8, @selector(ceremony));
            r7 = r7;
            r4 = loc_e09f9c();
            r6 = loc_e09f98(r4, @selector(winnerNumber));
            loc_e09f94(r4);
            if (r0 >= 0x0) {
                    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
                    r4 = loc_e09f9c();
                    loc_e09f98(r4, @selector(resourceBundle));
                    r5 = loc_e09f9c();
                    var_0 = @"animation";
                    loc_e09f98(r5, @selector(URLForResource:withExtension:subdirectory:), @"firework", @"json");
                    r7 = r7;
                    r6 = loc_e09f9c();
                    loc_e09f94(r5);
                    loc_e09f94(r4);
                    if (r6 != 0x0) {
                            arg_10 = r8;
                            loc_e09f98(LOTAnimationView, @selector(alloc), objc_cls_ref_LOTAnimationView);
                            arg_C = r6;
                            r4 = loc_e09f98();
                            loc_e09f98(r10, @selector(setFireworkAnimationView:), r4);
                            loc_e09f94(r4);
                            r5 = @selector(fireworkAnimationView);
                            loc_e09f98(r10, r5);
                            r4 = loc_e09f9c();
                            loc_e09f98(r4, @selector(setLoopAnimation:), 0x1);
                            loc_e09f94(r4);
                            loc_e09f98(r10, r5);
                            r4 = loc_e09f9c();
                            arg_8 = @selector(view);
                            loc_e09f98(r10, @selector(view));
                            r7 = r7;
                            r8 = loc_e09f9c();
                            if (r8 != 0x0) {
                                    loc_e09fb0(&arg_18, r8, @selector(bounds));
                                    asm{ ldm        r6, {r2, r3, r6} };
                            }
                            else {
                                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                                    asm{ vst1.64    {d16, d17}, [r0] };
                            }
                            asm{ strd       r6, r0, [sp] };
                            loc_e09f98(r4, @selector(setFrame:));
                            loc_e09f94(r8);
                            loc_e09f94(r4);
                            loc_e09f98(r10, r5);
                            r4 = loc_e09f9c();
                            loc_e09f98(r4, @selector(setContentMode:), 0x2);
                            loc_e09f94(r4);
                            loc_e09f98(r10, arg_8);
                            r4 = loc_e09f9c();
                            loc_e09f98(r10, r5);
                            r0 = loc_e09f9c();
                            r8 = r5;
                            r5 = r0;
                            loc_e09f98(r10, @selector(containerView));
                            r6 = loc_e09f9c();
                            loc_e09f98(r4, @selector(insertSubview:belowSubview:), r5, r6);
                            loc_e09f94(r6);
                            loc_e09f94(r5);
                            loc_e09f94(r4);
                            loc_e09f98(r10, r8);
                            r7 = r7;
                            r0 = loc_e09f9c();
                            r4 = r0;
                            loc_e09f98();
                            loc_e09f94(r4);
                            asm{ ldrd       r6, r8, [sp, #0xc] };
                    }
                    loc_e09f94(r6);
            }
            loc_e09f98(r10, r11);
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(superview));
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f94();
            loc_e09f94(r4);
            if (r5 == 0x0) {
                    loc_e09f98(TTFClearanceUsersView, @selector(alloc), objc_cls_ref_TTFClearanceUsersView);
                    asm{ strd       r5, r6, [sp] };
                    r4 = loc_e09f98();
                    loc_e09f98(r10, @selector(setClearanceUsersView:), r4);
                    loc_e09f94(r4);
                    loc_e09f98(r10, r11);
                    r4 = loc_e09f9c();
                    loc_e09f98(r4, @selector(setDelegate:), r10);
                    loc_e09f94(r4);
                    loc_e09f98(r10, r11);
                    r4 = loc_e09f9c();
                    loc_e09f98(r10, @selector(containerView));
                    r7 = r7;
                    r5 = loc_e09f9c();
                    loc_e09f98(r4, @selector(showWithViewModel:inView:), r8, r5);
                    loc_e09f94(r5);
                    loc_e09f94(r4);
            }
            loc_e09f98(TTFAudioServicesManager, @selector(sharedManager), objc_cls_ref_TTFAudioServicesManager);
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(playCeremony));
            loc_e09f94(r4);
    }
    r0 = loc_e09f94(r8);
    Pop();
    Pop();
    Pop();
    return;
}

- (void)quizShowSuccess
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0xd0 - sp - 0x40;
    r10 = self;
    r11 = @selector(viewModel);
    loc_e09f98(r10, r11);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(ceremony));
    r7 = r7;
    r5 = loc_e09f9c();
    loc_e09f94();
    loc_e09f94(r4);
    arg_B4 = *__objc_personality_v0;
    r0 = *0xaae8dc;
    arg_B8 = 0x1f21b3c;
    arg_BC = r7;
    arg_C4 = sp;
    arg_C0 = (r0 | 0x1) + 0xaae5ea;
    sub_e09ff8();
    if (r5 != 0x0) {
            arg_A0 = 0xffffffff;
            r8 = loc_e09f98(TTFAllQuestionSuccessView, @selector(alloc), objc_cls_ref_TTFAllQuestionSuccessView);
            arg_A0 = 0xffffffff;
            arg_18 = @selector(view);
            loc_e09f98(r10, @selector(view));
            arg_A0 = 0xffffffff;
            r7 = r7;
            r5 = loc_e09f9c();
            asm{ strd       r11, r6, [sp, #0x1c] };
            if (r5 != 0x0) {
                    arg_A0 = 0xffffffff;
                    loc_e09fb0(&arg_80, r5, @selector(bounds));
                    asm{ ldm        r6, {r2, r3, r6} };
            }
            else {
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            arg_A0 = 0xffffffff;
            asm{ strd       r6, r0, [sp] };
            r6 = loc_e09f98(r8, @selector(initWithFrame:));
            loc_e09f94(r5);
            arg_28 = r10;
            sub_e09ff4(&arg_7C, r10);
            r3 = *_NSConcreteStackBlock;
            arg_90 = &arg_64 + 0x14;
            arg_64 = r3;
            arg_68 = 0xc2000000;
            arg_24 = r3;
            asm{ strd       r1, r0, [sp, #0x6c] };
            arg_74 = 0x20c5e30;
            loc_e09ff0(arg_90, &arg_7C, 0x20c5e30, r3);
            r2 = sub_e0a058(&arg_64);
            arg_A0 = 0x1;
            arg_2C = r6;
            arg_14 = r2;
            loc_e09f98(r6, @selector(setTtf_getShareExtraParamsBlock:), r2);
            arg_A0 = 0x2;
            loc_e09f98(arg_28, arg_1C);
            arg_A0 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_A0 = 0x3;
            arg_1C = r0;
            loc_e09f98();
            arg_A0 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_A0 = 0x4;
            arg_20 = r0;
            loc_e09f98();
            asm{ strd       r1, r0, [sp, #0xc] };
            arg_A0 = 0x5;
            loc_e09f98(arg_28, arg_18);
            r5 = loc_e09fa4();
            arg_A0 = 0x6;
            asm{ ldrd       r1, r0, [sp, #0xc] };
            r0 = sub_e0a2c8();
            arg_28 = r5;
            loc_e09f98(arg_2C, @selector(showWithBonus:inView:), r0, r5);
            loc_e09f94(arg_28);
            loc_e09f94(arg_20);
            loc_e09f94(arg_1C);
            arg_94 = "tTtf_enterMyWalletBlock:";
            arg_48 = arg_24;
            arg_4C = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0x50] };
            arg_58 = 0x20c5e48;
            loc_e09ff0(arg_94, &arg_7C, 0x0);
            r0 = loc_e09fa4(arg_14);
            arg_28 = r0;
            arg_5C = r0;
            arg_A0 = 0x7;
            loc_e09f98(arg_2C, @selector(setTtf_inviteFriendsBlock:), &arg_48);
            arg_98 = 0x1cade30;
            arg_30 = arg_24;
            arg_34 = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0x38] };
            arg_40 = 0x20c5e60;
            loc_e09ff0(arg_98, &arg_7C, 0x0);
            arg_A0 = 0x8;
            loc_e09f98(arg_2C, @selector(setTtf_enterMyWalletBlock:), &arg_30);
            sub_e09f90(arg_98);
            loc_e09f94(arg_5C);
            sub_e09f90(arg_94);
            loc_e09f94(arg_28);
            sub_e09f90(arg_90);
            sub_e09f90(&arg_7C);
            loc_e09f94(arg_2C);
    }
    r0 = loc_e09fec(&arg_9C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)quizShowUsedLife
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x3 };
    sp = sp - 0x20;
    r10 = self;
    arg_C = @selector(resurrectionView);
    loc_e09f98(r10, @selector(resurrectionView));
    r6 = loc_e09f9c();
    loc_e09f98(r10, @selector(viewModel));
    r5 = loc_e09f9c();
    r11 = @selector(curUser);
    loc_e09f98(r5, r11);
    r8 = loc_e09f9c();
    r2 = sign_extend_32(loc_e09f98(r8, @selector(lifesCanUse)));
    loc_e09f98(r6, @selector(setHasLife:), r2);
    loc_e09f94(r8);
    loc_e09f94(r5);
    loc_e09f94(r6);
    loc_e09f98(r10, arg_C);
    r6 = loc_e09f9c();
    loc_e09f98(r10, @selector(viewModel));
    r0 = loc_e09f9c();
    r5 = r0;
    loc_e09f98();
    r4 = loc_e09f9c();
    r2 = loc_e09f98(r4, @selector(lifes));
    loc_e09f98(r6, @selector(setLifes:), r2);
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r6);
    r5 = loc_e09f98(TTFRebirthCardAnimationView, @selector(alloc), objc_cls_ref_TTFRebirthCardAnimationView);
    loc_e09f98(r10, @selector(view));
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 != 0x0) {
            loc_e09fb0(&arg_10, r6, @selector(bounds));
            asm{ ldm        r4, {r2, r3, r4} };
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    asm{ strd       r4, r0, [sp] };
    r8 = loc_e09f98(r5, @selector(initWithFrame:));
    loc_e09f94(r6);
    loc_e09f98(UIApplication, @selector(sharedApplication), objc_cls_ref_UIApplication);
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(delegate));
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(window));
    r4 = loc_e09f9c();
    loc_e09f98(r8, @selector(showRebirthCardInView:), r4);
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f94(r5);
    r0 = loc_e09f94(r8);
    Pop();
    Pop();
    Pop();
    return;
}

- (void)showShareTaskTipView
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0xe0 - sp - 0x40;
    r10 = self;
    r8 = loc_e09f98(TTFShareTaskTipView, @selector(alloc), objc_cls_ref_TTFShareTaskTipView);
    loc_e09f98(r10, @selector(view));
    r7 = r7;
    r6 = loc_e09f9c();
    arg_C4 = *__objc_personality_v0;
    r0 = *0xaaf9b4;
    arg_C8 = 0x1f21b50;
    arg_CC = r7;
    arg_D4 = sp;
    arg_D0 = (r0 | 0x1) + 0xaaf5e6;
    sub_e09ff8();
    if (r6 != 0x0) {
            arg_B0 = 0xffffffff;
            loc_e09fb0(&arg_90, r6, @selector(bounds));
            asm{ ldm        r5, {r2, r3, r5} };
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    arg_B0 = 0xffffffff;
    asm{ strd       r5, r0, [sp] };
    arg_10 = loc_e09f98(r8, @selector(initWithFrame:));
    loc_e09f94(r6);
    sub_e09ff4(&arg_8C, r10);
    arg_B0 = 0x1;
    loc_e09f98(r10, @selector(extraDict));
    arg_B0 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_B0 = 0x2;
    arg_14 = r0;
    arg_8 = loc_e09f98();
    loc_e09f94(arg_14);
    arg_B0 = 0x3;
    loc_e09f98(TTFantasyService, @selector(sharedService), 0x3);
    arg_B0 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_B0 = 0x4;
    arg_14 = r0;
    arg_C = loc_e09f98();
    loc_e09f94(arg_14);
    if (arg_C != 0x0) {
            arg_14 = NSString;
            arg_B0 = 0x5;
            loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
            arg_B0 = 0xffffffff;
            r3 = loc_e09f9c();
            arg_B0 = 0x6;
            arg_14 = r3;
            loc_e09f98(arg_14, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/live_share", r3);
            arg_B0 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f94(arg_14);
            r3 = *0x20c663c;
            arg_B0 = 0x7;
            arg_14 = r4;
            loc_e09f98(arg_8, @selector(setObject:forKeyedSubscript:), r4, r3);
            loc_e09f94(arg_14);
    }
    r0 = *_NSConcreteStackBlock;
    arg_14 = r0;
    arg_74 = r0;
    arg_78 = 0xc2000000;
    asm{ stm        r3!, {r0, r1, r2} };
    r0 = loc_e09fa4(arg_8, 0xaaf9b9, 0x20c5e78, &arg_7C);
    arg_8 = r0;
    arg_88 = r0;
    arg_B0 = 0x8;
    loc_e09f98(arg_10, @selector(setTtf_getShareExtraParamsBlock:), &arg_74);
    arg_A4 = &arg_50 + 0x1c;
    arg_50 = arg_14;
    arg_54 = 0xc2000000;
    asm{ strd       r2, r0, [sp, #0x58] };
    arg_60 = 0x20c5ec0;
    loc_e09ff0(arg_A4, &arg_8C, 0x0);
    r5 = loc_e09fa4(arg_10);
    arg_64 = r5;
    r0 = loc_e09fa4(arg_8);
    arg_10 = r0;
    arg_68 = r0;
    arg_70 = arg_C;
    arg_B0 = 0x9;
    arg_C = r5;
    loc_e09f98(r5, @selector(setTtf_inviteFriendsBlock:), &arg_50);
    arg_A8 = &arg_34 + 0x18;
    arg_34 = arg_14;
    arg_38 = 0xc2000000;
    asm{ strd       r2, r0, [sp, #0x3c] };
    arg_44 = 0x20c5ef0;
    loc_e09ff0(arg_A8, &arg_8C, 0x0);
    r0 = loc_e09fa4(arg_C);
    arg_48 = r0;
    arg_B0 = 0xa;
    arg_8 = r0;
    loc_e09f98();
    arg_C = arg_A4;
    r4 = sub_e0a03c(0x0, 0x0);
    r8 = &arg_18;
    arg_18 = arg_14;
    arg_1C = 0xc2000000;
    asm{ strd       r2, r0, [sp, #0x20] };
    arg_28 = 0x20c5f08;
    loc_e09ff0(r8 + 0x18, &arg_8C, 0x0);
    arg_2C = arg_8;
    r5 = loc_e09fa4(arg_8);
    sub_e0a038(r4, 0x0, *_dispatch_main_q);
    loc_e09f94(arg_2C);
    sub_e09f90(r8 + 0x18);
    loc_e09f94(arg_48);
    sub_e09f90(arg_A8);
    loc_e09f94(arg_68);
    loc_e09f94(arg_64);
    sub_e09f90(arg_C);
    loc_e09f94(arg_88);
    loc_e09f94(r5);
    loc_e09f94(arg_10);
    sub_e09f90(&arg_8C);
    r0 = loc_e09fec(&arg_AC);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)showQuestionWithQuestionAnswerUnit:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x3 };
    sp = sp - 0x38;
    r4 = loc_e09fa4(arg2, _cmd, arg2);
    arg_24 = r4;
    arg_10 = self;
    arg_C = @selector(questionAnswerView);
    loc_e09f98(self, @selector(questionAnswerView));
    arg_20 = loc_e09f9c();
    loc_e09f98();
    arg_1C = loc_e09f9c();
    r8 = @selector(question);
    loc_e09f98();
    r10 = loc_e09f9c();
    r11 = @selector(questionId);
    loc_e09f98(r10, r11);
    asm{ strd       r1, r0, [sp, #0x14] };
    loc_e09f98(r4, r8);
    r7 = r7;
    r5 = loc_e09f9c();
    r4 = loc_e09f98();
    loc_e09f94(r5);
    loc_e09f94(r10);
    loc_e09f94(arg_1C);
    loc_e09f94(arg_20);
    if ((arg_14 ^ r11 | arg_18 ^ r4) != 0x0) {
            r10 = arg_10;
            r6 = arg_C;
            loc_e09f98(r10, r6);
            r7 = r7;
            r4 = loc_e09f9c();
            r5 = loc_e09f98(r4, @selector(isQAViewShow));
            loc_e09f94(r4);
            if (r5 != 0x0) {
                    loc_e09f98(r10, r6);
                    r7 = r7;
                    r4 = loc_e09f9c();
                    loc_e09f98(r4, @selector(hideWithAnimated:), 0x0);
                    loc_e09f94(r4);
            }
            r8 = r6;
            loc_e09f98(r10, r6);
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(removeFromSuperview));
            loc_e09f94(r4);
            r4 = @selector(setQuestionAnswerView:);
            loc_e09f98(r10, r4, 0x0);
            r11 = loc_e09f98(TTFQuestionAnswerView, @selector(alloc), objc_cls_ref_TTFQuestionAnswerView);
            loc_e09f98(r10, @selector(view));
            r7 = r7;
            r6 = loc_e09f9c();
            if (r6 != 0x0) {
                    loc_e09fb0(&arg_28, r6, @selector(bounds));
                    asm{ ldm        r5, {r2, r3, r5} };
            }
            else {
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            asm{ strd       r5, r0, [sp] };
            r5 = loc_e09f98(r11, @selector(initWithFrame:));
            loc_e09f98(r10, r4, r5);
            loc_e09f94(r5);
            loc_e09f94(r6);
            loc_e09f98(r10, r8);
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(setDelegate:), r10);
            loc_e09f94(r4);
            loc_e09f98(r10, @selector(containerView));
            r4 = loc_e09f9c();
            loc_e09f98(r10, r8);
            r5 = loc_e09f9c();
            loc_e09f98(r10, @selector(closeButton));
            r6 = loc_e09f9c();
            loc_e09f98(r4, @selector(insertSubview:belowSubview:), r5, r6);
            loc_e09f94(r6);
            loc_e09f94(r5);
            loc_e09f94(r4);
            loc_e09f98(r10, r8);
            r4 = loc_e09f9c();
            loc_e09f98(r10, @selector(player));
            r5 = loc_e09f9c();
            loc_e09f98(r4, @selector(setPlayer:), r5);
            loc_e09f94(r5);
            loc_e09f94(r4);
            loc_e09f98(r10, r8);
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(showQuestionWithQuestionAnswerUnit:), arg_24);
            loc_e09f94(r4);
            loc_e09f98(r10, @selector(videoEngine));
            r5 = loc_e09f9c();
            loc_e09f98(r5, @selector(play));
            loc_e09f94(r5);
            loc_e09f98(r10, @selector(videoEngine));
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(playerView));
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f98(r5, @selector(setHidden:), 0x0);
            loc_e09f94(r5);
            loc_e09f94(r4);
    }
    r0 = loc_e09f94(arg_24);
    Pop();
    Pop();
    Pop();
    return;
}

- (void)showAnswerWithQuestionAnswerUnit:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0xc0 - sp - 0x40;
    arg_24 = self;
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    arg_14 = @selector(alloc);
    loc_e09f98(_TTFQuestionAnswerUserCountModel, @selector(alloc), objc_cls_ref__TTFQuestionAnswerUserCountModel);
    r6 = loc_e09f98();
    loc_e09f98(r8, @selector(answer));
    r4 = loc_e09f9c();
    r2 = loc_e09f98(r4, @selector(questionId));
    arg_18 = r6;
    loc_e09f98(r6, @selector(setQuestionNumber:), r2, @selector(questionId));
    loc_e09f94(r4);
    arg_70 = 0x0;
    arg_74 = &arg_70;
    arg_78 = 0x20000000;
    arg_84 = 0x0;
    asm{ strd       r2, r0, [sp, #0x7c] };
    arg_58 = 0x0;
    arg_5C = &arg_58;
    arg_60 = 0x20000000;
    arg_6C = 0x0;
    asm{ strd       r2, r0, [sp, #0x64] };
    r0 = *0xab0d74;
    arg_A4 = *__objc_personality_v0;
    arg_A8 = 0x1f21b78;
    arg_AC = r7;
    arg_B4 = sp;
    arg_B0 = (r0 | 0x1) + 0xab06fe;
    arg_90 = 0x1;
    sub_e09ff8();
    arg_1C = r8;
    arg_10 = @selector(answer);
    loc_e09f98(r8, @selector(answer));
    arg_90 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_90 = 0x2;
    arg_20 = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_20);
    if (r4 != 0x0) {
            arg_90 = 0x3;
            loc_e09f98(arg_1C, arg_10);
            arg_90 = 0xffffffff;
            r0 = loc_e09f9c();
            arg_90 = 0x4;
            arg_20 = r0;
            loc_e09f98();
            arg_90 = 0xffffffff;
            r7 = r7;
            r6 = loc_e09f9c();
            r0 = *_NSConcreteStackBlock;
            arg_3C = r0;
            arg_40 = 0xc2000000;
            asm{ stm.w      r9, {r0, r1, r2} };
            arg_50 = &arg_70;
            arg_54 = &arg_58;
            arg_90 = 0x5;
            arg_10 = r6;
            loc_e09f98(r6, @selector(enumerateObjectsUsingBlock:), &arg_3C, 0x23322f4);
            loc_e09f94(arg_10);
            loc_e09f94(arg_20);
    }
    r2 = *(arg_74 + 0x10);
    r3 = *(arg_74 + 0x14);
    arg_90 = 0x6;
    loc_e09f98(arg_18, @selector(setAnswerUserCount:), r2, r3);
    r2 = *(arg_5C + 0x10);
    r3 = *(arg_5C + 0x14);
    arg_90 = 0x7;
    loc_e09f98(arg_18, @selector(setAnswerCorrectUserCount:), r2, r3);
    arg_90 = 0x8;
    loc_e09f98(arg_24, @selector(curQuestionAnswerUserCountSet));
    arg_90 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_90 = 0x9;
    arg_20 = r0;
    loc_e09f98();
    loc_e09f94(arg_20);
    arg_90 = 0xa;
    arg_20 = @selector(questionAnswerView);
    loc_e09f98(arg_24, @selector(questionAnswerView));
    arg_90 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_90 = 0xb;
    arg_10 = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_10);
    if (r4 != 0x0) {
            arg_90 = 0xc;
            asm{ ldrd       r1, r0, [sp, #0x20] };
            loc_e09f98(0xc);
            arg_90 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_90 = 0xd;
            arg_10 = r0;
            loc_e09f98();
            loc_e09f94(arg_10);
    }
    arg_90 = 0xe;
    asm{ ldrd       r1, r0, [sp, #0x20] };
    loc_e09f98(0xe);
    arg_90 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_90 = 0xf;
    arg_10 = r0;
    loc_e09f98();
    loc_e09f94(arg_10);
    arg_90 = 0x10;
    arg_10 = @selector(setQuestionAnswerView:);
    loc_e09f98(arg_24, @selector(setQuestionAnswerView:), 0x0);
    arg_90 = 0x11;
    arg_14 = loc_e09f98(TTFQuestionAnswerView, arg_14);
    arg_90 = 0x12;
    loc_e09f98(arg_24, @selector(view));
    arg_90 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_C = r0;
    if (r0 != 0x0) {
            arg_90 = 0x13;
            loc_e09fb0(&arg_28);
            asm{ ldm.w      r9, {r2, r3, r4, r9} };
    }
    else {
            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
            asm{ vst1.64    {d16, d17}, [r0] };
    }
    arg_90 = 0x14;
    asm{ strd       r4, r9, [sp] };
    r0 = loc_e09f98(arg_14, @selector(initWithFrame:));
    arg_90 = 0x15;
    arg_14 = r0;
    loc_e09f98(arg_24, arg_10, arg_14);
    loc_e09f94(arg_14);
    loc_e09f94(arg_C);
    arg_90 = 0x16;
    asm{ ldrd       r1, r0, [sp, #0x20] };
    loc_e09f98(0x16);
    arg_90 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_90 = 0x17;
    arg_14 = r0;
    loc_e09f98();
    loc_e09f94(arg_14);
    arg_90 = 0x18;
    loc_e09f98(arg_24, @selector(containerView));
    arg_90 = 0xffffffff;
    arg_14 = loc_e09f9c();
    arg_90 = 0x19;
    asm{ ldrd       r1, r0, [sp, #0x20] };
    loc_e09f98(0x19);
    arg_90 = 0xffffffff;
    arg_10 = loc_e09f9c();
    arg_90 = 0x1a;
    loc_e09f98(arg_24, @selector(closeButton));
    arg_90 = 0xffffffff;
    r3 = loc_e09f9c();
    arg_90 = 0x1b;
    asm{ ldrd       r2, r0, [sp, #0x10] };
    arg_C = r3;
    loc_e09f98(0x1b, @selector(insertSubview:belowSubview:));
    loc_e09f94(arg_C);
    loc_e09f94(arg_10);
    loc_e09f94(arg_14);
    arg_90 = 0x1c;
    asm{ ldrd       r1, r0, [sp, #0x20] };
    loc_e09f98(0x1c);
    arg_90 = 0xffffffff;
    arg_14 = loc_e09f9c();
    arg_90 = 0x1d;
    loc_e09f98(arg_24, @selector(player));
    arg_90 = 0xffffffff;
    r2 = loc_e09f9c();
    arg_90 = 0x1e;
    arg_10 = r2;
    loc_e09f98(arg_14, @selector(setPlayer:), r2);
    loc_e09f94(arg_10);
    loc_e09f94(arg_14);
    arg_90 = 0x1f;
    asm{ ldrd       r1, r0, [sp, #0x20] };
    loc_e09f98(0x1f);
    arg_90 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_90 = 0x20;
    arg_20 = r0;
    loc_e09f98();
    loc_e09f94(arg_20);
    arg_90 = 0x21;
    arg_20 = @selector(videoEngine);
    loc_e09f98(arg_24, @selector(videoEngine));
    arg_90 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_90 = 0x22;
    arg_14 = r0;
    loc_e09f98();
    loc_e09f94(arg_14);
    arg_90 = 0x23;
    asm{ ldrd       r1, r0, [sp, #0x20] };
    loc_e09f98(0x23);
    arg_90 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_90 = 0x24;
    arg_24 = r0;
    loc_e09f98();
    arg_90 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_90 = 0x25;
    arg_20 = r0;
    loc_e09f98();
    loc_e09f94(arg_20);
    loc_e09f94(arg_24);
    arg_90 = 0x26;
    arg_24 = @selector(userAnswerResult);
    if (loc_e09f98(arg_1C, @selector(userAnswerResult)) != 0x3) {
            arg_90 = 0x27;
            if (loc_e09f98(arg_1C, arg_24) == 0x2) {
                    arg_90 = 0x28;
                    arg_20 = @selector(standardUserDefaults);
                    loc_e09f98(NSUserDefaults, @selector(standardUserDefaults), 0x28);
                    arg_90 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_90 = 0x29;
                    r2 = *0x20c517c;
                    arg_24 = r0;
                    arg_14 = r2;
                    r4 = loc_e09f98();
                    loc_e09f94(arg_24);
                    if (r4 == 0x0) {
                            arg_90 = 0x2a;
                            loc_e09f98(NSUserDefaults, arg_20);
                            arg_90 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_90 = 0x2b;
                            arg_24 = r0;
                            loc_e09f98();
                            loc_e09f94(arg_24);
                            arg_90 = 0x2c;
                            loc_e09f98(NSUserDefaults, arg_20);
                            arg_90 = 0xffffffff;
                            r7 = r7;
                            r0 = loc_e09f9c();
                            arg_90 = 0x2d;
                            arg_24 = r0;
                            loc_e09f98();
                            loc_e09f94(arg_24);
                    }
            }
    }
    else {
            arg_90 = 0x28;
            arg_20 = @selector(standardUserDefaults);
            loc_e09f98(NSUserDefaults, @selector(standardUserDefaults), 0x28);
            arg_90 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_90 = 0x29;
            r2 = *0x20c517c;
            arg_24 = r0;
            arg_14 = r2;
            r4 = loc_e09f98();
            loc_e09f94(arg_24);
            if (r4 == 0x0) {
                    arg_90 = 0x2a;
                    loc_e09f98(NSUserDefaults, arg_20);
                    arg_90 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_90 = 0x2b;
                    arg_24 = r0;
                    loc_e09f98();
                    loc_e09f94(arg_24);
                    arg_90 = 0x2c;
                    loc_e09f98(NSUserDefaults, arg_20);
                    arg_90 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_90 = 0x2d;
                    arg_24 = r0;
                    loc_e09f98();
                    loc_e09f94(arg_24);
            }
    }
    sub_e0a084(&arg_58);
    sub_e0a084(&arg_70);
    loc_e09f94(arg_18);
    loc_e09f94(arg_1C);
    r0 = loc_e09fec(&arg_8C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)didFailedWithQuestionAnswerUnit:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x1b0 - sp - 0x40;
    arg_28 = loc_e09fa4(arg2, _cmd, arg2);
    arg_160 = 0x0;
    arg_164 = &arg_160;
    arg_168 = 0x32000000;
    asm{ stm.w      r9, {r1, r2, r3, r6} };
    arg_144 = 0x0;
    asm{ strd       r4, r0, [sp, #0x148] };
    asm{ stm        r0!, {r1, r2, r3, r6} };
    sub_e09ff4(&arg_140, self);
    arg_194 = *__objc_personality_v0;
    r0 = *0xab157c;
    arg_198 = 0x1f21bd8;
    arg_19C = r7;
    arg_1A4 = sp;
    arg_1A0 = (r0 | 0x1) + 0xab0ec4;
    arg_180 = 0x1;
    sub_e09ff8();
    arg_24 = self;
    loc_e09f98(self, @selector(curQuestionAnswerUserCountSet));
    arg_180 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    r0 = *_NSConcreteStackBlock;
    arg_20 = r0;
    arg_120 = r0;
    arg_124 = 0xc2000000;
    asm{ stm        r3!, {r0, r1, r2} };
    arg_138 = &arg_160;
    r0 = loc_e09fa4(arg_28, 0xab1581, 0x20c5f38, &arg_128);
    arg_28 = r0;
    arg_134 = r0;
    arg_13C = &arg_144;
    arg_180 = 0x2;
    arg_1C = r4;
    arg_14 = @selector(enumerateObjectsUsingBlock:);
    loc_e09f98(r4, @selector(enumerateObjectsUsingBlock:), &arg_120);
    loc_e09f94(arg_1C);
    r0 = *(arg_164 + 0x18);
    arg_180 = 0x3;
    loc_e09f98(r0, @selector(answerUserCount), 0x3);
    asm{ strd       r1, r0, [sp, #0x18] };
    r0 = *(arg_148 + 0x18);
    arg_180 = 0x4;
    r0 = loc_e09f98(r0, @selector(answerCorrectUserCount), 0x4);
    arg_180 = 0x5;
    r0 = arg_1C - r0;
    arg_1C = r0;
    arg_18 = arg_18 - @selector(answerCorrectUserCount) + !CARRY(FLAGS);
    if ((sub_e0a998(0x2) == 0x0) || (*(arg_164 + 0x18) == 0x0)) {
            arg_CC = 0x0;
            arg_D0 = &arg_CC;
            arg_D4 = 0x20000000;
            arg_D8 = 0x14;
            arg_DC = 0xffffffff;
            arg_B0 = 0x0;
            arg_B4 = &arg_B0;
            arg_B8 = 0x32000000;
            arg_BC = 0x1c;
            arg_C0 = 0xaae037;
            asm{ strd       r3, r1, [sp, #0xc4] };
            arg_98 = 0x0;
            asm{ strd       r3, r2, [sp, #0x9c] };
            arg_AC = 0x0;
            asm{ strd       r2, r1, [sp, #0xa4] };
            arg_180 = 0xb;
            arg_18 = @selector(userChoosenOptions);
            loc_e09f98(arg_28, @selector(userChoosenOptions), 0x18, &arg_98);
            arg_180 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_180 = 0xc;
            arg_1C = r0;
            r4 = loc_e09f98();
            loc_e09f94(arg_1C);
            if (r4 != 0x0) {
                    arg_180 = 0xd;
                    loc_e09f98(arg_28, arg_18);
                    arg_180 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_180 = 0xe;
                    arg_10 = r0;
                    loc_e09f98();
                    arg_180 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_180 = 0xf;
                    arg_C = r0;
                    loc_e09f98();
                    asm{ strd       r1, r0, [sp, #0x18] };
                    loc_e09f94(arg_C);
                    loc_e09f94(arg_10);
                    arg_180 = 0x10;
                    loc_e09f98(arg_28, @selector(answer));
                    arg_180 = 0xffffffff;
                    r0 = loc_e09f9c();
                    arg_180 = 0x11;
                    arg_10 = r0;
                    loc_e09f98();
                    arg_180 = 0xffffffff;
                    r7 = r7;
                    r3 = loc_e09f9c();
                    arg_68 = arg_20;
                    arg_6C = 0xc2000000;
                    asm{ strd       r2, r0, [sp, #0x70] };
                    arg_78 = 0x20c5f68;
                    arg_7C = &arg_98;
                    arg_8C = &arg_B0;
                    arg_84 = arg_18;
                    arg_80 = arg_1C;
                    arg_90 = &arg_CC;
                    arg_180 = 0x12;
                    arg_1C = r3;
                    loc_e09f98(r3, arg_14, &arg_68, r3);
                    loc_e09f94(arg_1C);
                    loc_e09f94(arg_10);
            }
            arg_180 = 0x13;
            arg_1C = loc_e09f98(TTFEliminateView, @selector(alloc), 0x13);
            arg_180 = 0x14;
            loc_e09f98(arg_24, @selector(view));
            arg_180 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_18 = r0;
            if (r0 != 0x0) {
                    arg_180 = 0x15;
                    loc_e09fb0(&arg_58);
                    asm{ ldm        r6, {r2, r3, r6} };
            }
            else {
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            arg_180 = 0x16;
            asm{ strd       r6, r0, [sp] };
            r4 = loc_e09f98(arg_1C, @selector(initWithFrame:));
            loc_e09f94(arg_18);
            arg_180 = 0x17;
            arg_1C = r4;
            loc_e09f98(r4, @selector(setDelegate:), arg_24);
            r10 = sub_e0a03c(0x0, 0x0);
            r8 = &arg_2C;
            arg_2C = arg_20;
            asm{ strd       r2, r4, [sp, #0x30] };
            asm{ strd       r0, r1, [sp, #0x38] };
            loc_e09ff0(r8 + 0x28, &arg_140, 0xc2000000);
            arg_40 = arg_1C;
            r5 = loc_e09fa4(arg_1C);
            r0 = loc_e09fa4(arg_28);
            arg_44 = r0;
            arg_48 = &arg_98;
            r2 = *_dispatch_main_q;
            arg_4C = &arg_B0;
            r11 = &arg_CC;
            arg_50 = r11;
            sub_e0a038(r10, 0x0, r2);
            loc_e09f94(arg_44);
            loc_e09f94(arg_40);
            loc_e09f94(r5);
            sub_e09f90(r8 + 0x28);
            sub_e0a084(&arg_98);
            sub_e0a084(&arg_B0);
            loc_e09f94(arg_C8);
            sub_e0a084(r11);
    }
    else {
            if ((arg_18 < 0x0 + !CARRY(arg_1C - 0x1)) || (*(arg_148 + 0x18) == 0x0)) {
                    arg_CC = 0x0;
                    arg_D0 = &arg_CC;
                    arg_D4 = 0x20000000;
                    arg_D8 = 0x14;
                    arg_DC = 0xffffffff;
                    arg_B0 = 0x0;
                    arg_B4 = &arg_B0;
                    arg_B8 = 0x32000000;
                    arg_BC = 0x1c;
                    arg_C0 = 0xaae037;
                    asm{ strd       r3, r1, [sp, #0xc4] };
                    arg_98 = 0x0;
                    asm{ strd       r3, r2, [sp, #0x9c] };
                    arg_AC = 0x0;
                    asm{ strd       r2, r1, [sp, #0xa4] };
                    arg_180 = 0xb;
                    arg_18 = @selector(userChoosenOptions);
                    loc_e09f98(arg_28, @selector(userChoosenOptions), 0x18, &arg_98);
                    arg_180 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_180 = 0xc;
                    arg_1C = r0;
                    r4 = loc_e09f98();
                    loc_e09f94(arg_1C);
                    if (r4 != 0x0) {
                            arg_180 = 0xd;
                            loc_e09f98(arg_28, arg_18);
                            arg_180 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_180 = 0xe;
                            arg_10 = r0;
                            loc_e09f98();
                            arg_180 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_180 = 0xf;
                            arg_C = r0;
                            loc_e09f98();
                            asm{ strd       r1, r0, [sp, #0x18] };
                            loc_e09f94(arg_C);
                            loc_e09f94(arg_10);
                            arg_180 = 0x10;
                            loc_e09f98(arg_28, @selector(answer));
                            arg_180 = 0xffffffff;
                            r0 = loc_e09f9c();
                            arg_180 = 0x11;
                            arg_10 = r0;
                            loc_e09f98();
                            arg_180 = 0xffffffff;
                            r7 = r7;
                            r3 = loc_e09f9c();
                            arg_68 = arg_20;
                            arg_6C = 0xc2000000;
                            asm{ strd       r2, r0, [sp, #0x70] };
                            arg_78 = 0x20c5f68;
                            arg_7C = &arg_98;
                            arg_8C = &arg_B0;
                            arg_84 = arg_18;
                            arg_80 = arg_1C;
                            arg_90 = &arg_CC;
                            arg_180 = 0x12;
                            arg_1C = r3;
                            loc_e09f98(r3, arg_14, &arg_68, r3);
                            loc_e09f94(arg_1C);
                            loc_e09f94(arg_10);
                    }
                    arg_180 = 0x13;
                    arg_1C = loc_e09f98(TTFEliminateView, @selector(alloc), 0x13);
                    arg_180 = 0x14;
                    loc_e09f98(arg_24, @selector(view));
                    arg_180 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_18 = r0;
                    if (r0 != 0x0) {
                            arg_180 = 0x15;
                            loc_e09fb0(&arg_58);
                            asm{ ldm        r6, {r2, r3, r6} };
                    }
                    else {
                            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                            asm{ vst1.64    {d16, d17}, [r0] };
                    }
                    arg_180 = 0x16;
                    asm{ strd       r6, r0, [sp] };
                    r4 = loc_e09f98(arg_1C, @selector(initWithFrame:));
                    loc_e09f94(arg_18);
                    arg_180 = 0x17;
                    arg_1C = r4;
                    loc_e09f98(r4, @selector(setDelegate:), arg_24);
                    r10 = sub_e0a03c(0x0, 0x0);
                    r8 = &arg_2C;
                    arg_2C = arg_20;
                    asm{ strd       r2, r4, [sp, #0x30] };
                    asm{ strd       r0, r1, [sp, #0x38] };
                    loc_e09ff0(r8 + 0x28, &arg_140, 0xc2000000);
                    arg_40 = arg_1C;
                    r5 = loc_e09fa4(arg_1C);
                    r0 = loc_e09fa4(arg_28);
                    arg_44 = r0;
                    arg_48 = &arg_98;
                    r2 = *_dispatch_main_q;
                    arg_4C = &arg_B0;
                    r11 = &arg_CC;
                    arg_50 = r11;
                    sub_e0a038(r10, 0x0, r2);
                    loc_e09f94(arg_44);
                    loc_e09f94(arg_40);
                    loc_e09f94(r5);
                    sub_e09f90(r8 + 0x28);
                    sub_e0a084(&arg_98);
                    sub_e0a084(&arg_B0);
                    loc_e09f94(arg_C8);
                    sub_e0a084(r11);
            }
            else {
                    arg_180 = 0x6;
                    arg_14 = loc_e09f98(TTFEliminateDefeatView, @selector(alloc), 0x6);
                    arg_180 = 0x7;
                    loc_e09f98(arg_24, @selector(view));
                    arg_180 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_10 = r0;
                    if (r0 != 0x0) {
                            arg_180 = 0x8;
                            loc_e09fb0(&arg_110);
                            asm{ ldm        r6, {r2, r3, r6} };
                    }
                    else {
                            asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                            asm{ vst1.64    {d16, d17}, [r0] };
                    }
                    arg_180 = 0x9;
                    asm{ strd       r6, r4, [sp] };
                    r4 = loc_e09f98(arg_14, @selector(initWithFrame:));
                    loc_e09f94(arg_10);
                    arg_180 = 0xa;
                    arg_14 = r4;
                    loc_e09f98(r4, @selector(setDelegate:), arg_24);
                    r10 = sub_e0a03c(0x0, 0x0);
                    r8 = &arg_E0;
                    arg_E0 = arg_20;
                    asm{ strd       r2, r4, [sp, #0xe4] };
                    asm{ strd       r0, r1, [sp, #0xec] };
                    loc_e09ff0(r8 + 0x28, &arg_140, 0xc2000000);
                    arg_F4 = arg_14;
                    arg_FC = arg_18;
                    arg_F8 = arg_1C;
                    r5 = loc_e09fa4(arg_14);
                    r0 = loc_e09fa4(arg_28);
                    arg_104 = r0;
                    sub_e0a038(r10, 0x0, *_dispatch_main_q);
                    loc_e09f94(arg_104);
                    loc_e09f94(arg_F4);
                    loc_e09f94(r5);
                    sub_e09f90(r8 + 0x28);
            }
    }
    arg_180 = 0x18;
    loc_e09f98(NSDate, @selector(date), 0x18);
    arg_180 = 0xffffffff;
    r2 = loc_e09f9c();
    arg_180 = 0x19;
    arg_20 = r2;
    loc_e09f98(arg_24, @selector(setBeginWatchTimeDate:), r2);
    loc_e09f94(arg_20);
    arg_180 = 0x1a;
    loc_e09f98(arg_28, @selector(question));
    arg_180 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_180 = 0x1b;
    arg_20 = r0;
    r2 = loc_e09f98();
    arg_180 = 0x1c;
    loc_e09f98(arg_24, @selector(setItemNum:), r2, @selector(questionId));
    loc_e09f94(arg_20);
    loc_e09f94(arg_134);
    sub_e09f90(&arg_140);
    sub_e0a084(&arg_144);
    loc_e09f94(arg_15C);
    sub_e0a084(&arg_160);
    loc_e09f94(arg_178);
    loc_e09f94(arg_28);
    r0 = loc_e09fec(&arg_17C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)networkFailedWithQuestionAnswerUnit:(id)arg2 
{
    r1 = @selector(showIndicatorText:animated:hideAfterDelay:);
    var_4 = 0x40100000;
    var_0 = 0x0;
    loc_e09f98(TTFIndicatorView, r1, cfstring_Q___Ee____T_Hh_c_N1Y__, 0x1, lr, r7);
    r7 = sp;
    r0 = loc_e09f9c();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)missedQuestionWithUnit:(id)arg2 
{
    arg_4 = 0x40100000;
    var_0 = 0x0;
    loc_e09f98(TTFIndicatorView, @selector(showIndicatorText:animated:hideAfterDelay:), cfstring__O_vQ____Yba______T____N_, 0x1, lr, r7, r4);
    loc_e09f9c();
    loc_e09f94();
    loc_e09f98(self, @selector(resurrectionView));
    r7 = &arg_4;
    r4 = loc_e09f9c();
    r1 = @selector(setHasLife:);
    loc_e09f98(r4, r1, 0x0);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)questionAnswerViewDidHidden:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x3 };
    sp = sp - 0x28;
    r4 = self;
    r6 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(r4, @selector(questionAnswerView));
    r7 = r7;
    r5 = loc_e09f9c();
    loc_e09f94(r6);
    r0 = loc_e09f94(r5);
    if (r5 == r6) {
            arg_10 = @selector(player);
            loc_e09f98(r4, @selector(player));
            r11 = loc_e09f9c();
            arg_14 = @selector(playerView);
            loc_e09f98(r11, @selector(playerView));
            r5 = loc_e09f9c();
            r10 = @selector(view);
            loc_e09f98(r4, r10);
            r7 = r7;
            r8 = loc_e09f9c();
            if (r8 != 0x0) {
                    loc_e09fb0(&arg_18, r8, @selector(bounds));
                    asm{ ldm        r6, {r2, r3, r6} };
            }
            else {
                    asm{ vmov.i32   q8, #0x0 } << 0x10 | 0x0;
                    asm{ vst1.64    {d16, d17}, [r0] };
            }
            asm{ strd       r6, r0, [sp] };
            loc_e09f98(r5, @selector(setFrame:));
            loc_e09f94(r8);
            loc_e09f94(r5);
            loc_e09f94(r11);
            loc_e09f98(r4, r10);
            arg_C = loc_e09f9c();
            loc_e09f98(r4, arg_10);
            r11 = loc_e09f9c();
            loc_e09f98();
            r8 = loc_e09f9c();
            arg_10 = @selector(videoEngine);
            loc_e09f98(r4, @selector(videoEngine));
            r0 = loc_e09f9c();
            r6 = r0;
            loc_e09f98();
            r7 = r7;
            r10 = loc_e09f9c();
            loc_e09f98(arg_C, @selector(insertSubview:belowSubview:), r8, r10);
            loc_e09f94(r10);
            loc_e09f94(r6);
            loc_e09f94(r8);
            loc_e09f94(r11);
            loc_e09f94(arg_C);
            r0 = loc_e09f98(r4, @selector(needHideVideoEnginePlayerView));
            if (r0 != 0x0) {
                    loc_e09f98(r4, arg_10);
                    r5 = loc_e09f9c();
                    loc_e09f98(r5, @selector(pause));
                    loc_e09f94(r5);
                    loc_e09f98(r4, arg_10);
                    r0 = loc_e09f9c();
                    r4 = r0;
                    loc_e09f98();
                    r7 = r7;
                    r5 = loc_e09f9c();
                    loc_e09f98(r5, @selector(setHidden:), 0x1);
                    loc_e09f94(r5);
                    r0 = loc_e09f94(r4);
            }
    }
    Pop();
    Pop();
    Pop();
    return;
}

- (void)player:(id)arg2 willPlayURL:(id)arg3 
{
    r6 = loc_e09fa4(arg3, _cmd, arg2, arg3, lr, r7, r6, r5, r4);
    loc_e09f98(self, @selector(liveTracker));
    r4 = loc_e09f9c();
    r1 = @selector(willPlayUrl:);
    loc_e09f98(r4, r1, r6);
    loc_e09f94(r6);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)playerRenderStart:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x70 - sp - 0x40;
    r11 = self;
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    r4 = loc_e09f98(r11, @selector(needHideVideoEnginePlayerView));
    arg_54 = *__objc_personality_v0;
    r0 = *0xab2000;
    arg_58 = 0x1f21c14;
    arg_5C = r7;
    arg_64 = sp;
    arg_60 = (r0 | 0x1) + 0xab1c9a;
    sub_e09ff8();
    if (r4 != 0x0) {
            r6 = 0xffffffff;
            arg_40 = r6;
            if (loc_e09f98(r11, @selector(isPlayRemoteVideo)) != 0x0) {
                    r6 = 0xffffffff;
                    r4 = @selector(mainLoader);
                    arg_40 = r6;
                    loc_e09f98(TTFResourceLoader, r4);
                    arg_40 = r6;
                    r5 = loc_e09f9c();
                    arg_40 = r6;
                    loc_e09f98(r5, @selector(videoWithName:), @"background.mp4");
                    arg_40 = r6;
                    r7 = r7;
                    r1 = loc_e09f9c();
                    r0 = r5;
                    r5 = r1;
                    loc_e09f94(r0, r1);
                    arg_18 = r8;
                    if (r5 != 0x0) {
                            r10 = 0xffffffff;
                            arg_40 = r10;
                            loc_e09f98(r11, @selector(videoEngine));
                            arg_40 = r10;
                            r4 = loc_e09f9c();
                            arg_40 = r10;
                            loc_e09f98(r5, @selector(absoluteString));
                            arg_40 = r10;
                            r7 = r7;
                            r0 = loc_e09f9c();
                            r8 = r5;
                            r5 = r0;
                            arg_40 = r10;
                            loc_e09f98(r4, @selector(setLocalURL:), r5);
                            loc_e09f94(r5);
                            loc_e09f94(r4);
                    }
                    else {
                            r10 = objc_cls_ref_TTFResourceLoader;
                            arg_10 = r5;
                            arg_14 = r11;
                            sub_e09ff4(&arg_34, r11);
                            r0 = *r10;
                            arg_40 = 0x1;
                            loc_e09f98(r0, r4);
                            arg_38 = &arg_1C + 0x14;
                            r5 = loc_e09fa4();
                            r0 = *_NSConcreteStackBlock;
                            arg_1C = r0;
                            arg_20 = 0xc2000000;
                            asm{ stm        r3!, {r0, r1, r2} };
                            loc_e09ff0(arg_38, &arg_34, 0x20c5f98, &arg_24);
                            arg_40 = 0x2;
                            arg_C = r5;
                            loc_e09f98(r5, @selector(loadVideoWithName:completion:), @"background.mp4", &arg_1C);
                            loc_e09f94(arg_C);
                            sub_e09f90(arg_38);
                            sub_e09f90(&arg_34);
                            r11 = arg_14;
                            r6 = 0xffffffff;
                            r8 = arg_10;
                    }
                    arg_40 = 0xffffffff;
                    loc_e09f98(r11, @selector(setIsPlayRemoteVideo:), 0x0);
                    arg_40 = 0xffffffff;
                    loc_e09f98(r11, @selector(videoEngineMaskView));
                    arg_40 = 0xffffffff;
                    r7 = r7;
                    r4 = loc_e09f9c();
                    arg_40 = 0xffffffff;
                    loc_e09f98(r4, @selector(removeFromSuperview));
                    loc_e09f94(r4);
                    arg_40 = 0xffffffff;
                    loc_e09f98(r11, @selector(setVideoEngineMaskView:), 0x0);
                    arg_40 = 0xffffffff;
                    loc_e09f98(TTFQuizShowLiveRoomWarmupVideoHelper, @selector(clearAllProgressCache), objc_cls_ref_TTFQuizShowLiveRoomWarmupVideoHelper);
                    loc_e09f94(r8);
                    r8 = arg_18;
            }
            arg_40 = r6;
            loc_e09f98(r11, @selector(videoEngine));
            arg_40 = r6;
            r5 = loc_e09f9c();
            arg_40 = r6;
            loc_e09f98(r5, @selector(pause));
            loc_e09f94(r5);
            arg_40 = r6;
            loc_e09f98(r11, @selector(videoEngine));
            arg_40 = r6;
            r4 = loc_e09f9c();
            arg_40 = r6;
            loc_e09f98(r4, @selector(playerView));
            arg_40 = r6;
            r5 = loc_e09f9c();
            arg_40 = r6;
            loc_e09f98(r5, @selector(setHidden:), 0x1);
            loc_e09f94(r5);
            loc_e09f94(r4);
            arg_40 = r6;
            loc_e09f98(r11, @selector(_updateButtonStatus));
            arg_40 = r6;
            loc_e09f98(r11, @selector(liveTracker));
            arg_40 = r6;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_40 = r6;
            loc_e09f98(r4, @selector(showFirstFrame));
            loc_e09f94(r4);
    }
    loc_e09f94(r8);
    r0 = loc_e09fec(&arg_3C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)videoEngineDidFinish:(id)arg2 error:(id)arg3 
{
    STK33 = r5;
    STK35 = r7;
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x70 - sp - 0x40;
    r5 = self;
    r10 = loc_e09fa4(arg2, _cmd, arg2, arg3, r11, r10, r8, lr, STK35, r6, STK33, r4);
    r11 = loc_e09fa4(arg3);
    arg_54 = *__objc_personality_v0;
    r0 = *0xab23b8;
    arg_58 = 0x1f21c1c;
    arg_5C = r7;
    arg_64 = sp;
    arg_60 = (r0 | 0x1) + 0xab20ec;
    sub_e09ff8();
    if (r11 != 0x0) {
            arg_40 = 0xffffffff;
            if (loc_e09f98(r5, @selector(isPlayRemoteVideo)) != 0x0) {
                    arg_18 = r5;
                    r4 = @selector(mainLoader);
                    arg_40 = 0xffffffff;
                    loc_e09f98(TTFResourceLoader, r4);
                    arg_40 = 0xffffffff;
                    r5 = loc_e09f9c();
                    arg_40 = 0xffffffff;
                    loc_e09f98(r5, @selector(videoWithName:), @"background.mp4");
                    arg_40 = 0xffffffff;
                    r7 = r7;
                    r6 = loc_e09f9c();
                    loc_e09f94(r5);
                    asm{ strd       r6, r10, [sp, #0x10] };
                    if (r6 != 0x0) {
                            arg_40 = 0xffffffff;
                            loc_e09f98(arg_18, @selector(videoEngine));
                            arg_40 = 0xffffffff;
                            r5 = loc_e09f9c();
                            arg_40 = 0xffffffff;
                            loc_e09f98(r6, @selector(absoluteString));
                            arg_40 = 0xffffffff;
                            r6 = loc_e09f9c();
                            arg_40 = 0xffffffff;
                            loc_e09f98(r5, @selector(setLocalURL:), r6);
                            loc_e09f94(r6);
                            loc_e09f94(r5);
                            arg_40 = 0xffffffff;
                            loc_e09f98(arg_18, @selector(videoEngine));
                            arg_40 = 0xffffffff;
                            r7 = r7;
                            r4 = loc_e09f9c();
                            arg_40 = 0xffffffff;
                            r6 = arg_18;
                            r8 = arg_10;
                            r10 = arg_14;
                            loc_e09f98(r4, @selector(play));
                            loc_e09f94(r4);
                    }
                    else {
                            r8 = objc_cls_ref_TTFResourceLoader;
                            arg_C = r11;
                            sub_e09ff4(&arg_34, arg_18);
                            r0 = *r8;
                            arg_40 = 0x1;
                            loc_e09f98(r0, r4);
                            arg_38 = &arg_1C + 0x14;
                            r5 = loc_e09fa4();
                            r0 = *_NSConcreteStackBlock;
                            arg_1C = r0;
                            arg_20 = 0xc2000000;
                            asm{ stm        r3!, {r0, r1, r2} };
                            loc_e09ff0(arg_38, &arg_34, 0x20c5fb0, &arg_24);
                            arg_40 = 0x2;
                            arg_8 = r5;
                            loc_e09f98(r5, @selector(loadVideoWithName:completion:), @"background.mp4", &arg_1C);
                            loc_e09f94(arg_8);
                            sub_e09f90(arg_38);
                            sub_e09f90(&arg_34);
                            asm{ ldrd       r10, r6, [sp, #0x14] };
                            asm{ ldrd       r11, r8, [sp, #0xc] };
                    }
                    arg_40 = 0xffffffff;
                    loc_e09f98(r6, @selector(setIsPlayRemoteVideo:), 0x0);
                    arg_40 = 0xffffffff;
                    loc_e09f98(r6, @selector(videoEngineMaskView));
                    arg_40 = 0xffffffff;
                    r7 = r7;
                    r4 = loc_e09f9c();
                    arg_40 = 0xffffffff;
                    loc_e09f98(r4, @selector(removeFromSuperview));
                    loc_e09f94(r4);
                    arg_40 = 0xffffffff;
                    loc_e09f98(r6, @selector(setVideoEngineMaskView:), 0x0);
                    arg_40 = 0xffffffff;
                    loc_e09f98(TTFQuizShowLiveRoomWarmupVideoHelper, @selector(clearAllProgressCache), objc_cls_ref_TTFQuizShowLiveRoomWarmupVideoHelper);
                    loc_e09f94(r8);
            }
    }
    loc_e09f94(r11);
    loc_e09f94(r10);
    r0 = loc_e09fec(&arg_3C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)player:(id)arg2 loadStateChanged:(id)arg3 
{
    r1 = _cmd;
    STK33 = r5;
    STK34 = r6;
    STK35 = r7;
    r7 = &arg_C;
    r5 = self;
    r6 = arg3;
    r4 = loc_e09fa4(arg2, r1, arg2, arg3, lr, STK35, STK34, STK33, r4);
    if (r6 >= 0x3) goto loc_ab2506;
    goto loc_ab24e0;

loc_ab2506:
    if (r6 != 0x0) goto loc_ab253a;
    goto loc_ab2508;

loc_ab253a:
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;

loc_ab2508:
    loc_e09f98(r5, @selector(liveTracker));
    r7 = r7;
    r5 = loc_e09f9c();
    r0 = 0x2345a68;

loc_ab252c:
    r1 = *r0;
    loc_e09f98(r5, r1);
    loc_e09f94(r5);
    goto loc_ab253a;

loc_ab24e0:
    loc_e09f98(r5, @selector(liveTracker));
    r7 = r7;
    r5 = loc_e09f9c();
    r0 = 0x2345a6c;
    goto loc_ab252c;
}

- (void)player:(id)arg2 recieveError:(id)arg3 
{
    r6 = loc_e09fa4(arg3, _cmd, arg2, arg3, lr, r7, r6, r5, r4);
    loc_e09f98(self, @selector(liveTracker));
    r4 = loc_e09f9c();
    r1 = @selector(didReceivedError:);
    loc_e09f98(r4, r1, r6);
    loc_e09f94(r6);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)clearanceUsersViewEnterTopWinnerListViewController:(id)arg2 
{
    loc_e09f98(TTFTopListViewController, @selector(alloc), objc_cls_ref_TTFTopListViewController);
    r4 = loc_e09f98();
    loc_e09f98(self, @selector(viewModel));
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(currentActivity));
    r5 = loc_e09f9c();
    r2 = loc_e09f98(r5, @selector(activityId));
    loc_e09f98(r4, @selector(setActivity_id:), r2);
    loc_e09f94(r5);
    loc_e09f94(r6);
    loc_e09f98(self, @selector(navigationController));
    r5 = loc_e09f9c();
    r1 = @selector(pushViewController:animated:);
    loc_e09f98(r5, r1, r4, 0x1);
    loc_e09f94(r5);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)clearanceUsersViewTriggerShareAction:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x90 - sp - 0x40;
    arg_1C = loc_e09fa4(arg2, _cmd, arg2);
    arg_10 = self;
    sub_e09ff4(&arg_54, self);
    r3 = *_NSConcreteStackBlock;
    arg_58 = &arg_3C + 0x14;
    arg_3C = r3;
    arg_40 = 0xc2000000;
    arg_C = r3;
    asm{ strd       r1, r0, [sp, #0x44] };
    arg_4C = 0x20c5fc8;
    loc_e09ff0(arg_58, &arg_54, 0x20c5fc8, r3);
    arg_20 = sub_e0a058(&arg_3C);
    r0 = *__objc_personality_v0;
    arg_74 = r0;
    r0 = *0xab2884;
    arg_78 = 0x1f21c24;
    arg_7C = r7;
    arg_84 = sp;
    arg_80 = (r0 | 0x1) + 0xab2726;
    arg_60 = 0x1;
    sub_e09ff8();
    arg_8 = @selector(sharedService);
    loc_e09f98(TTFantasyService, @selector(sharedService));
    arg_60 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_60 = 0x2;
    arg_18 = r0;
    loc_e09f98();
    arg_60 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_60 = 0x3;
    arg_14 = r0;
    r4 = loc_e09f98();
    loc_e09f94(arg_14);
    loc_e09f94(arg_18);
    if (r4 != 0x0) {
            if (arg_20 != 0x0) {
                    r1 = *(arg_20 + 0xc);
                    arg_60 = 0x6;
                    (r1)(arg_20, r1, 0x6);
            }
    }
    else {
            arg_60 = 0x4;
            loc_e09f98(TTFantasyService, arg_8);
            r4 = loc_e09fa4();
            arg_24 = arg_C;
            arg_28 = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0x2c] };
            arg_34 = 0x20c5fe0;
            r0 = loc_e09fa4(arg_20, 0x20c5fe0, 0x0);
            arg_38 = r0;
            arg_60 = 0x5;
            var_0 = &arg_24;
            arg_18 = r4;
            loc_e09f98(r4, @selector(loginFromViewController:trackerDic:completion:), arg_10, 0x0);
            loc_e09f94(arg_18);
            loc_e09f94(arg_38);
    }
    loc_e09f94(arg_20);
    sub_e09f90(arg_58);
    sub_e09f90(&arg_54);
    loc_e09f94(arg_1C);
    r0 = loc_e09fec(&arg_5C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)clearanceUsersViewTriggerSignUpNextActivityAction:(id)arg2 signUpTriggerBlock:(id)arg3 
{
    STK35 = r7;
    r7 = &arg_C;
    sp = sp - 0x20;
    arg_4 = self;
    r10 = loc_e09fa4(arg3, _cmd, arg2, arg3, r11, r10, r8, lr, STK35, r6, r5, r4);
    r11 = @selector(sharedService);
    loc_e09f98(TTFantasyService, r11);
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(delegate));
    r7 = r7;
    r4 = loc_e09f9c();
    r1 = @selector(isLogin);
    r6 = loc_e09f98(r4, r1);
    loc_e09f94(r4);
    loc_e09f94(r5);
    if (r6 != 0x0) {
            asm{ ittt       ne };
            if (r10 != 0x0) {
                    r1 = *(r10 + 0xc);
            }
            if (CPU_FLAGS & E) {
            }
            if (CPU_FLAGS & E) {
                    (r1)();
            }
    }
    else {
            r0 = *objc_cls_ref_TTFantasyService;
            loc_e09f98(r0, r11);
            r4 = loc_e09f9c();
            r0 = *_NSConcreteStackBlock;
            arg_8 = r0;
            arg_C = 0xc2000000;
            asm{ stmne      r3!, {r0, r1, r2} };
            r0 = loc_e09fa4(r10, 0xab2b33, 0x20c5ff8, &arg_10);
            arg_1C = r0;
            var_0 = &arg_8;
            loc_e09f98(r4, @selector(loginFromViewController:trackerDic:completion:), arg_4, 0x0);
            loc_e09f94(r4);
            loc_e09f94(arg_1C);
    }
    r0 = loc_e09f94(r10);
    Pop();
    Pop();
    Pop();
    return;
}

- (void)clearanceUsersViewDidHide:(id)arg2 
{
    r0 = self;
    if (CPU_FLAGS & E) {
                Push(r4);
                Push(r5);
                Push(r6);
                Push(r7);
                Push(lr);
    }
    if (CPU_FLAGS & E) {
            r7 = &arg_C;
    }
    r4 = r0;
    loc_e09f98(r4, @selector(setClearanceUsersView:), 0x0);
    if (loc_e09f98(r4, @selector(needHideVideoEnginePlayerView)) != 0x0) {
            loc_e09f98(r4, @selector(videoEngine));
            r6 = loc_e09f9c();
            loc_e09f98(r6, @selector(pause));
            loc_e09f94(r6);
            loc_e09f98(r4, @selector(videoEngine));
            r6 = loc_e09f9c();
            loc_e09f98(r6, @selector(playerView));
            r7 = r7;
            r5 = loc_e09f9c();
            r8 = @selector(setHidden:);
            loc_e09f98(r5, r8, 0x1);
            loc_e09f94(r5);
            loc_e09f94(r6);
    }
    else {
            r8 = @selector(setHidden:);
    }
    loc_e09f98(r4, @selector(fireworkAnimationView));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(removeFromSuperview));
    loc_e09f94(r5);
    loc_e09f98(r4, @selector(setFireworkAnimationView:), 0x0);
    loc_e09f98(TTFAudioServicesManager, @selector(sharedManager), objc_cls_ref_TTFAudioServicesManager);
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(stopAllAudio));
    loc_e09f94(r5);
    loc_e09f98(r4, @selector(logoLoopAnimationView));
    r0 = loc_e09f9c();
    r1 = r8;
    r4 = r0;
    loc_e09f98();
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)resurrectShare
{
    r7 = &arg_C;
    sp = sp - 0xc;
    r11 = self;
    r10 = @selector(sharedService);
    loc_e09f98(TTFantasyService, r10);
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(delegate));
    r7 = r7;
    r4 = loc_e09f9c();
    r6 = loc_e09f98(r4, @selector(isLogin));
    loc_e09f94(r4);
    loc_e09f94(r5);
    if (r6 != 0x0) {
            arg_8 = r11;
            loc_e09f98(r11, @selector(extraDict));
            r4 = loc_e09f9c();
            r11 = loc_e09f98(r4, @selector(mutableCopy));
            loc_e09f94(r4);
            r0 = *objc_cls_ref_TTFantasyService;
            loc_e09f98(r0, r10);
            r7 = r7;
            r4 = loc_e09f9c();
            r6 = loc_e09f98(r4, @selector(showShareImageEnabled));
            loc_e09f94(r4);
            if (r6 != 0x0) {
                    loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
                    r5 = loc_e09f9c();
                    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/live_fuhuo", r5);
                    r7 = r7;
                    r4 = loc_e09f9c();
                    loc_e09f94(r5);
                    loc_e09f98(r11, @selector(setObject:forKeyedSubscript:), r4, *0x20c663c);
                    loc_e09f94(r4);
            }
            r4 = TTFShareHelper;
            loc_e09f98(arg_8, @selector(view));
            r7 = r7;
            r5 = loc_e09f9c();
            r1 = @selector(shareInSource:inView:params:isImageStyle:);
            asm{ strd       r11, r6, [sp] };
            loc_e09f98(r4, r1, *0x20c6614, r5);
            loc_e09f94(r5);
            r0 = r11;
    }
    else {
            r0 = *objc_cls_ref_TTFantasyService;
            loc_e09f98(r0, r10);
            r5 = loc_e09f9c();
            loc_e09f98(r11, @selector(loginTrackerDicWithSection:), @"click_lifecard");
            r7 = r7;
            r4 = loc_e09f9c();
            r1 = @selector(loginFromViewController:trackerDic:completion:);
            var_0 = 0x0;
            loc_e09f98(r5, r1, r11, r4);
            loc_e09f94(r4);
            r0 = r5;
    }
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (id)eliminateDefeatViewGetShareExtraParams:(id)arg2 defeatCount:(id)arg3 withQuestionAnswerUnit:(id)arg4 
{
    STK34 = r6;
    STK35 = r7;
    r7 = &arg_C;
    STK37 = r8;
    sp = sp - 0x28;
    r8 = *(r7 + 0xc);
    r6 = arg3;
    arg_14 = loc_e09fa4(r8, _cmd, arg2, arg3, r11, r10, STK37, lr, STK35, STK34, r5, r4);
    loc_e09f98(self, @selector(extraDict));
    r7 = r7;
    r4 = loc_e09f9c();
    arg_24 = loc_e09f98(r4, @selector(mutableCopy));
    loc_e09f94(r4);
    r3 = *(r7 + 0x8);
    asm{ strd       r3, r6, [sp, #0x18] };
    if (r0 < 0x0) goto loc_ab2f9c;
    goto loc_ab2f52;

loc_ab2f9c:
    if (r0 < 0x0) goto loc_ab2ff6;
    goto loc_ab2fac;

loc_ab2ff6:
    if (r0 < 0x0) goto loc_ab3050;
    goto loc_ab3006;

loc_ab3050:
    if (r0 < 0x0) goto loc_ab329e;
    goto loc_ab305e;

loc_ab329e:
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), r6);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(stringValue));
    r7 = r7;
    r6 = loc_e09f9c();
    arg_20 = @selector(setObject:forKeyedSubscript:);
    loc_e09f98(arg_24, @selector(setObject:forKeyedSubscript:), r6, @"beat_num");
    loc_e09f94(r6);
    loc_e09f94(r4);
    arg_10 = @selector(stringWithFormat:);

loc_ab30d2:
    loc_e09f98(r8, @selector(question));
    r4 = loc_e09f9c();
    arg_8 = @selector(questionId);
    r2 = loc_e09f98(r4, @selector(questionId));
    arg_C = @selector(numberWithLongLong:);
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), r2, @selector(questionId));
    r0 = loc_e09f9c();
    r6 = r8;
    r8 = r0;
    arg_4 = @selector(stringValue);
    loc_e09f98(r8, @selector(stringValue));
    r11 = loc_e09f9c();
    loc_e09f98(arg_24, arg_20, r11, @"qnum");
    loc_e09f94(r11);
    loc_e09f94(r8);
    loc_e09f94(r4);
    r4 = loc_e09f98(r6, @selector(question));
    loc_e09f94(arg_14);
    r4 = loc_e09f9c(r4);
    r2 = 0xd - loc_e09f98();
    loc_e09f98(NSNumber, arg_C, r2, 0x0 - arg_8 + !CARRY(FLAGS));
    r0 = loc_e09f9c();
    r5 = r0;
    loc_e09f98();
    r6 = loc_e09f9c();
    loc_e09f98(arg_24, arg_20, r6, @"last_num");
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
    r4 = loc_e09f9c();
    asm{ ldrd       r3, r2, [sp, #0x18] };
    loc_e09f98(NSNumber, arg_C);
    r6 = loc_e09f9c();
    var_0 = r6;
    loc_e09f98(NSString, arg_10, @"https://%@/h/1/cli/pic/wrongbeat?beat_num=%@", r4);
    r5 = loc_e09f9c();
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f98(arg_24, arg_20, r5, *0x20c663c);
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(arg_24, arg_20);
    return r0;

loc_ab305e:
    r0 = sub_e0a2c8();
    r0 << 0x10 | r0;
    asm{ vdiv.f32   s0, s2, s0 };
    r1 = *0x23308a0;
    asm{ vcvt.f64.f32 d16, s0 };
    var_0 = d16 >> 0x10;
    arg_10 = r1;
    loc_e09f98(NSString, r1, cfstring__, d16 & 0xffff);
    r7 = r7;

loc_ab30a6:
    r4 = loc_e09f9c();
    arg_20 = @selector(setObject:forKeyedSubscript:);
    loc_e09f98(arg_24, @selector(setObject:forKeyedSubscript:), r4, @"beat_num");
    loc_e09f94(r4);
    goto loc_ab30d2;

loc_ab3006:
    r0 = sub_e0a2c8();
    r0 << 0x10 | r0;
    asm{ vdiv.f32   s0, s2, s0 };
    r1 = *0x23308a0;
    asm{ vcvt.f64.f32 d16, s0 };
    var_0 = d16 >> 0x10;
    arg_10 = r1;
    loc_e09f98(NSString, r1, cfstring__, d16 & 0xffff);
    r7 = r7;
    goto loc_ab30a6;

loc_ab2fac:
    r0 = sub_e0a2c8();
    r0 << 0x10 | r0;
    asm{ vdiv.f32   s0, s2, s0 };
    r1 = *0x23308a0;
    asm{ vcvt.f64.f32 d16, s0 };
    var_0 = d16 >> 0x10;
    arg_10 = r1;
    loc_e09f98(NSString, r1, cfstring__, d16 & 0xffff);
    r7 = r7;
    goto loc_ab30a6;

loc_ab2f52:
    r0 = sub_e0a2c8();
    r0 << 0x10 | r0;
    asm{ vdiv.f32   s0, s2, s0 };
    r1 = *0x23308a0;
    asm{ vcvt.f64.f32 d16, s0 };
    var_0 = d16 >> 0x10;
    arg_10 = r1;
    loc_e09f98(NSString, r1, cfstring__, d16 & 0xffff);
    r7 = r7;
    goto loc_ab30a6;
}

- (void)shareRecordOfEliminateDefeatView:(id)arg2 defeatCount:(id)arg3 questionAnswerUnit:(id)arg4 
{
    r8 = loc_e09fa4(arg2, _cmd, arg2, arg3, r11, r10, r8, lr, r7, r6, r5, r4);
    r5 = loc_e09fa4(*(&arg_C + 0xc), objc_cls_ref_TTFantasyService);
    loc_e09f98(TTFantasyService, @selector(sharedService));
    r6 = loc_e09f9c();
    arg_8 = loc_e09f98(r6, @selector(showShareImageEnabled));
    loc_e09f94(r6);
    asm{ strd       r0, r5, [sp] };
    r6 = loc_e09f98(self, @selector(eliminateDefeatViewGetShareExtraParams:defeatCount:withQuestionAnswerUnit:), r8, arg3);
    loc_e09f94(r5);
    loc_e09f94(r8);
    r5 = loc_e09f9c(r6);
    loc_e09f98(self, @selector(view));
    r7 = &arg_C;
    r4 = loc_e09f9c();
    r1 = @selector(shareInSource:inView:params:isImageStyle:);
    r2 = *0x20c662c;
    asm{ strd       r5, r0, [sp] };
    loc_e09f98(TTFShareHelper, r1, r2, r4);
    loc_e09f94(r4);
    r0 = r5;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)shareQuestionOfEliminateView:(id)arg2 withQuestionAnswerUnit:(id)arg3 
{
    r11 = loc_e09fa4(arg2, _cmd, arg2, arg3, r11, r10, r8, lr, r7, r6, r5, r4);
    r5 = loc_e09fa4(arg3, objc_cls_ref_TTFantasyService);
    loc_e09f98(TTFantasyService, @selector(sharedService));
    r4 = loc_e09f9c();
    r8 = loc_e09f98(r4, @selector(showShareImageEnabled));
    loc_e09f94(r4);
    r4 = loc_e09f98(self, @selector(eliminateViewGetShareExtraParams:withQuestionAnswerUnit:), r11, r5);
    loc_e09f94(r5);
    loc_e09f94(r11);
    r5 = loc_e09f9c(r4);
    loc_e09f98(self, @selector(view));
    r7 = &arg_C;
    r6 = loc_e09f9c();
    r1 = @selector(shareInSource:inView:params:isImageStyle:);
    asm{ strd       r5, r8, [sp] };
    loc_e09f98(TTFShareHelper, r1, *0x20c6628, r6);
    loc_e09f94(r6);
    r0 = r5;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (id)eliminateViewGetShareExtraParams:(id)arg2 withQuestionAnswerUnit:(id)arg3 
{
    arg_20 = arg3;
    arg_10 = loc_e09fa4(arg3, _cmd, arg2, arg3, r11, r10, r8, lr, r7, r6, r5, r4);
    loc_e09f98(self, @selector(extraDict));
    r4 = loc_e09f9c();
    r8 = loc_e09f98(r4, @selector(mutableCopy));
    arg_14 = r8;
    loc_e09f94(r4);
    arg_28 = @selector(question);
    loc_e09f98(arg3, @selector(question));
    r6 = loc_e09f9c();
    r2 = loc_e09f98(r6, @selector(questionId)) - 0x1;
    arg_1C = @selector(numberWithLongLong:);
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), r2, @selector(questionId) - 0x0 + !CARRY(FLAGS));
    r4 = loc_e09f9c();
    arg_18 = @selector(stringValue);
    loc_e09f98(r4, @selector(stringValue));
    r11 = loc_e09f9c();
    arg_24 = @selector(setObject:forKeyedSubscript:);
    loc_e09f98(r8, @selector(setObject:forKeyedSubscript:), r11, @"right_num");
    loc_e09f94(r11);
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f98(arg_20, arg_28);
    r8 = loc_e09f9c();
    arg_C = @selector(questionId);
    r0 = loc_e09f98();
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), r0, @selector(questionId));
    r4 = loc_e09f9c();
    loc_e09f98();
    r5 = loc_e09f9c();
    loc_e09f98(arg_14, arg_24, r5, @"qnum");
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(r8);
    loc_e09f98(arg_20, arg_28);
    arg_8 = loc_e09f9c();
    r2 = 0xd - loc_e09f98();
    loc_e09f98(NSNumber, arg_1C, r2, 0x0 - @selector(questionId) + !CARRY(FLAGS));
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    r5 = loc_e09f9c();
    loc_e09f98(arg_14, arg_24, r5, @"last_num");
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(arg_8);
    loc_e09f98(arg_20, arg_28);
    r11 = loc_e09f9c();
    r0 = loc_e09f98(r11, @selector(uuQuestionId));
    loc_e09f98(NSNumber, arg_1C, r0, @selector(uuQuestionId));
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    r5 = loc_e09f9c();
    loc_e09f98(arg_14, arg_24, r5, @"qid");
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(r11);
    arg_18 = NSString;
    loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
    r11 = loc_e09f9c();
    r5 = loc_e09f98(arg_20, arg_28);
    loc_e09f94(arg_10);
    r8 = loc_e09f9c(r5);
    r0 = loc_e09f98();
    loc_e09f98(NSNumber, arg_1C, r0, arg_C);
    r4 = loc_e09f9c();
    loc_e09f98(arg_14, @selector(objectForKeyedSubscript:), @"qid");
    r6 = loc_e09f9c();
    asm{ strd       r4, r6, [sp] };
    loc_e09f98(arg_18, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/wrongque?qnum=%@&qid=%@", r11);
    r7 = &arg_C;
    r5 = loc_e09f9c();
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r8);
    loc_e09f94(r11);
    loc_e09f98(arg_14, arg_24, r5, *0x20c663c);
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(arg_14, arg_24);
    return r0;
}

- (void)inviteFriendsOfLateView:(id)arg2 
{
    r6 = loc_e09fa4(arg2, objc_cls_ref_TTFantasyService, arg2);
    loc_e09f98(TTFantasyService, @selector(sharedService));
    r4 = loc_e09f9c();
    r10 = loc_e09f98(r4, @selector(showShareImageEnabled));
    loc_e09f94(r4);
    r4 = loc_e09f98(self, @selector(lateViewGetShareExtraParams:), r6);
    loc_e09f94(r6);
    r6 = loc_e09f9c(r4);
    loc_e09f98(self, @selector(view));
    r7 = &arg_C;
    r5 = loc_e09f9c();
    r1 = @selector(shareInSource:inView:params:isImageStyle:);
    asm{ strd       r6, r10, [sp] };
    loc_e09f98(TTFShareHelper, r1, *0x20c6630, r5);
    loc_e09f94(r5);
    r0 = r6;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (id)lateViewGetShareExtraParams:(id)arg2 
{
    loc_e09f98(self, @selector(extraDict), arg2);
    r5 = loc_e09f9c();
    r4 = loc_e09f98(r5, @selector(mutableCopy));
    loc_e09f94(r5);
    loc_e09f98(TTFURLSetting, @selector(domainForType:), 0x3);
    r6 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/pic/late", r6);
    r5 = loc_e09f9c();
    loc_e09f94(r6);
    loc_e09f98(r4, @selector(setObject:forKeyedSubscript:), r5, *0x20c663c);
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(setObject:forKeyedSubscript:));
    return r0;
}

- (void)keyboardWillShow:(id)arg2 
{
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(self, @selector(view));
    r6 = loc_e09f9c();
    loc_e09f98(self, @selector(hideKeyboardGesture));
    r5 = loc_e09f9c();
    loc_e09f98(r6, @selector(addGestureRecognizer:), r5);
    loc_e09f94(r5);
    loc_e09f94(r6);
    r1 = @selector(keyboardAnimationWithNotification:isShow:);
    loc_e09f98(self, r1, r8, 0x1);
    r0 = r8;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)keyboardWillHide:(id)arg2 
{
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(self, @selector(view));
    r6 = loc_e09f9c();
    loc_e09f98(self, @selector(hideKeyboardGesture));
    r5 = loc_e09f9c();
    loc_e09f98(r6, @selector(removeGestureRecognizer:), r5);
    loc_e09f94(r5);
    loc_e09f94(r6);
    r1 = @selector(keyboardAnimationWithNotification:isShow:);
    loc_e09f98(self, r1, r8, 0x0);
    r0 = r8;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)keyboardAnimationWithNotification:(id)arg2 isShow:(id)arg3 
{
    asm{ bfc        r4, #0x0, #0x3 };
    arg_1C = arg3;
    arg_18 = self;
    r8 = loc_e09fa4(arg2, _cmd, arg2, arg3, r11, r10, r8, lr, r7, r6, r5, r4);
    loc_e09f98(arg2, @selector(userInfo));
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(valueForKey:), *_UIKeyboardFrameEndUserInfoKey);
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(getValue:), (sp - 0x78) + 0x68);
    loc_e09f94(r5);
    loc_e09f94(r6);
    loc_e09f98(arg2, @selector(userInfo));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(objectForKey:), *_UIKeyboardAnimationDurationUserInfoKey);
    r10 = loc_e09f9c();
    arg_14 = r10;
    loc_e09f94(r5);
    r4 = loc_e09f98(arg2, @selector(userInfo));
    loc_e09f94(r8);
    r4 = loc_e09f9c(r4);
    loc_e09f98(r4, @selector(objectForKey:), *_UIKeyboardAnimationCurveUserInfoKey);
    r5 = loc_e09f9c();
    loc_e09f94(r4);
    arg_10 = UIView;
    r6 = loc_e09f98(r10, @selector(doubleValue));
    arg_38 = *_NSConcreteStackBlock;
    arg_3C = 0xc2000000;
    asm{ strd       r8, r1, [sp, #0x40] };
    asm{ strd       r0, r5, [sp, #0x48] };
    arg_C = loc_e09fa4(r5, 0xab3d25);
    arg_50 = loc_e09fa4(arg_18);
    arg_64 = arg_1C;
    asm{ vld1.64    {d16, d17}, [r1] };
    asm{ vst1.32    {d16, d17}, [r1] };
    asm{ strd       r4, r10, [sp, #0x20] };
    arg_28 = 0x0;
    asm{ strd       r1, r2, [sp, #0x2c] };
    r0 = loc_e09fa4();
    arg_34 = r0;
    asm{ strd       r5, r0, [sp] };
    loc_e09f98(arg_10, @selector(animateWithDuration:animations:completion:), r6, @selector(doubleValue));
    loc_e09f94(arg_34);
    loc_e09f94(arg_50);
    loc_e09f94(arg_4C);
    loc_e09f94(arg_C);
    r0 = loc_e09f94(arg_14);
    Pop();
    Pop();
    Pop();
    return;
}

- (void)ttf_accountStatusChangeNotification:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x18;
    r8 = self;
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(delegate));
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(isLogin));
    loc_e09f94(r5);
    loc_e09f94(r4);
    r10 = @selector(loginButton);
    loc_e09f98(r8, r10);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(isHidden));
    if (r6 == 0x0) goto loc_ab3fdc;
    goto loc_ab3fb8;

loc_ab3fdc:
    loc_e09f94();
    if (r5 == 0x0) goto loc_ab400c;
    goto loc_ab3fe2;

loc_ab400c:
    r4 = sub_e0a03c(0x0, 0x0);
    var_0 = *_NSConcreteStackBlock;
    asm{ strd       r0, r6, [sp, #0x4] };
    asm{ strd       r1, r2, [sp, #0xc] };
    r0 = loc_e09fa4(r8, 0xab407f, 0x20c6040);
    arg_14 = r0;
    sub_e0a038(r4, 0x0, *_dispatch_main_q);
    r0 = loc_e09f94(arg_14);
    Pop();
    Pop();
    return;

loc_ab3fe2:
    loc_e09f98(r8, r10);
    r4 = loc_e09f9c();
    r0 = 0x2330a84;

loc_ab3ffe:
    loc_e09f98(r4, *r0);
    loc_e09f94(r4);
    goto loc_ab400c;

loc_ab3fb8:
    loc_e09f94();
    if (r5 != 0x0) goto loc_ab400c;
    loc_e09f98(r8, r10);
    r4 = loc_e09f9c();
    r0 = 0x2330a84;
    goto loc_ab3ffe;
}

- (void)ttf_applicationDidEnterBackground:(id)arg2 
{
    r8 = self;
    r5 = @selector(fireworkAnimationView);
    loc_e09f98(r8, r5, arg2);
    r7 = &arg_C;
    r6 = loc_e09f9c();
    r4 = loc_e09f98(r6, @selector(isAnimationPlaying));
    loc_e09f94(r6);
    if (r4 != 0x0) {
            loc_e09f98(r8, r5);
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(pause));
            loc_e09f94(r4);
    }
    r1 = @selector(endTrackStayPage:);
    r0 = r8;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be4138(r0, r1);
    return;
}

- (void)ttf_applicationWillEnterForeground:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x4;
    r8 = self;
    loc_e09f98(r8, @selector(startTrackStayPage), arg2);
    r5 = @selector(fireworkAnimationView);
    loc_e09f98(r8, r5);
    r7 = r7;
    r6 = loc_e09f9c();
    r4 = loc_e09f98(r6, @selector(isAnimationPlaying));
    loc_e09f94(r6);
    if (r4 == 0x0) {
            loc_e09f98(r8, r5);
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(play));
            loc_e09f94(r4);
    }
    r6 = @selector(viewModel);
    loc_e09f98(r8, r6);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(activityStatus));
    loc_e09f94(r4);
    if (r5 < 0x2) goto loc_ab42f8;
    goto loc_ab4216;

loc_ab42f8:
    loc_e09f98(r8, @selector(setBeginLiveTimeDate:), 0x0);
    loc_e09f98(r8, @selector(setBeginWatchTimeDate:), 0x0);
    r1 = @selector(setItemNum:);
    r0 = r8;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();

loc_e09fc4:
    r0 = loc_1be4138(r0, r1);
    return;

loc_ab4216:
    r4 = @selector(date);
    loc_e09f98(NSDate, r4);
    r5 = loc_e09f9c();
    loc_e09f98(r8, @selector(setBeginLiveTimeDate:), r5);
    loc_e09f94(r5);
    loc_e09f98(r8, r6);
    r10 = loc_e09f9c();
    r5 = @selector(authInfo);
    loc_e09f98(r10, r5);
    r7 = r7;
    r11 = loc_e09f9c();
    if (r11 == 0x0) goto loc_ab4340;
    goto loc_ab4288;

loc_ab4340:
    loc_e09f94(r11);
    loc_e09f94(r10);

loc_ab434c:
    loc_e09f98(NSDate, r4);
    r4 = loc_e09f9c();
    r1 = @selector(setBeginWatchTimeDate:);
    loc_e09f98(r8, r1, r4);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);

loc_ab4288:
    loc_e09f98(r8, r6);
    r0 = loc_e09f9c();
    r6 = r0;
    loc_e09f98();
    r7 = r7;
    r5 = loc_e09f9c();
    r0 = loc_e09f98(r5, @selector(answerStatus));
    var_0 = r4;
    r4 = r0;
    loc_e09f94(r5);
    loc_e09f94(r6);
    loc_e09f94(r11);
    loc_e09f94(r10);
    COND = r4 != 0x0;
    r4 = var_0;
    if (COND) goto loc_ab434c;
    r1 = @selector(setBeginWatchTimeDate:);
    r0 = r8;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    goto loc_e09fc4;
}

- (id)prefersHomeIndicatorAutoHidden
{
    return 0x1;
}

- (void)onReachabilityChangedNotification:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x4;
    r5 = self;
    r8 = objc_cls_ref_TTFantasyService;
    r10 = @selector(sharedService);
    loc_e09f98(TTFantasyService, r10, arg2);
    r7 = r7;
    r4 = loc_e09f9c();
    r11 = @selector(networkReachabilityStatus);
    if (loc_e09f98(r4, r11) == 0xffffffff) goto loc_ab44c8;
    goto loc_ab43de;

loc_ab44c8:
    loc_e09f94(r4);

loc_ab44ce:
    r1 = @selector(showIndicatorText:animated:);
    loc_e09f98(TTFIndicatorView, r1, cfstring_S_MR_eQ________h_gQ_____n_, 0x1);
    r7 = r7;

loc_ab44f8:
    r0 = loc_e09f9c();

loc_ab44fc:
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;

loc_ab43de:
    r8 = objc_cls_ref_TTFantasyService;
    var_0 = r5;
    r0 = *r8;
    loc_e09f98(r0, r10);
    r7 = r7;
    r0 = loc_e09f9c();
    r5 = r0;
    r6 = loc_e09f98();
    loc_e09f94(r5);
    loc_e09f94(r4);
    if (r6 == 0x0) goto loc_ab44ce;
    r8 = objc_cls_ref_TTFantasyService;
    r0 = *r8;
    loc_e09f98(r0, r10);
    r7 = r7;
    r0 = loc_e09f9c();
    r5 = loc_e09f98();
    r0 = loc_e09f94(r0);
    if (r5 < 0x2) goto loc_ab44c0;
    goto loc_ab442e;

loc_ab44c0:
    Pop();
    Pop();
    Pop();
    return;

loc_ab442e:
    r4 = var_0;
    loc_e09f98(r4, @selector(player));
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = @selector(isPlaying);
    if (loc_e09f98(r5, r1) == 0x0) goto loc_ab450a;
    goto loc_ab4460;

loc_ab450a:
    r0 = r5;
    goto loc_ab44fc;

loc_ab4460:
    loc_e09f98(r4, @selector(viewModel));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(currentQuestionAnswerUnit));
    r7 = r7;
    r6 = loc_e09f9c();
    r8 = loc_e09f98(r6, @selector(canAnswer));
    loc_e09f94(r6);
    loc_e09f94(r4);
    r0 = loc_e09f94(r5);
    if (r8 == 0x0) goto loc_ab450e;
    goto loc_ab44c0;

loc_ab450e:
    r1 = @selector(showIndicatorText:animated:);
    loc_e09f98(TTFIndicatorView, r1, cfstring_S_MR_N___, 0x1);
    r7 = r7;
    goto loc_ab44f8;
}

- (id)needHideVideoEnginePlayerView
{
    r6 = self;
    r5 = @selector(player);
    loc_e09f98(r6, r5);
    r7 = &arg_C;
    r4 = loc_e09f9c();
    if (loc_e09f98(r4, @selector(loadState)) == 0x2) {
            loc_e09f94(r4);
            r0 = 0x0;
            Pop();
            Pop();
            return r0;
    }
    else {
            loc_e09f98(r6, r5);
            r7 = r7;
            r10 = loc_e09f9c();
            if (loc_e09f98(r10, @selector(isPlaying)) != 0x0) {
                    loc_e09f98(r6, r5);
                    r7 = r7;
                    r8 = loc_e09f9c();
                    if (loc_e09f98(r8, @selector(currentRes)) == 0x3) {
                            r5 = 0x0;
                    }
                    else {
                            loc_e09f98(r6, @selector(clearanceUsersView));
                            r7 = r7;
                            r0 = loc_e09f9c();
                            r5 = 0x0;
                            if (r0 == 0x0) {
                                    loc_e09f98(r6, @selector(questionAnswerView));
                                    r5 = loc_e09f9c();
                                    r6 = loc_e09f98(r5, @selector(isQAViewShow));
                                    loc_e09f94(r5);
                                    r5 = 0x0;
                                    asm{ it         eq };
                                    if (r6 == 0x0) {
                                            r5 = 0x1;
                                    }
                            }
                            loc_e09f94();
                    }
                    loc_e09f94(r8);
            }
            else {
                    r5 = 0x0;
            }
            loc_e09f94(r10);
            loc_e09f94(r4);
            r0 = r5;
            Pop();
            Pop();
            return r0;
    }
    return r0;
}

- (void)setCurUserCountAttributedString
{
    r0 = self;
    if (CPU_FLAGS & NE) {
                Push(r4);
                Push(r5);
                Push(r6);
                Push(r7);
                Push(lr);
    }
    r7 = &arg_C;
    sp = sp - 0x28;
    r4 = r0;
    loc_e09f98(r4, @selector(viewModel));
    r6 = loc_e09f9c();
    r3 = loc_e09f98(r6, @selector(curUsersCount));
    var_0 = @selector(curUsersCount);
    loc_e09f98(NSString, @selector(stringWithFormat:), cfstring__, r3);
    r11 = loc_e09f9c();
    loc_e09f94(r6);
    arg_24 = loc_e09f98(r11, @selector(length));
    arg_20 = r4;
    r10 = @selector(usersCountLabel);
    loc_e09f98(r4, r10);
    r8 = loc_e09f9c();
    loc_e09f98(r8, @selector(attributedText));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(string));
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = @selector(isEqualToString:);
    r6 = loc_e09f98(r11, r1, r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(r8);
    if (r6 == 0x0) {
            arg_1C = r10;
            arg_10 = arg_24 - 0x1;
            loc_e09f98(NSMutableAttributedString, @selector(alloc), objc_cls_ref_NSMutableAttributedString);
            arg_14 = loc_e09f98();
            arg_C = @selector(dictionary);
            loc_e09f98(NSMutableDictionary, @selector(dictionary), objc_cls_ref_NSMutableDictionary);
            r10 = loc_e09f9c();
            loc_e09f98(UIFont, @selector(fontWithName:size:), @"DINAlternate-Bold", 0x41400000);
            r7 = r7;
            r6 = loc_e09f9c();
            arg_18 = r11;
            if (r6 != 0x0) {
                    r4 = loc_e09fa4(r6);
                    arg_4 = @selector(systemFontOfSize:);
            }
            else {
                    r0 = *objc_cls_ref_UIFont;
                    arg_4 = @selector(systemFontOfSize:);
                    loc_e09f98(r0, @selector(systemFontOfSize:), 0x41400000);
                    r7 = r7;
                    r4 = loc_e09f9c();
            }
            loc_e09f94(r6);
            loc_e0a030(r4);
            r8 = @selector(setValue:forKey:);
            r3 = *_NSFontAttributeName;
            arg_8 = r3;
            loc_e09f98(r10, r8, r4, r3);
            loc_e09f98(NSNumber, @selector(numberWithFloat:), 0x3fc00000);
            r4 = loc_e09f9c();
            loc_e09f98(r10, r8, r4, *_NSBaselineOffsetAttributeName);
            loc_e09f94(r4);
            r6 = @selector(setAttributes:range:);
            var_0 = 0x1;
            r5 = arg_14;
            loc_e09f98(r5, r6, r10, arg_10);
            loc_e09f98(NSMutableDictionary, arg_C);
            r11 = loc_e09f9c();
            loc_e09f98(UIFont, arg_4, 0x40c00000);
            r4 = loc_e09f9c();
            loc_e09f98(r11, r8, r4, arg_8);
            loc_e09f94(r4);
            var_0 = 0x1;
            loc_e09f98(r5, r6, r11, arg_24 - 0x2);
            asm{ ldrd       r1, r0, [sp, #0x1c] };
            loc_e09f98();
            r7 = r7;
            r4 = loc_e09f9c();
            r1 = @selector(setAttributedText:);
            loc_e09f98(r4, r1, r5);
            loc_e09f94(r4);
            loc_e09f94(r11);
            loc_e09f94(r10);
            loc_e09f94(r5);
            r11 = arg_18;
    }
    r0 = r11;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

+ (void)prepareForQuizShowLiveRoom
{
    loc_e09f98(TTFAudioServicesManager, @selector(sharedManager), objc_cls_ref_TTFAudioServicesManager);
    loc_e09f9c();
    loc_e09f94();
    loc_e09f98(TTFResourceLoader, @selector(mainLoader), objc_cls_ref_TTFResourceLoader);
    r4 = loc_e09f9c();
    r1 = @selector(loadVideoWithName:completion:);
    loc_e09f98(r4, r1, @"background.mp4", 0x0);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)debug_enable_frontier:(id)arg2 
{
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(self, @selector(viewModel));
    r5 = loc_e09f9c();
    r4 = loc_e09f98(arg2, @selector(isOn));
    loc_e09f94(r8);
    r1 = @selector(debug_enable_frontier:);
    loc_e09f98(r5, r1, r4);
    r0 = r5;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)debug_enable_comment:(id)arg2 
{
    r5 = loc_e09f98(arg2, @selector(isOn), arg2);
    loc_e09f98(self, @selector(talkboardViewController));
    r7 = &arg_8;
    r4 = loc_e09f9c();
    if (r5 != 0x0) {
            r0 = 0x2345a88;
    }
    else {
            r0 = 0x2345a8c;
    }
    r1 = *r0;
    loc_e09f98(r4, r1);
    r0 = r4;
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)debug_didReceiveHeartbeat:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x8;
    r8 = self;
    r11 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = @selector(isConfigDebugTool);
    r6 = loc_e09f98(r5, r1);
    loc_e09f94(r5);
    if (r6 != 0x0) {
            r6 = @selector(heartbeat);
            r1 = r6;
            loc_e09f98(r11, r1);
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f94();
            if (r5 != 0x0) {
                    r0 = loc_e09f98(r11, @selector(isFromWs));
                    r1 = cfstring__w;
                    asm{ it         ne };
                    if (r0 != 0x0) {
                            r1 = cfstring___;
                    }
                    r10 = loc_e09fa4(r1);
                    loc_e09f98(r8, @selector(heartbeatLabel));
                    arg_4 = loc_e09f9c();
                    loc_e09f98(r11, r6);
                    r8 = loc_e09f9c();
                    loc_e09f98(r8, @selector(description));
                    r7 = r7;
                    r5 = loc_e09f9c();
                    var_0 = r5;
                    r6 = loc_e09f98(NSString, @selector(stringWithFormat:), cfstring______, r10);
                    loc_e09f94(r10);
                    r6 = loc_e09f9c(r6);
                    r4 = arg_4;
                    r1 = @selector(setText:);
                    loc_e09f98(r4, r1, r6);
                    loc_e09f94(r6);
                    loc_e09f94(r5);
                    loc_e09f94(r8);
                    loc_e09f94(r4);
            }
    }
    r0 = r11;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (id)getActivityID
{
    if (CPU_FLAGS & E) {
                Push(r4);
                Push(r5);
                Push(r6);
                Push(r7);
                Push(lr);
    }
    loc_e09f98();
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(currentActivity));
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(activityId));
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), r6, @selector(activityId));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(stringValue));
    r5 = loc_e09f9c();
    loc_e09f94(r4);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r5, @selector(stringValue));
    return r0;
}

- (id)getPlayerVersion
{
    r1 = @selector(playerVersion);
    r0 = TTFPlayer;
    r0 = loc_1be4138(r0, r1);
    return r0;
}

- (id)player
{
    r0 = self->_player;
    return r0;
}

- (void)setPlayer:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__player, arg2, arg2);
    return;
}

- (id)liveTracker
{
    r0 = self->_liveTracker;
    return r0;
}

- (void)setLiveTracker:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__liveTracker, arg2, arg2);
    return;
}

- (id)playerIndicatorView
{
    r0 = self->_playerIndicatorView;
    return r0;
}

- (void)setPlayerIndicatorView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__playerIndicatorView, arg2, arg2);
    return;
}

- (id)videoEngine
{
    r0 = self->_videoEngine;
    return r0;
}

- (void)setVideoEngine:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__videoEngine, arg2, arg2);
    return;
}

- (id)videoEngineMaskView
{
    r0 = self->_videoEngineMaskView;
    return r0;
}

- (void)setVideoEngineMaskView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__videoEngineMaskView, arg2, arg2);
    return;
}

- (id)logoLoopAnimationView
{
    r0 = self->_logoLoopAnimationView;
    return r0;
}

- (void)setLogoLoopAnimationView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__logoLoopAnimationView, arg2, arg2);
    return;
}

- (id)containerView
{
    r0 = self->_containerView;
    return r0;
}

- (void)setContainerView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__containerView, arg2, arg2);
    return;
}

- (id)shareTopContainer
{
    r0 = self->_shareTopContainer;
    return r0;
}

- (void)setShareTopContainer:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__shareTopContainer, arg2, arg2);
    return;
}

- (id)inputInvitationCodeButton
{
    r0 = self->_inputInvitationCodeButton;
    return r0;
}

- (void)setInputInvitationCodeButton:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__inputInvitationCodeButton, arg2, arg2);
    return;
}

- (id)resurrectionView
{
    r0 = self->_resurrectionView;
    return r0;
}

- (void)setResurrectionView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__resurrectionView, arg2, arg2);
    return;
}

- (id)redDotView
{
    r0 = self->_redDotView;
    return r0;
}

- (void)setRedDotView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__redDotView, arg2, arg2);
    return;
}

- (id)usersCountLabel
{
    r0 = self->_usersCountLabel;
    return r0;
}

- (void)setUsersCountLabel:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__usersCountLabel, arg2, arg2);
    return;
}

- (id)closeButton
{
    r0 = self->_closeButton;
    return r0;
}

- (void)setCloseButton:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__closeButton, arg2, arg2);
    return;
}

- (id)questionAnswerView
{
    r0 = self->_questionAnswerView;
    return r0;
}

- (void)setQuestionAnswerView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__questionAnswerView, arg2, arg2);
    return;
}

- (id)countdownView
{
    r0 = self->_countdownView;
    return r0;
}

- (void)setCountdownView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__countdownView, arg2, arg2);
    return;
}

- (id)loginButton
{
    r0 = self->_loginButton;
    return r0;
}

- (void)setLoginButton:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__loginButton, arg2, arg2);
    return;
}

- (id)isFetchStreamInfoSuccess
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsFetchStreamInfoSuccess:(id)arg2 
{
    r0 = self;
    r0->_isFetchStreamInfoSuccess = arg2;
    return;
}

- (id)talkboardViewController
{
    r0 = self->_talkboardViewController;
    return r0;
}

- (void)setTalkboardViewController:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__talkboardViewController, arg2, arg2);
    return;
}

- (id)hideKeyboardGesture
{
    r0 = self->_hideKeyboardGesture;
    return r0;
}

- (void)setHideKeyboardGesture:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__hideKeyboardGesture, arg2, arg2);
    return;
}

- (id)fireworkAnimationView
{
    r0 = self->_fireworkAnimationView;
    return r0;
}

- (void)setFireworkAnimationView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__fireworkAnimationView, arg2, arg2);
    return;
}

- (id)clearanceUsersView
{
    r0 = self->_clearanceUsersView;
    return r0;
}

- (void)setClearanceUsersView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__clearanceUsersView, arg2, arg2);
    return;
}

- (id)inputInvitationCodeView
{
    r0 = self->_inputInvitationCodeView;
    return r0;
}

- (void)setInputInvitationCodeView:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__inputInvitationCodeView, arg2, arg2);
    return;
}

- (id)curQuestionAnswerUserCountSet
{
    r0 = self->_curQuestionAnswerUserCountSet;
    return r0;
}

- (void)setCurQuestionAnswerUserCountSet:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__curQuestionAnswerUserCountSet, arg2, arg2);
    return;
}

- (id)immediatelyEnterAfterIndex
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setImmediatelyEnterAfterIndex:(id)arg2 
{
    r0 = self;
    r0->_immediatelyEnterAfterIndex = arg2;
    return;
}

- (id)enterAgain
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setEnterAgain:(id)arg2 
{
    r0 = self;
    r0->_enterAgain = arg2;
    return;
}

- (id)logoLoopTimer
{
    r0 = self->_logoLoopTimer;
    return r0;
}

- (void)setLogoLoopTimer:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__logoLoopTimer, arg2, arg2);
    return;
}

- (id)delegate
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__delegate;
    r0 = sub_e09f88();
    Pop();
    Pop();
    r0 = loc_e09f82(r0, r1);
    return r0;
}

- (void)setDelegate:(id)arg2 
{
    r0 = loc_e09f8c(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__delegate, arg2, arg2);
    return;
}

- (id)isPlayRemoteVideo
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsPlayRemoteVideo:(id)arg2 
{
    r0 = self;
    r0->_isPlayRemoteVideo = arg2;
    return;
}

- (id)warmupVideoUrl
{
    r0 = loc_e09fd4(self, _cmd);
    return r0;
}

- (void)setWarmupVideoUrl:(id)arg2 
{
    r0 = loc_e09fd8(self, _cmd, arg2);
    return;
}

- (id)debugToolContainer
{
    r0 = self->_debugToolContainer;
    return r0;
}

- (void)setDebugToolContainer:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__debugToolContainer, arg2, arg2);
    return;
}

- (id)disableFrontierButton
{
    r0 = self->_disableFrontierButton;
    return r0;
}

- (void)setDisableFrontierButton:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__disableFrontierButton, arg2, arg2);
    return;
}

- (id)disableCommentButton
{
    r0 = self->_disableCommentButton;
    return r0;
}

- (void)setDisableCommentButton:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__disableCommentButton, arg2, arg2);
    return;
}

- (id)heartbeatLabel
{
    r0 = self->_heartbeatLabel;
    return r0;
}

- (void)setHeartbeatLabel:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__heartbeatLabel, arg2, arg2);
    return;
}

- (id)userAuthLabel
{
    r0 = self->_userAuthLabel;
    return r0;
}

- (void)setUserAuthLabel:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__userAuthLabel, arg2, arg2);
    return;
}

- (id)viewModel
{
    r0 = self->_viewModel;
    return r0;
}

- (void)setViewModel:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewController__viewModel, arg2, arg2);
    return;
}

- (void).cxx_destruct
{
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__viewModel;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__userAuthLabel;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__heartbeatLabel;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__disableCommentButton;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__disableFrontierButton;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__debugToolContainer;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__warmupVideoUrl;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__delegate;
    sub_e09f90(r0 + self);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__logoLoopTimer;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__curQuestionAnswerUserCountSet;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__inputInvitationCodeView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__clearanceUsersView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__fireworkAnimationView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__hideKeyboardGesture;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__talkboardViewController;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__loginButton;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__countdownView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__questionAnswerView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__closeButton;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__usersCountLabel;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__redDotView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__resurrectionView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__inputInvitationCodeButton;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__shareTopContainer;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__containerView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__logoLoopAnimationView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__videoEngineMaskView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__videoEngine;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__playerIndicatorView;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__liveTracker;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewController__player;
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f7e(r0 + self, 0x0, r2);
    return;
}

- (id)extraDict
{
    STK35 = r7;
    r7 = &arg_C;
    sp = sp - 0x18;
    r3 = *___stack_chk_guard;
    arg_14 = r3;
    arg_4 = @"activity_id";
    loc_e09f98(self, @selector(viewModel), @"activity_id", r3, r11, r10, r8, lr, STK35, r6, r5, r4);
    r8 = loc_e09f9c();
    loc_e09f98(r8, @selector(currentActivity));
    r10 = loc_e09f9c();
    r3 = loc_e09f98(r10, @selector(activityId));
    var_0 = @selector(activityId);
    loc_e09f98(NSString, @selector(stringWithFormat:), @"%lld", r3);
    r11 = loc_e09f9c();
    asm{ strd       r0, r11, [sp, #0x8] };
    loc_e09f98(self, @selector(viewModel));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(getActivityStatusStringForTracker));
    r4 = loc_e09f9c();
    arg_10 = r4;
    var_0 = 0x2;
    loc_e09f98(NSDictionary, @selector(dictionaryWithObjects:forKeys:count:), &arg_C, &arg_4);
    r7 = r7;
    r6 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r11);
    loc_e09f94(r10);
    loc_e09f94(r8);
    r1 = *___stack_chk_guard;
    asm{ it         ne };
    if (r1 != arg_14) {
            loc_e09fdc();
    }
    r1 = *___stack_chk_guard;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r6, r1);
    return r0;
}

- (id)loginTrackerDicWithSection:(id)arg2 
{
    r2 = arg2;
    r0 = self;
    if (CPU_FLAGS & E) {
                Push(r4);
                Push(r5);
                Push(r6);
                Push(r7);
                Push(lr);
    }
    r7 = &arg_C;
    sp = sp - 0x2c;
    r5 = r0;
    arg_28 = *___stack_chk_guard;
    r6 = @selector(viewModel);
    arg_18 = r2;
    asm{ strd       r3, r1, [sp, #0x8] };
    arg_4 = loc_e09fa4(r2, @"page");
    loc_e09f98(r5, r6);
    r7 = r7;
    r10 = loc_e09f9c();
    r0 = loc_e09f98(r10, @selector(activityStatus));
    r1 = @"count_down_page";
    r2 = @"live_page";
    asm{ it         lt };
    if (r0 < 0x2) {
            r2 = r1;
    }
    arg_1C = r2;
    arg_10 = @"oppo";
    loc_e09f98(r5, r6);
    r11 = loc_e09f9c();
    loc_e09f98(r11, @selector(getActivityStatusStringForTracker));
    r4 = loc_e09f9c();
    arg_14 = @"enter_from";
    arg_20 = r4;
    loc_e09f98(r5, r6);
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(enterFromStr));
    r8 = loc_e09f9c();
    arg_24 = r8;
    var_0 = 0x4;
    loc_e09f98(NSDictionary, @selector(dictionaryWithObjects:forKeys:count:), &arg_18, &arg_8);
    r7 = r7;
    r6 = loc_e09f9c();
    loc_e09f94(arg_4);
    loc_e09f94(r8);
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(r11);
    loc_e09f94(r10);
    r1 = *___stack_chk_guard;
    asm{  };
    if (r1 != arg_28) {
            loc_e09fdc();
    }
    r1 = *___stack_chk_guard;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r6, r1);
    return r0;
}

@end

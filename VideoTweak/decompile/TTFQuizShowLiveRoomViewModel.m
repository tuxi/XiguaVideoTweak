
@implementation TTFQuizShowLiveRoomViewModel

- (id)init
{
    sp = sp - 0x8;
    var_0 = self;
    arg_4 = *0x2352ee8;
    r4 = loc_e09fa0(sp, @selector(init), 0x2330704);
    if (r4 != 0x0) {
            loc_e09f98(r4, @selector(setActivityStatus:), 0x0);
            loc_e09f98(r4, @selector(setCurUsersCount:), 0x0, 0x0);
            loc_e09f98(r4, @selector(setCurSignCount:), 0x0, 0x0);
            loc_e09f98(r4, @selector(setNetFailedQuestionID:), 0xffffffff);
            loc_e09f98(r4, @selector(setIsLiveRoomIndexSuccess:), 0x0);
            loc_e09f98(r4, @selector(setIsLiveRoomInitSuccess:), 0x0);
            loc_e09f98(r4, @selector(setKickoutNetError:), 0x0);
            loc_e09f98(r4, @selector(setSubmitRetryCount:), 0x0);
            loc_e09f98(r4, @selector(setSubmitRetryTimeout:), 0x4);
            loc_e09f98(r4, @selector(setIsFetchingStreamInfo:), 0x0);
            loc_e09f98(r4, @selector(setGetStreamRetryIndex:), 0x0);
            r2 = loc_e09f98(r4, @selector(commentRefreshInterval));
            loc_e09f98(r4, @selector(setCommentInterval:), r2);
            loc_e09f98(TTFShareHelper, @selector(setCurrentQuizShowLiveRoomViewModel:), r4);
    }
    r0 = r4;
    return r0;
}

- (void)dealloc
{
    var_0 = self;
    var_4 = *0x2352ee8;
    r0 = loc_e09fa0(sp - 0x8, @selector(dealloc), 0x23307dc);
    return;
}

- (void)setCurSignCount:(id)arg2 
{
    STK35 = r7;
    r7 = &arg_C;
    STK37 = r8;
    sp = sp + 0xfffffffffffffffc - 0x4;
    r8 = self;
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__curSignCount;
    *(r8 + r0) = arg2;
    *0x88 = r3;
    var_0 = r3;
    loc_e09f98(NSString, @selector(stringWithFormat:), cfstring__, arg2, STK37, lr, STK35, r6, r5, r4);
    r5 = loc_e09f9c();
    loc_e09f98(r8, @selector(curSignCountStr));
    r7 = r7;
    r6 = loc_e09f9c();
    r1 = @selector(isEqualToString:);
    r4 = loc_e09f98(r5, r1, r6);
    loc_e09f94(r6);
    if (r4 == 0x0) {
            r1 = @selector(setCurSignCountStr:);
            loc_e09f98(r8, r1, r5);
    }
    r0 = r5;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (void)setCurUsersCount:(id)arg2 
{
    r2 = arg2;
    r7 = &arg_C;
    r4 = self;
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__maxParticipateCount;
    r1 = r4 + r0;
    r6 = *(r4 + r0);
    r5 = *(r1 + 0x4);
    asm{ itt        lt };
    if (r6 < 0x0) {
            r4->_maxParticipateCount = r2;
    }
    if (CPU_FLAGS & GE) {
            *(r1 + 0x4) = r3;
    }
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__curUsersCount;
    r0 = r4 + r1;
    if ((*(r4 + r1) ^ r2 | *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__delegate ^ r3) != 0x0) {
            r5 = 0x0;
            asm{  };
            if (r6 < 0x0) {
                    r5 = 0x1;
            }
            r10 = @selector(delegate);
            asm{  };
            if (r5 == 0x0) {
                    r2 = r5;
            }
            r4->_curUsersCount = r2;
            asm{  };
            if (CPU_FLAGS & E) {
                    r5 = r3;
            }
            *(r0 + 0x4) = r5;
            loc_e09f98(r4, r10);
            r7 = r7;
            r0 = loc_e09f9c();
            r6 = r0;
            if (r6 != 0x0) {
                    loc_e09f98(r4, r10);
                    r7 = r7;
                    r5 = loc_e09f9c();
                    r8 = @selector(quizShowLiveRoomUsersCountChange);
                    r11 = loc_e09f98(r5, @selector(respondsToSelector:), r8);
                    loc_e09f94(r5);
                    r0 = loc_e09f94(r6);
                    if (r11 != 0x0) {
                            loc_e09f98(r4, r10);
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
            }
            else {
                    Pop();
                    Pop();
                    Pop();
                    return;
            }
    }
    else {
            Pop();
            Pop();
            Pop();
            return;
    }
    return;
}

- (void)operateDistributeAndAnswerStatusWithHeartbeat:(id)arg2 
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
    if (CPU_FLAGS & GE) {
            r7 = &arg_C;
    }
    sp = sp - 0x28;
    arg_20 = r0;
    r11 = loc_e09fa4(r2);
    loc_e09f98(r11, @selector(heartbeat));
    r7 = r7;
    r10 = loc_e09f9c();
    r1 = @selector(hasQuestion);
    if (loc_e09f98(r10, r1) == 0x0) goto loc_ab6024;
    goto loc_ab5a86;

loc_ab6024:
    loc_e09f94(r10);
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

loc_ab5a86:
    arg_C = @selector(timestampMs);
    loc_e09f98(r10, @selector(timestampMs));
    asm{ strd       r1, r0, [sp, #0x14] };
    r5 = @selector(question);
    loc_e09f98(r10, r5);
    r0 = loc_e09f9c();
    arg_1C = r11;
    r11 = r0;
    arg_10 = loc_e09f98(r11, @selector(questionStartTsMs));
    r6 = @selector(questionStartTsMs);
    loc_e09f98(r10, r5);
    r7 = r7;
    r8 = loc_e09f9c();
    r4 = loc_e09f98(r8, @selector(timeLimit));
    arg_24 = r10;
    loc_e09f94(r8);
    r0 = r11;
    r11 = arg_1C;
    loc_e09f94(r0);
    r1 = arg_14 - r6 + !CARRY(arg_18 - arg_10);
    r0 = sub_e0a5a0();
    r10 = arg_24;
    if (r0 >= 0x0) goto loc_ab6024;
    r8 = r5;
    r6 = arg_20;
    r5 = @selector(currentQuestionAnswerUnit);
    loc_e09f98(r6, r5);
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f94();
    arg_18 = r5;
    arg_8 = r8;
    if (r4 == 0x0) goto loc_ab5df6;
    goto loc_ab5b60;

loc_ab5df6:
    loc_e09f98(r6, @selector(authInfo));
    r4 = loc_e09f9c();
    sub_a22894(@"begin a question with heartbeat:%@, auth:%@", r10, r4, 0x0);
    loc_e09f94(r4);
    r4 = loc_e09f98(TTFQuestionAnswerUnit, @selector(alloc), objc_cls_ref_TTFQuestionAnswerUnit);
    r3 = loc_e09f98(r10, arg_C);
    asm{ strd       r1, r6, [sp] };
    r4 = loc_e09f98(r4, @selector(initWithHeartbeatTrace:currentTime:viewModel:), r11, r3);
    loc_e09f98(r6, @selector(setCurrentQuestionAnswerUnit:), r4);
    loc_e09f94(r4);
    loc_e09f98(r6, r5);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setDelegate:), r6);
    loc_e09f94(r4);
    loc_e09f98(r6, r5);
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    r7 = r7;
    r5 = loc_e09f9c();
    r8 = loc_e09f98(r5, @selector(random));
    loc_e09f94(r5);
    loc_e09f94(r4);
    if (r8 >= 0x1) {
            loc_e09f98(r6, arg_18);
            r10 = loc_e09f9c();
            loc_e09f98(r6, arg_18);
            r0 = loc_e09f9c();
            r8 = r0;
            loc_e09f98();
            r4 = loc_e09f9c();
            r2 = loc_e09f98(r4, @selector(optionsArray_Count));
            loc_e09f98(r6, @selector(_getRandomIndexArrayForCount:), r2);
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f98(r10, @selector(setRandomOrderIndexArray:), r5);
            loc_e09f94(r5);
            loc_e09f94(r4);
            loc_e09f94(r8);
            r0 = r10;
            r10 = arg_24;
            loc_e09f94(r0);
    }
    r4 = @selector(questionAnswerDelegate);
    r1 = r4;
    loc_e09f98(r6, r1);
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 == 0x0) goto loc_ab6024;
    loc_e09f98(arg_20, r4);
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = @selector(respondsToSelector:);
    r8 = @selector(showQuestionWithQuestionAnswerUnit:);
    r10 = loc_e09f98(r5, r1, r8);
    loc_e09f94(r5);
    loc_e09f94(r6);
    COND = r10 == 0x0;
    r10 = arg_24;
    if (COND) goto loc_ab6024;
    loc_e09f98(arg_20, r4);
    r4 = loc_e09f9c();
    loc_e09f98(arg_20, arg_18);
    r7 = r7;

loc_ab6008:
    r5 = loc_e09f9c();
    r1 = r8;
    loc_e09f98(r4, r1, r5);
    loc_e09f94(r5);
    loc_e09f94(r4);
    goto loc_ab6024;

loc_ab5b60:
    loc_e09f98(r6, r5);
    r0 = loc_e09f9c();
    r4 = r8;
    r11 = r0;
    loc_e09f98();
    r6 = loc_e09f9c();
    arg_14 = loc_e09f98(r6, @selector(questionId));
    r8 = @selector(questionId);
    loc_e09f98(r10, r4);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98();
    loc_e09f94(r4);
    loc_e09f94(r6);
    r0 = r11;
    r11 = arg_1C;
    loc_e09f94(r0);
    r10 = arg_24;
    r1 = arg_14 ^ r5;
    if ((r8 ^ @selector(questionId) | r1) == 0x0) goto loc_ab6024;
    r8 = arg_20;
    loc_e09f98(r8, @selector(authInfo));
    r4 = loc_e09f9c();
    sub_a22894(@"start a new question with heartbeat:%@, auth:%@", r10, r4, 0x0);
    loc_e09f94(r4);
    r4 = loc_e09f98(TTFQuestionAnswerUnit, @selector(alloc), objc_cls_ref_TTFQuestionAnswerUnit);
    r3 = loc_e09f98(r10, arg_C);
    asm{ strd       r1, r8, [sp] };
    r4 = loc_e09f98(r4, @selector(initWithHeartbeatTrace:currentTime:viewModel:), r11, r3);
    loc_e09f98(r8, @selector(setCurrentQuestionAnswerUnit:), r4);
    loc_e09f94(r4);
    loc_e09f98(r8, arg_18);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setDelegate:), r8);
    loc_e09f94(r4);
    loc_e09f98(r8, arg_18);
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(random));
    loc_e09f94(r5);
    loc_e09f94(r4);
    if (r6 >= 0x1) {
            loc_e09f98(r8, arg_18);
            r10 = loc_e09f9c();
            loc_e09f98(r8, arg_18);
            r0 = loc_e09f9c();
            r4 = r0;
            loc_e09f98();
            r6 = loc_e09f9c();
            r2 = loc_e09f98(r6, @selector(optionsArray_Count));
            loc_e09f98(r8, @selector(_getRandomIndexArrayForCount:), r2);
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f98(r10, @selector(setRandomOrderIndexArray:), r5);
            loc_e09f94(r5);
            loc_e09f94(r6);
            loc_e09f94(r4);
            r0 = r10;
            r10 = arg_24;
            loc_e09f94(r0);
    }
    r4 = @selector(questionAnswerDelegate);
    r1 = r4;
    loc_e09f98(r8, r1);
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 == 0x0) goto loc_ab6024;
    loc_e09f98(arg_20, r4);
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = @selector(respondsToSelector:);
    r8 = @selector(showQuestionWithQuestionAnswerUnit:);
    r10 = loc_e09f98(r5, r1, r8);
    loc_e09f94(r5);
    loc_e09f94(r6);
    COND = r10 == 0x0;
    r10 = arg_24;
    if (COND) goto loc_ab6024;
    loc_e09f98(arg_20, r4);
    r4 = loc_e09f9c();
    loc_e09f98(arg_20, arg_18);
    r7 = r7;
    goto loc_ab6008;
}

- (void)operateRevealAnswerWithHeartbeat:(id)arg2 
{
    r2 = arg2;
    r7 = &arg_C;
    sp = sp - 0x24;
    r8 = self;
    r10 = loc_e09fa4(r2, _cmd, r2);
    loc_e09f98(r10, @selector(heartbeat));
    r7 = r7;
    r6 = loc_e09f9c();
    r1 = @selector(hasAnswer);
    if (loc_e09f98(r6, r1) == 0x0) goto loc_ab6692;
    goto loc_ab6080;

loc_ab6692:
    loc_e09f94(r6);
    r0 = r10;
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

loc_ab6080:
    r11 = r6;
    r6 = @selector(currentQuestionAnswerUnit);
    loc_e09f98(r8, r6);
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f94();
    asm{ strd       r6, r11, [sp, #0x1c] };
    if (r4 == 0x0) goto loc_ab623e;
    goto loc_ab60ac;

loc_ab623e:
    r4 = @selector(authInfo);
    loc_e09f98(r8, r4);
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(answerStatus));
    loc_e09f94(r5);
    if (r6 == 0x0) {
            loc_e09f98(r8, r4);
            r4 = loc_e09f9c();
            r2 = 0x1;
            loc_e09f98(r4, @selector(setAnswerStatus:), r2);
            loc_e09f94(r4);
            r4 = @selector(curUser);
            loc_e09f98(r8, r4);
            r7 = r7;
            r5 = loc_e09f9c();
            r6 = loc_e09f98(r5, @selector(lifesCanUse));
            loc_e09f94(r5);
            if (r6 >= 0x1) {
                    loc_e09f98(r8, r4);
                    r4 = loc_e09f9c();
                    r2 = 0x0;
                    loc_e09f98(r4, @selector(setLifesCanUse:), r2);
                    loc_e09f94(r4);
                    r4 = @selector(questionAnswerDelegate);
                    loc_e09f98(r8, r4);
                    r7 = r7;
                    r5 = loc_e09f9c();
                    if (r5 != 0x0) {
                            loc_e09f98(r8, r4);
                            r7 = r7;
                            r6 = loc_e09f9c();
                            r2 = @selector(missedQuestionWithUnit:);
                            arg_18 = r2;
                            r0 = loc_e09f98(r6, @selector(respondsToSelector:), r2);
                            r11 = r8;
                            r8 = r0;
                            loc_e09f94(r6);
                            loc_e09f94(r5);
                            COND = r8 == 0x0;
                            r8 = r11;
                            if (!COND) {
                                    loc_e09f98(r8, r4);
                                    r4 = loc_e09f9c();
                                    loc_e09f98(r8, arg_1C);
                                    r7 = r7;
                                    r5 = loc_e09f9c();
                                    r2 = r5;
                                    loc_e09f98(r4, arg_18, r2);
                                    loc_e09f94(r5);
                                    loc_e09f94(r4);
                            }
                    }
            }
    }
    r6 = arg_20;
    r1 = @selector(hasQuestion);
    r0 = loc_e09f98(r6, r1);
    r11 = r8;
    if (r0 == 0x0) goto loc_ab6692;
    sub_a22894(@"current question answer unit nil, reveal answer, heartbeat:%@", r6, r2, r3);
    arg_18 = @selector(alloc);
    r4 = loc_e09f98(TTFQuestionAnswerUnit, @selector(alloc), objc_cls_ref_TTFQuestionAnswerUnit);
    r3 = loc_e09f98(arg_20, @selector(timestampMs));
    asm{ strd       r1, r11, [sp] };
    r8 = @selector(initWithHeartbeatTrace:currentTime:viewModel:);
    r5 = loc_e09f98(r4, r8, r10, r3);
    loc_e09f98(r11, @selector(setCurrentQuestionAnswerUnit:), r5);
    loc_e09f94(r5);
    r5 = loc_e09f98(TTFQuestionAnswerUnit, arg_18);
    r6 = arg_20;
    r0 = loc_e09f98(arg_20, @selector(timestampMs));
    asm{ strd       r1, r11, [sp] };
    r5 = loc_e09f98(r5, r8, r10, r0);
    loc_e09f98(r11, @selector(setCurrentQuestionAnswerUnit:), r5);
    loc_e09f94(r5);
    loc_e09f98(r11, arg_1C);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setDelegate:), r11);
    loc_e09f94(r4);
    r4 = @selector(questionAnswerDelegate);
    r1 = r4;
    loc_e09f98(r11, r1);
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 == 0x0) goto loc_ab6692;
    loc_e09f98(r11, r4);
    r7 = r7;
    r6 = loc_e09f9c();
    r1 = @selector(respondsToSelector:);
    arg_18 = @selector(showAnswerWithQuestionAnswerUnit:);
    r8 = loc_e09f98(r6, r1, @selector(showAnswerWithQuestionAnswerUnit:));
    r0 = r6;
    r6 = arg_20;
    loc_e09f94(r0);
    loc_e09f94(r5);
    if (r8 == 0x0) goto loc_ab6692;
    loc_e09f98(r11, r4);
    r4 = loc_e09f9c();
    loc_e09f98(r11, arg_1C);
    r7 = r7;
    r0 = loc_e09f9c();
    r1 = arg_18;
    r5 = r0;

loc_ab6680:
    loc_e09f98();
    loc_e09f94(r5);
    loc_e09f94(r4);
    goto loc_ab6692;

loc_ab60ac:
    arg_8 = r10;
    loc_e09f98(r8, r6);
    arg_14 = loc_e09f9c();
    arg_18 = r8;
    loc_e09f98();
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(questionId));
    asm{ strd       r1, r0, [sp, #0xc] };
    loc_e09f98(r11, @selector(question));
    r7 = r7;
    r6 = loc_e09f9c();
    r8 = loc_e09f98();
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(arg_14);
    if ((arg_C ^ @selector(questionId) | arg_10 ^ r8) != 0x0) goto loc_ab6410;
    goto loc_ab6136;

loc_ab6410:
    r11 = arg_18;
    r8 = @selector(authInfo);
    loc_e09f98(r11, r8);
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(answerStatus));
    loc_e09f94(r5);
    if (r6 == 0x0) {
            loc_e09f98(r11, r8);
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(setAnswerStatus:), 0x1);
            loc_e09f94(r4);
    }
    loc_e09f98(r11, @selector(curUser));
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setLifesCanUse:), 0x0);
    loc_e09f94(r4);
    r6 = arg_20;
    r1 = @selector(hasQuestion);
    r0 = loc_e09f98(r6, r1);
    r10 = arg_8;
    if (r0 == 0x0) goto loc_ab6692;
    sub_a22894(@"reveal answer, heartbeat:%@", r6, 0x0, r3);
    r4 = loc_e09f98(TTFQuestionAnswerUnit, @selector(alloc), objc_cls_ref_TTFQuestionAnswerUnit);
    r3 = loc_e09f98(r6, @selector(timestampMs));
    asm{ strd       r1, r11, [sp] };
    r4 = loc_e09f98(r4, @selector(initWithHeartbeatTrace:currentTime:viewModel:), r10, r3);
    loc_e09f98(r11, @selector(setCurrentQuestionAnswerUnit:), r4);
    loc_e09f94(r4);
    loc_e09f98(r11, arg_1C);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setDelegate:), r11);
    loc_e09f94(r4);
    r8 = @selector(questionAnswerDelegate);
    loc_e09f98(r11, r8);
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 != 0x0) {
            loc_e09f98(r11, r8);
            r7 = r7;
            r6 = loc_e09f9c();
            arg_14 = @selector(missedQuestionWithUnit:);
            r4 = loc_e09f98(r6, @selector(respondsToSelector:), @selector(missedQuestionWithUnit:));
            r0 = r6;
            r6 = arg_20;
            loc_e09f94(r0);
            loc_e09f94(r5);
            if (r4 != 0x0) {
                    loc_e09f98(r11, r8);
                    r4 = loc_e09f9c();
                    loc_e09f98(r11, arg_1C);
                    r7 = r7;
                    r5 = loc_e09f9c();
                    loc_e09f98(r4, arg_14, r5);
                    loc_e09f94(r5);
                    loc_e09f94(r4);
            }
    }
    r1 = r8;
    loc_e09f98(r11, r1);
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 == 0x0) goto loc_ab6692;
    loc_e09f98(r11, r8);
    r7 = r7;
    r4 = loc_e09f9c();
    r1 = @selector(respondsToSelector:);
    arg_14 = @selector(showAnswerWithQuestionAnswerUnit:);
    r6 = loc_e09f98(r4, r1, @selector(showAnswerWithQuestionAnswerUnit:));
    loc_e09f94(r4);
    loc_e09f94(r5);
    COND = r6 == 0x0;
    r6 = arg_20;
    if (COND) goto loc_ab6692;
    loc_e09f98(r11, r8);
    r4 = loc_e09f9c();
    loc_e09f98(r11, arg_1C);
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = arg_14;
    goto loc_ab6680;

loc_ab6136:
    r8 = arg_18;
    loc_e09f98(r8, arg_1C);
    r7 = r7;
    r4 = loc_e09f9c();
    r1 = @selector(status);
    r5 = loc_e09f98(r4, r1);
    loc_e09f94(r4);
    r10 = arg_8;
    r6 = arg_20;
    if (r5 == 0x2) goto loc_ab6692;
    sub_a22894(@"reveal answer of the same question, heartbeat:%@", r6, r2, r3);
    loc_e09f98(r8, arg_1C);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(revealAnswer:), r10);
    loc_e09f94(r4);
    r4 = @selector(questionAnswerDelegate);
    r1 = r4;
    loc_e09f98(r8, r1);
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 == 0x0) goto loc_ab6692;
    loc_e09f98(r8, r4);
    r7 = r7;
    r6 = loc_e09f9c();
    r1 = @selector(respondsToSelector:);
    r11 = @selector(showAnswerWithQuestionAnswerUnit:);
    r8 = loc_e09f98(r6, r1, r11);
    r0 = r6;
    r6 = arg_20;
    loc_e09f94(r0);
    loc_e09f94(r5);
    r5 = arg_18;
    if (r8 == 0x0) goto loc_ab6692;
    loc_e09f98(r5, r4);
    r4 = loc_e09f9c();
    loc_e09f98(r5, arg_1C);
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = r11;
    goto loc_ab6680;
}

- (void)operateCeremonyWithHeartbeat:(id)arg2 
{
    r2 = arg2;
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x70 - sp - 0x40;
    r11 = self;
    r6 = loc_e09fa4(r2, _cmd, r2);
    r5 = loc_e09f98(r6, @selector(hasCeremonyContent));
    arg_54 = *__objc_personality_v0;
    r0 = *0xab6bb4;
    arg_58 = 0x1f21c34;
    arg_5C = r7;
    arg_64 = sp;
    arg_60 = (r0 | 0x1) + 0xab6836;
    sub_e09ff8();
    if (r5 == 0x0) goto loc_ab6aec;
    goto loc_ab6846;

loc_ab6aec:
    arg_40 = 0xffffffff;
    sub_a22894(@"ceremony does not have ceremony content", 0xffffffff, r2, r3);

loc_ab6b5c:
    loc_e09f94(r6);
    r0 = loc_e09fec(&arg_3C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;

loc_ab6846:
    arg_40 = 0xffffffff;
    loc_e09f98(r11, @selector(ceremony));
    arg_40 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    loc_e09f94();
    if (r5 != 0x0) goto loc_ab6b5c;
    arg_40 = 0xffffffff;
    sub_a22894(@"ceremony with heartbeat:%@", r6, r2, r3);
    arg_40 = 0xffffffff;
    arg_18 = r6;
    loc_e09f98(r6, @selector(ceremonyContent));
    arg_40 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_40 = 0xffffffff;
    loc_e09f98(r11, @selector(setCeremony:), r5);
    loc_e09f94(r5);
    arg_40 = 0xffffffff;
    r10 = @selector(delegate);
    loc_e09f98(r11, r10);
    arg_40 = 0xffffffff;
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 != 0x0) {
            arg_40 = 0xffffffff;
            loc_e09f98(r11, r10);
            arg_40 = 0xffffffff;
            r7 = r7;
            r5 = loc_e09f9c();
            arg_40 = 0xffffffff;
            r8 = @selector(quizShowFinishedWithViewModel:);
            r4 = loc_e09f98(r5, @selector(respondsToSelector:), r8);
            loc_e09f94(r5);
            loc_e09f94(r6);
            if (r4 != 0x0) {
                    arg_40 = 0xffffffff;
                    loc_e09f98(r11, r10);
                    arg_40 = 0xffffffff;
                    r7 = r7;
                    r0 = loc_e09f9c();
                    r4 = r0;
                    arg_40 = 0xffffffff;
                    loc_e09f98();
                    loc_e09f94(r4);
            }
    }
    arg_40 = 0xffffffff;
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    arg_40 = 0xffffffff;
    r0 = loc_e09f9c();
    r8 = r0;
    arg_40 = 0xffffffff;
    loc_e09f98();
    arg_40 = 0xffffffff;
    r7 = r7;
    r6 = loc_e09f9c();
    arg_40 = 0xffffffff;
    if (loc_e09f98(r6, @selector(isLogin)) == 0x0) goto loc_ab6b02;
    goto loc_ab69b0;

loc_ab6b02:
    loc_e09f94(r6);
    loc_e09f94(r8);
    r10 = @selector(authInfo);

loc_ab6b2a:
    arg_40 = 0xffffffff;
    loc_e09f98(r11, r10);
    arg_40 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_40 = 0xffffffff;
    sub_a22894(@"ceremony authInfo:%@,status abnormal", r4, objc_cls_ref_TTFantasyService, r3);
    loc_e09f94(r4);

loc_ab6b5a:
    r6 = arg_18;
    goto loc_ab6b5c;

loc_ab69b0:
    arg_40 = 0xffffffff;
    r10 = @selector(authInfo);
    loc_e09f98(r11, r10);
    arg_40 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 == 0x0) goto loc_ab6b1e;
    goto loc_ab69d8;

loc_ab6b1e:
    loc_e09f94(r6);
    loc_e09f94(r8);
    goto loc_ab6b2a;

loc_ab69d8:
    arg_40 = 0xffffffff;
    loc_e09f98(r11, r10);
    arg_40 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_40 = 0xffffffff;
    arg_14 = loc_e09f98(r4, @selector(answerStatus));
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r6);
    loc_e09f94(r8);
    if (arg_14 == 0x0) {
            sub_e09ff4(&arg_34, r11);
            arg_14 = TTFQuizShowLiveRoomNetworkManager;
            arg_38 = &arg_1C + 0x14;
            arg_40 = 0x1;
            loc_e09f98(r11, @selector(currentActivity), &arg_1C + 0x14);
            arg_40 = 0xffffffff;
            r7 = r7;
            r0 = loc_e09f9c();
            arg_40 = 0x2;
            arg_10 = r0;
            r4 = loc_e09f98();
            r0 = *_NSConcreteStackBlock;
            arg_1C = r0;
            arg_20 = 0xc2000000;
            asm{ stm        r3!, {r0, r1, r2} };
            loc_e09ff0(arg_38, &arg_34, 0x20c605c, &arg_24);
            arg_40 = 0x3;
            var_0 = &arg_1C;
            loc_e09f98(arg_14, @selector(quizShowWinRequestOfActivityID:withCompletion:), r4, @selector(activityId));
            loc_e09f94(arg_10);
            sub_e09f90(arg_38);
            sub_e09f90(&arg_34);
    }
    else {
            arg_40 = 0xffffffff;
            loc_e09f98(r11, r10);
            arg_40 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_40 = 0xffffffff;
            sub_a22894(@"ceremony authInfo:%@,status abnormal", r4, objc_cls_ref_TTFantasyService, r3);
            loc_e09f94(r4);
    }
    goto loc_ab6b5a;
}

- (void)startCountDown
{
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sub_e09ff4((0x60 - sp - 0x40) + 0x24, self);
    arg_44 = *__objc_personality_v0;
    r0 = *0xab6f20;
    arg_48 = 0x1f21c40;
    arg_4C = &arg_C;
    arg_54 = 0x60 - sp - 0x40;
    arg_50 = (r0 | 0x1) + 0xab6d36;
    arg_30 = 0x1;
    sub_e09ff8();
    arg_8 = self;
    arg_4 = @selector(countDownDisplayLink);
    loc_e09f98(self, @selector(countDownDisplayLink));
    arg_30 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_30 = 0x2;
    var_0 = r0;
    loc_e09f98();
    loc_e09f94(var_0);
    arg_28 = 0x14 + (0x60 - sp - 0x40) + 0xc;
    r1 = *_NSConcreteStackBlock;
    arg_C = r1;
    arg_10 = 0xc2000000;
    asm{ strd       r1, r2, [sp, #0x14] };
    arg_1C = 0x20c6074;
    loc_e09ff0(arg_28, (0x60 - sp - 0x40) + 0x24, 0xab6f25, 0x14 + (0x60 - sp - 0x40) + 0xc);
    arg_30 = 0x3;
    loc_e09f98(CADisplayLink, @selector(displayLinkWithExecuteBlock:), (0x60 - sp - 0x40) + 0xc);
    arg_30 = 0xffffffff;
    r2 = loc_e09f9c();
    arg_30 = 0x4;
    var_0 = r2;
    loc_e09f98(arg_8, @selector(setCountDownDisplayLink:), r2);
    loc_e09f94(var_0);
    arg_30 = 0x5;
    asm{ ldrd       r1, r0, [sp, #0x4] };
    loc_e09f98(0x5);
    arg_30 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_30 = 0x6;
    var_0 = r0;
    loc_e09f98();
    loc_e09f94(var_0);
    arg_30 = 0x7;
    asm{ ldrd       r1, r0, [sp, #0x4] };
    loc_e09f98(0x7);
    arg_30 = 0xffffffff;
    arg_8 = loc_e09f9c();
    arg_30 = 0x8;
    loc_e09f98(NSRunLoop, @selector(currentRunLoop), 0x8);
    arg_30 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_30 = 0x9;
    r3 = *_NSRunLoopCommonModes;
    arg_4 = r5;
    loc_e09f98(arg_8, @selector(addToRunLoop:forMode:), r5, r3);
    loc_e09f94(arg_4);
    loc_e09f94(arg_8);
    sub_e09f90(arg_28);
    sub_e09f90((0x60 - sp - 0x40) + 0x24);
    r0 = loc_e09fec((0x60 - sp - 0x40) + 0x2c);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)_indexWithActivityID:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x70 - sp - 0x40;
    arg_C = r3;
    r11 = self;
    r10 = arg2;
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r4 = loc_e09f9c();
    r6 = loc_e09f98(r4, @selector(timeIntervalSince1970));
    r8 = @selector(timeIntervalSince1970);
    loc_e09f94(r4);
    r5 = loc_e09f98(r11, @selector(indexRetryIndex));
    loc_e09f98(r11, @selector(indexTrace));
    r7 = r7;
    r4 = loc_e09f9c();
    arg_54 = *__objc_personality_v0;
    r0 = *0xab71d8;
    arg_58 = 0x1f21c58;
    arg_5C = r7;
    arg_64 = sp;
    arg_60 = (r0 | 0x1) + 0xab70a8;
    sub_e09ff8();
    r8 << 0x10 | r6;
    asm{ vmul.f64   d16, d17, d16 };
    sub_e0a078();
    if (r5 != 0x0) {
            r0 = 0x2345b54;
    }
    else {
            r0 = 0x2345b50;
    }
    r1 = *r0;
    arg_40 = 0xffffffff;
    loc_e09f98(r4, r1);
    loc_e09f94(r4);
    sub_e09ff4(&arg_34, r11);
    r2 = *_NSConcreteStackBlock;
    arg_38 = &arg_10 + 0x14;
    arg_10 = r2;
    arg_14 = 0xc2000000;
    asm{ stm        r2!, {r0, r1, r3} };
    loc_e09ff0(arg_38, &arg_34, &arg_18, 0x20c608c);
    asm{ strd       r10, r3, [sp, #0x28] };
    arg_40 = 0x1;
    var_0 = &arg_10;
    loc_e09f98(TTFQuizShowLiveRoomNetworkManager, @selector(quizShowLiveRoomIndexRequestOfActivityID:withCompletion:), r10, arg_C);
    arg_40 = 0xffffffff;
    loc_e09f9c();
    loc_e09f94();
    sub_e09f90(arg_38);
    sub_e09f90(&arg_34);
    r0 = loc_e09fec(&arg_3C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)_getStreamInfo
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x60 - sp - 0x40;
    r4 = self;
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r5 = loc_e09f9c();
    r10 = loc_e09f98(r5, @selector(timeIntervalSince1970));
    loc_e09f94(r5);
    r8 = loc_e09f98(r4, @selector(getStreamRetryIndex));
    loc_e09f98(r4, @selector(fetchLiveInfoTrace));
    r7 = r7;
    r5 = loc_e09f9c();
    arg_44 = *__objc_personality_v0;
    r0 = *0xab7d18;
    arg_48 = 0x1f21c60;
    arg_4C = r7;
    arg_54 = sp;
    arg_50 = (r0 | 0x1) + 0xab7bac;
    sub_e09ff8();
    @selector(timeIntervalSince1970) << 0x10 | r10;
    asm{ vmul.f64   d16, d17, d16 };
    sub_e0a078();
    if (r8 != 0x0) {
            r0 = 0x2345b54;
    }
    else {
            r0 = 0x2345b50;
    }
    r1 = *r0;
    arg_30 = 0xffffffff;
    loc_e09f98(r5, r1);
    loc_e09f94(r5);
    sub_e09ff4(&arg_24, r4);
    arg_8 = TTFQuizShowLiveRoomNetworkManager;
    arg_28 = &arg_C + 0x14;
    arg_30 = 0x1;
    loc_e09f98(r4, @selector(currentActivity), &arg_C + 0x14);
    arg_30 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_30 = 0x2;
    arg_4 = r0;
    r4 = loc_e09f98();
    r0 = *_NSConcreteStackBlock;
    arg_C = r0;
    arg_10 = 0xc2000000;
    asm{ stm        r3!, {r0, r1, r2} };
    loc_e09ff0(arg_28, &arg_24, 0x20c60a4, &arg_14);
    arg_30 = 0x3;
    var_0 = &arg_C;
    loc_e09f98(arg_8, @selector(quizShowGetStreamOfGroupID:withCompletion:), r4, SAR(r4, 0x1f));
    loc_e09f94(arg_4);
    sub_e09f90(arg_28);
    sub_e09f90(&arg_24);
    r0 = loc_e09fec(&arg_2C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (id)_getRandomIndexArrayForCount:(id)arg2 
{
    r1 = _cmd;
    r7 = &arg_C;
    r10 = arg2;
    if (r10 >= 0x1) {
            loc_e09f98(NSMutableArray, @selector(arrayWithCapacity:), r10);
            r7 = r7;
            r8 = loc_e09f9c();
            r4 = 0x0;
            r11 = @selector(addObject:);
            r5 = @selector(numberWithInteger:);
            do {
                    loc_e09f98(NSNumber, r5, r4);
                    r7 = r7;
                    r6 = loc_e09f9c();
                    loc_e09f98(r8, r11, r6);
                    loc_e09f94(r6);
                    r4 = r4 + 0x1;
            } while (r10 != r4);
            r1 = @selector(sortedArrayUsingComparator:);
            loc_e09f98(r8, r1, int ^(void * _block, struct NSNumber * arg1, struct NSNumber * arg2) {
        r4 = loc_e09fa4(arg1, arg1, arg2);
        r5 = loc_e09fa4(arg2);
        r0 = sub_e0a998(0x2);
        if (r0 != 0x0) {
        }
        else {
        }
        r6 = loc_e09f98();
        loc_e09f94(r5);
        loc_e09f94(r4);
        r0 = r6;
        return r0;
    });
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f94(r8);
    }
    else {
            r4 = 0x0;
    }
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, r1);
    return r0;
}

- (void)quizShowLiveRoomIndexWithActivityID:(id)arg2 
{
    r8 = r3;
    sub_a22894(@"quizshow live room index with activityID:%lld", arg2, r8, r3);
    loc_e09f98(self, @selector(setIndexRetryIndex:), 0x0);
    loc_e09f98(TTFIndexTrace, @selector(alloc), objc_cls_ref_TTFIndexTrace);
    r4 = loc_e09f98();
    loc_e09f98(self, @selector(setIndexTrace:), r4);
    loc_e09f94(r4);
    loc_e09f98(self, @selector(indexTrace));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(setAid:), arg2, r8);
    loc_e09f94(r5);
    loc_e09f98(self, @selector(indexTrace));
    r4 = loc_e09f9c();
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r5 = loc_e09f9c();
    @selector(timeIntervalSince1970) << 0x10 | loc_e09f98(r5, @selector(timeIntervalSince1970));
    asm{ vmul.f64   d16, d17, d16 };
    r2 = sub_e0a078();
    loc_e09f98(r4, @selector(setFt:), r2, 0x40000000 >> 0x10);
    loc_e09f94(r5);
    loc_e09f94(r4);
    r1 = @selector(_indexWithActivityID:);
    r0 = self;
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

- (void)quizShowLiveRoomIndexInfo
{
    r1 = *_NSConcreteStackBlock;
    var_0 = r1;
    arg_4 = 0xc2000000;
    asm{ strd       r1, r3, [sp, #0x8] };
    arg_10 = 0x20c60e0;
    r0 = loc_e09fa4(self, 0x0, 0x20c60e0, 0xab8559, lr, r7, r4);
    arg_14 = r0;
    loc_e09f98(TTFQuizShowLiveRoomNetworkManager, @selector(quizShowLiveRoomIndexInfoRequestWithCompletion:), sp - 0x18);
    loc_e09f9c();
    loc_e09f94();
    r0 = loc_e09f94(arg_14);
    return;
}

- (void)quizShowLiveRoomInit
{
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sub_a22894(@"quiz show live room init start", _cmd, r2, r3);
    sub_e09ff4((0x60 - sp - 0x40) + 0x24, self);
    r0 = *__objc_personality_v0;
    arg_28 = 0x14 + (0x60 - sp - 0x40) + 0xc;
    arg_8 = TTFQuizShowLiveRoomNetworkManager;
    arg_44 = r0;
    r0 = *0xab88c8;
    arg_48 = 0x1f21c6c;
    arg_4C = &arg_C;
    arg_54 = 0x60 - sp - 0x40;
    arg_50 = (r0 | 0x1) + 0xab87ca;
    arg_30 = 0x1;
    sub_e09ff8();
    loc_e09f98(self, @selector(currentActivity));
    arg_30 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_30 = 0x2;
    arg_4 = r0;
    r4 = loc_e09f98();
    r0 = *_NSConcreteStackBlock;
    arg_C = r0;
    arg_10 = 0xc2000000;
    asm{ stm        r3!, {r0, r1, r2} };
    loc_e09ff0(arg_28, (0x60 - sp - 0x40) + 0x24, 0x20c60f8, (0x60 - sp - 0x40) + 0x14);
    arg_30 = 0x3;
    var_0 = (0x60 - sp - 0x40) + 0xc;
    loc_e09f98(arg_8, @selector(quizShowLiveRoomInitRequestOfActivityID:withCompletion:), r4, @selector(activityId));
    loc_e09f94(arg_4);
    sub_e09f90(arg_28);
    sub_e09f90((0x60 - sp - 0x40) + 0x24);
    r0 = loc_e09fec((0x60 - sp - 0x40) + 0x2c);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)setNotNeedInit
{
    r0 = self;
    r1 = @selector(setIsLiveRoomInitSuccess:);
    r0 = loc_1be4138(r0, r1);
    return;
}

- (void)getStreamInfo
{
    r7 = &arg_C;
    r4 = self;
    r0 = loc_e09f98(r4, @selector(isFetchingStreamInfo));
    if (r0 != 0x0) {
            return;
    }
    else {
            loc_e09f98(r4, @selector(setIsFetchingStreamInfo:), 0x1);
            loc_e09f98(r4, @selector(setGetStreamRetryIndex:), 0x0);
            loc_e09f98(TTFFetchLiveInfoTrace, @selector(alloc), objc_cls_ref_TTFFetchLiveInfoTrace);
            r5 = loc_e09f98();
            loc_e09f98(r4, @selector(setFetchLiveInfoTrace:), r5);
            loc_e09f94(r5);
            loc_e09f98(r4, @selector(fetchLiveInfoTrace));
            r6 = loc_e09f9c();
            r2 = loc_e09f98(r4, @selector(activityStatus));
            loc_e09f98(r6, @selector(setStatus:), r2);
            loc_e09f94(r6);
            loc_e09f98(r4, @selector(fetchLiveInfoTrace));
            r6 = loc_e09f9c();
            loc_e09f98(r4, @selector(currentActivity));
            r5 = loc_e09f9c();
            r2 = loc_e09f98(r5, @selector(activityId));
            loc_e09f98(r6, @selector(setAid:), r2, @selector(activityId));
            loc_e09f94(r5);
            loc_e09f94(r6);
            loc_e09f98(r4, @selector(fetchLiveInfoTrace));
            r5 = loc_e09f9c();
            loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
            r6 = loc_e09f9c();
            @selector(timeIntervalSince1970) << 0x10 | loc_e09f98(r6, @selector(timeIntervalSince1970));
            asm{ vmul.f64   d16, d17, d16 };
            r2 = sub_e0a078();
            loc_e09f98(r5, @selector(setFt:), r2, 0x40000000 >> 0x10);
            loc_e09f94(r6);
            loc_e09f94(r5);
            sub_a22894(@"start to get live stream info", @selector(setFt:), r2, 0x40000000 >> 0x10);
            r1 = @selector(_getStreamInfo);
            r0 = r4;
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            r0 = loc_1be4138(r0, r1);
    }
    return;
}

- (void)updateInviteCodeInfoWithCompletionBlock:(id)arg2 
{
    arg_14 = loc_e09fa4(arg2, _cmd, arg2);
    arg_18 = TTFShareNetworkManager;
    loc_e09f98(TTFantasyService, @selector(sharedService));
    arg_1C = loc_e09f9c();
    loc_e09f98();
    arg_10 = loc_e09f9c();
    loc_e09f98();
    arg_C = loc_e09f9c();
    arg_8 = loc_e09f98();
    loc_e09f98(TTFantasyService, @selector(sharedService));
    r0 = loc_e09f9c();
    r8 = r0;
    loc_e09f98();
    r10 = loc_e09f9c();
    loc_e09f98(r10, @selector(getDeviceID));
    r6 = loc_e09f9c();
    r11 = loc_e09f98(r6, @selector(longLongValue));
    arg_20 = *_NSConcreteStackBlock;
    arg_24 = 0xc2000000;
    arg_28 = 0x0;
    arg_2C = 0xab8f7d;
    arg_30 = 0x20c6128;
    arg_34 = arg_14;
    arg_14 = loc_e09fa4(arg_14, 0x2345c34);
    asm{ strd       r4, r0, [sp] };
    loc_e09f98(arg_18, @selector(requestInviteCodeWithAppID:deviceID:completion:), arg_8, r11);
    loc_e09f94(r6);
    loc_e09f94(r10);
    loc_e09f94(r8);
    loc_e09f94(arg_C);
    loc_e09f94(arg_10);
    loc_e09f94(arg_1C);
    loc_e09f94(arg_34);
    r0 = loc_e09f94(arg_14);
    Pop();
    Pop();
    Pop();
    return;
}

- (void)recoverLifesIfNeed
{
    r7 = &arg_C;
    sp = sp - 0x4;
    r4 = self;
    r6 = @selector(netFailedQuestionID);
    r1 = r6;
    r0 = loc_e09f98(r4, r1);
    r0 = r0 + 0x1;
    if (r0 != 0x0) {
            sub_a22894(@"tell remote net failed question id", r1, r2, r3);
            loc_e09f98(TTFQuestionStruct, @selector(alloc), objc_cls_ref_TTFQuestionStruct);
            r5 = loc_e09f98();
            r2 = loc_e09f98(r4, r6);
            loc_e09f98(r5, @selector(setQuestionId:), r2, SAR(r2, 0x1f));
            loc_e09f98(r4, @selector(currentActivity));
            r4 = loc_e09f9c();
            r2 = loc_e09f98(r4, @selector(activityId));
            var_0 = r5;
            r1 = @selector(recoverLifesOfActivityID:question:);
            loc_e09f98(TTFQuizShowLiveRoomNetworkManager, r1, r2, @selector(activityId));
            loc_e09f94(r4);
            r0 = r5;
            Pop();
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

- (void)leaveDashboard
{
    loc_e09f98(self, @selector(currentActivity));
    r6 = loc_e09f9c();
    r2 = loc_e09f98(r6, @selector(activityId));
    arg_4 = void ^(void * _block, struct TTFanswer_v1_leave_response * arg1, struct NSError * arg2) {
        r0 = _block;
        return;
    };
    var_0 = 0x0;
    loc_e09f98(TTFQuizShowLiveRoomNetworkManager, @selector(quizShowLiveRoomLeaveRequestOfActivityID:question:completion:), r2, @selector(activityId));
    loc_e09f94(r6);
    sub_a22894(@"leave dash room", @selector(quizShowLiveRoomLeaveRequestOfActivityID:question:completion:), r2, @selector(activityId));
    loc_e09f98(TTFHeartBeatService, @selector(sharedService));
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(setDelegate:), 0x0);
    loc_e09f94(r6);
    loc_e09f98(TTFHeartBeatService, @selector(sharedService));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(stop));
    loc_e09f94(r5);
    loc_e09f98(self, @selector(countDownDisplayLink));
    r7 = &arg_C;
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(invalidate));
    loc_e09f94(r5);
    r1 = @selector(setCountDownDisplayLink:);
    r0 = self;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be4138(r0, r1);
    return;
}

- (id)commentRefreshInterval
{
    r7 = &arg_C;
    sp = sp - 0x4;
    r10 = self;
    r5 = @selector(generalControl);
    loc_e09f98(r10, r5);
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 != 0x0) {
            loc_e09f98(r10, r5);
            r7 = r7;
            r4 = loc_e09f9c();
            var_0 = @selector(commentIntervalMs);
            r11 = loc_e09f98(r4, @selector(commentIntervalMs));
            r8 = @selector(commentIntervalMs);
            loc_e09f94(r4);
            loc_e09f94(r6);
            if (r0 >= 0x0) {
                    loc_e09f98(r10, r5);
                    r4 = loc_e09f9c();
                    r5 = loc_e09f98();
                    loc_e09f94(r4);
                    r0 = sub_e0a5a0();
            }
            else {
                    r0 = 0x3;
            }
    }
    else {
            loc_e09f94(r6);
            r0 = 0x3;
    }
    Pop();
    Pop();
    Pop();
    return r0;
}

- (void)signUpWithCompletionBlock:(id)arg2 
{
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    arg_14 = loc_e09fa4(arg2, _cmd, arg2);
    sub_e09ff4((0x70 - sp - 0x40) + 0x34, self);
    arg_54 = *__objc_personality_v0;
    r0 = *0xab95f8;
    arg_58 = 0x1f21c78;
    arg_5C = &arg_C;
    arg_64 = 0x70 - sp - 0x40;
    arg_60 = (r0 | 0x1) + 0xab9488;
    arg_40 = 0x1;
    sub_e09ff8();
    arg_10 = self;
    arg_C = @selector(currentActivity);
    loc_e09f98(self, @selector(currentActivity));
    arg_40 = 0xffffffff;
    loc_e09f9c();
    arg_40 = 0x2;
    asm{ strd       r1, r0, [sp, #0x4] };
    r2 = loc_e09f98();
    arg_40 = 0x3;
    sub_a22894(@"sign up activityID:%lld", r2, @selector(activityId), @selector(activityId));
    loc_e09f94(arg_8);
    arg_38 = 0x18 + (0x70 - sp - 0x40) + 0x18;
    arg_8 = TTFQuizShowLiveRoomNetworkManager;
    arg_40 = 0x4;
    asm{ ldrd       r1, r0, [sp, #0xc] };
    loc_e09f98(0x4, 0x18 + (0x70 - sp - 0x40) + 0x18);
    arg_40 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_40 = 0x5;
    arg_10 = r0;
    r4 = loc_e09f98();
    r0 = *_NSConcreteStackBlock;
    arg_18 = r0;
    arg_1C = 0xc2000000;
    asm{ stm        r3!, {r0, r1, r2} };
    loc_e09ff0(arg_38, (0x70 - sp - 0x40) + 0x34, 0x20c6164, (0x70 - sp - 0x40) + 0x20);
    r0 = loc_e09fa4(arg_14);
    arg_14 = r0;
    arg_2C = r0;
    arg_40 = 0x6;
    var_0 = (0x70 - sp - 0x40) + 0x18;
    loc_e09f98(arg_8, @selector(signUpOfActivityID:completion:), r4, arg_4);
    loc_e09f94(arg_10);
    loc_e09f94(arg_2C);
    sub_e09f90(arg_38);
    sub_e09f90((0x70 - sp - 0x40) + 0x34);
    loc_e09f94(arg_14);
    r0 = loc_e09fec((0x70 - sp - 0x40) + 0x3c);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;
}

- (void)userAnswerErrorOfQuestionAnswerUnit:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x10;
    r10 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(r10, @selector(question));
    r4 = loc_e09f9c();
    r11 = @selector(authInfo);
    loc_e09f98(self, r11);
    r5 = loc_e09f9c();
    arg_C = self;
    arg_4 = @selector(curUser);
    loc_e09f98(self, @selector(curUser));
    r6 = loc_e09f9c();
    r3 = r6;
    sub_a22894(@"user answer error of question:%@, auth info:%@, curUser:%@", r4, r5, r3);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r4 = loc_e09f9c();
    r5 = @selector(delegate);
    loc_e09f98(r4, r5);
    r7 = r7;
    r8 = loc_e09f9c();
    if (loc_e09f98(r8, @selector(isLogin)) == 0x0) goto loc_ab99b0;
    goto loc_ab97fa;

loc_ab99b0:
    loc_e09f94(r8);

loc_ab99b6:
    loc_e09f94(r4);

loc_ab99ce:
    loc_e09f98(r10, @selector(answerTrace));
    r4 = loc_e09f9c();
    r1 = @selector(traceDict);
    loc_e09f98(r4, r1);
    r5 = loc_e09f9c();
    sub_a22caa();
    loc_e09f94(r5);
    loc_e09f94(r4);
    r0 = r10;
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

loc_ab97fa:
    arg_8 = r10;
    loc_e09f98(arg_C, r11);
    r7 = r7;
    r10 = loc_e09f9c();
    if (r10 == 0x0) goto loc_ab99be;
    goto loc_ab9816;

loc_ab99be:
    loc_e09f94(r8);
    loc_e09f94(r4);
    r10 = arg_8;
    goto loc_ab99ce;

loc_ab9816:
    var_0 = r5;
    loc_e09f98(arg_C, r11);
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(answerStatus));
    loc_e09f94(r5);
    loc_e09f94(r10);
    loc_e09f94(r8);
    loc_e09f94(r4);
    r10 = arg_8;
    if (r6 != 0x0) goto loc_ab99ce;
    r8 = arg_4;
    loc_e09f98(arg_C, r8);
    r7 = r7;
    r5 = loc_e09f9c();
    r4 = @selector(lifesCanUse);
    r1 = r4;
    r6 = loc_e09f98(r5, r1);
    loc_e09f94(r5);
    if (r6 < 0x1) goto loc_ab9a22;
    goto loc_ab9894;

loc_ab9a22:
    sub_a22894(@"error change auth info status wrong", r1, objc_cls_ref_TTFantasyService, r3);
    loc_e09f98(arg_C, r11);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setAnswerStatus:), 0x1);
    loc_e09f94(r4);
    r4 = @selector(questionAnswerDelegate);
    loc_e09f98(arg_C, r4);
    r7 = r7;
    r6 = loc_e09f9c();
    if (r6 == 0x0) goto loc_ab99ce;
    loc_e09f98(arg_C, r4);
    r7 = r7;
    r5 = loc_e09f9c();
    r8 = @selector(didFailedWithQuestionAnswerUnit:);
    r10 = loc_e09f98(r5, @selector(respondsToSelector:), r8);
    loc_e09f94(r5);
    loc_e09f94(r6);
    COND = r10 == 0x0;
    r10 = arg_8;
    if (COND) goto loc_ab99ce;
    loc_e09f98(arg_C, r4);
    r7 = r7;
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    goto loc_ab99b6;

loc_ab9894:
    sub_a22894(@"revival used life", r1, objc_cls_ref_TTFantasyService, r3);
    loc_e09f98(r10, @selector(answerTrace));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(setUseLife:), 0x1);
    loc_e09f94(r5);
    r6 = arg_C;
    loc_e09f98(r6, r8);
    r0 = loc_e09f9c();
    r5 = r0;
    r0 = loc_e09f98();
    loc_e09f98(r5, @selector(setLifesCanUse:), r0 - 0x1);
    loc_e09f94(r5);
    loc_e09f98(r6, r8);
    r4 = loc_e09f9c();
    r0 = loc_e09f98(r4, @selector(lifes));
    loc_e09f98(r4, @selector(setLifes:), r0 - 0x1);
    loc_e09f94(r4);
    loc_e09f98(r6, var_0);
    r7 = r7;
    r4 = loc_e09f9c();
    if (r4 == 0x0) goto loc_ab99ce;
    loc_e09f98(arg_C, var_0);
    r7 = r7;
    r5 = loc_e09f9c();
    r8 = @selector(quizShowUsedLife);
    r6 = loc_e09f98(r5, @selector(respondsToSelector:), r8);
    loc_e09f94(r5);
    loc_e09f94(r4);
    if (r6 == 0x0) goto loc_ab99ce;
    loc_e09f98(arg_C, var_0);
    r7 = r7;
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    goto loc_ab99b6;
}

- (void)userAnswerExceptionOfQuestionAnswerUnit:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x4;
    r10 = self;
    loc_e09f98(arg2, @selector(question), arg2);
    r5 = loc_e09f9c();
    r8 = @selector(authInfo);
    loc_e09f98(r10, r8);
    r4 = loc_e09f9c();
    loc_e09f98(r10, @selector(curUser));
    r6 = loc_e09f9c();
    r3 = r6;
    sub_a22894(@"user answer exception of question:%@, auth info:%@, curUser:%@", r5, r4, r3);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r11 = loc_e09f9c();
    loc_e09f98(r11, @selector(delegate));
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = @selector(isLogin);
    if (loc_e09f98(r5, r1) != 0x0) {
            r1 = r8;
            loc_e09f98(r10, r1);
            r7 = r7;
            r4 = loc_e09f9c();
            if (r4 != 0x0) {
                    var_0 = r8;
                    loc_e09f98(r10, r8);
                    r7 = r7;
                    r6 = loc_e09f9c();
                    r1 = @selector(answerStatus);
                    r8 = loc_e09f98(r6, r1);
                    loc_e09f94(r6);
                    loc_e09f94(r4);
                    loc_e09f94(r5);
                    loc_e09f94(r11);
                    asm{ ittt       ne };
                    if (r8 != 0x0) {
                            sp = &arg_4;
                    }
                    if (CPU_FLAGS & E) {
                                Pop();
                                Pop();
                                Pop();
                    }
                    if (CPU_FLAGS & E) {
                            return;
                    }
                    sub_a22894(@"exception change auth info status wrong", r1, objc_cls_ref_TTFantasyService, r3);
                    loc_e09f98(r10, var_0);
                    r7 = r7;
                    r4 = loc_e09f9c();
                    r1 = @selector(setAnswerStatus:);
                    loc_e09f98(r4, r1, 0x1);
                    r0 = r4;
            }
            else {
                    loc_e09f94(r5);
                    r0 = r11;
            }
    }
    else {
            loc_e09f94(r5);
            r0 = r11;
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

- (void)userNetworkErrorOfQuestionAnswerUnit:(id)arg2 
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
    if (CPU_FLAGS & E) {
            r7 = &arg_C;
    }
    if (CPU_FLAGS & E) {
                Push(r8);
                Push(r10);
                Push(r11);
    }
    sp = sp - 0x4;
    r11 = r0;
    r5 = loc_e09fa4(r2);
    r10 = @selector(question);
    loc_e09f98(r5, r10);
    r4 = loc_e09f9c();
    loc_e09f98(r11, @selector(curUser));
    r6 = loc_e09f9c();
    sub_a22894(@"user network error, will be kicked out, question:%@, curUser:%@", r4, r6, r3);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f98(r11, @selector(authInfo));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(setAnswerStatus:), 0x1);
    loc_e09f94(r4);
    loc_e09f98(r11, @selector(setKickoutNetError:), 0x1);
    loc_e09f98(r5, r10);
    r4 = loc_e09f9c();
    r2 = loc_e09f98(r4, @selector(questionId));
    loc_e09f98(r11, @selector(setNetFailedQuestionID:), r2);
    loc_e09f94(r4);
    r6 = @selector(questionAnswerDelegate);
    r1 = r6;
    loc_e09f98(r11, r1);
    r7 = r7;
    r4 = loc_e09f9c();
    if (r4 != 0x0) {
            loc_e09f98(r11, r6);
            r7 = r7;
            r0 = loc_e09f9c();
            r10 = r5;
            r5 = r0;
            r1 = @selector(respondsToSelector:);
            var_0 = @selector(networkFailedWithQuestionAnswerUnit:);
            r8 = loc_e09f98(r5, r1, @selector(networkFailedWithQuestionAnswerUnit:));
            r0 = r5;
            r5 = r10;
            loc_e09f94(r0);
            loc_e09f94(r4);
            if (r8 != 0x0) {
                    loc_e09f98(r11, r6);
                    r7 = r7;
                    r0 = loc_e09f9c();
                    r1 = var_0;
                    r4 = r0;
                    loc_e09f98();
                    loc_e09f94(r4);
            }
    }
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

- (void)checkInvitationCode:(id)arg2 completionBlock:(id)arg3 
{
    arg_24 = self;
    arg_1C = loc_e09fa4(arg2, _cmd, arg2, arg3, r11, r10, r8, lr, r7, r6, r5, r4);
    arg_20 = loc_e09fa4(arg3);
    loc_e09f98(TTFclient_v1_check_invite_request, @selector(alloc), objc_cls_ref_TTFclient_v1_check_invite_request);
    r11 = loc_e09f98();
    loc_e09f98(TTFantasyService, @selector(sharedService));
    r8 = loc_e09f9c();
    loc_e09f98(r8, @selector(delegate));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(getAppID));
    r10 = loc_e09f9c();
    r2 = loc_e09f98(r10, @selector(intValue));
    loc_e09f98(r11, @selector(setAppId:), r2);
    loc_e09f94(r10);
    loc_e09f94(r5);
    loc_e09f94(r8);
    loc_e09f98(TTFantasyService, @selector(sharedService));
    r0 = loc_e09f9c();
    r8 = r0;
    loc_e09f98();
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(getDeviceID));
    r5 = loc_e09f9c();
    r2 = loc_e09f98(r5, @selector(longLongValue));
    loc_e09f98(r11, @selector(setDeviceId:), r2, @selector(longLongValue));
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(r8);
    arg_18 = r11;
    loc_e09f98(r11, @selector(setInvitationCode:), arg_1C);
    loc_e09f94(arg_1C);
    loc_e09f98(TTNetworkManager, @selector(shareInstance), objc_cls_ref_TTNetworkManager);
    r6 = loc_e09f9c();
    loc_e09f98(TTFURLSetting, @selector(checkInvicationCodeURL), objc_cls_ref_TTFURLSetting);
    arg_1C = loc_e09f9c();
    loc_e09f98(r11, @selector(data));
    r4 = loc_e09f9c();
    r10 = loc_e09f98(TTFBinaryHTTPRequestSerializer, @selector(class));
    r11 = loc_e09f98(TTFBinaryResponseSerializer, @selector(class));
    arg_28 = *_NSConcreteStackBlock;
    arg_2C = 0xc2000000;
    arg_30 = 0x0;
    arg_34 = 0xaba0b1;
    arg_38 = 0x20c617c;
    arg_3C = loc_e09fa4(arg_24);
    arg_40 = arg_20;
    arg_24 = loc_e09fa4(arg_20, 0x2345834);
    arg_14 = (sp - 0x44) + 0x28;
    asm{ strd       r10, r11, [sp, #0x8] };
    arg_10 = 0x1;
    arg_4 = 0x1;
    var_0 = @"POST";
    loc_e09f98(r6, @selector(requestForBinaryWithURL:params:method:needCommonParams:requestSerializer:responseSerializer:autoResume:callback:), arg_1C, r4);
    loc_e09f9c();
    loc_e09f94();
    loc_e09f94(r4);
    loc_e09f94(arg_1C);
    loc_e09f94(r6);
    loc_e09f94(arg_40);
    loc_e09f94(arg_3C);
    loc_e09f94(arg_24);
    r0 = loc_e09f94(arg_18);
    Pop();
    Pop();
    Pop();
    return;
}

- (void)didReceiveHeartbeat:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x14;
    r4 = self;
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r7 = r7;
    r6 = loc_e09f9c();
    r0 = loc_e09f98(r6, @selector(isConfigDebugTool));
    arg_10 = r4;
    if (r0 == 0x0) goto loc_aba3d4;
    goto loc_aba366;

loc_aba3d4:

loc_aba3d6:
    loc_e09f94();

loc_aba3da:
    r1 = @selector(heartbeat);
    loc_e09f98(r8, r1);
    r7 = r7;
    r10 = loc_e09f9c();
    if (r10 == 0x0) goto loc_aba73e;
    goto loc_aba3fc;

loc_aba73e:
    loc_e09f94(r10);
    r0 = r8;
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

loc_aba3fc:
    r11 = loc_e09f98(r10, @selector(activityId));
    r6 = @selector(activityId);
    loc_e09f98(arg_10, @selector(currentActivity));
    r7 = r7;
    r5 = loc_e09f9c();
    r4 = loc_e09f98();
    arg_C = r8;
    loc_e09f94(r5);
    r8 = arg_C;
    r1 = r11 ^ r4;
    if ((r6 ^ @selector(activityId) | r1) != 0x0) goto loc_aba73e;
    r4 = @selector(currentUsers);
    loc_e09f98(r10, r4);
    r5 = arg_10;
    if (r4 >= 0x0) {
            r2 = loc_e09f98(r10, r4);
            r3 = r4;
            loc_e09f98(r5, @selector(setCurUsersCount:), r2, r3);
    }
    r6 = @selector(activityStatus);
    r4 = loc_e09f98(r5, r6);
    r8 = @selector(currentActivityStatus);
    if (r4 != loc_e09f98(r10, r8)) {
            r4 = loc_e09f98(r5, r6);
            r2 = loc_e09f98(r10, r8);
            sub_a22894(@"activity status changed from:%d,to:%d", r4, r2, r3);
            r2 = loc_e09f98(r10, r8);
            loc_e09f98(r5, @selector(setActivityStatus:), r2);
            if ((loc_e09f98(r5, r6) == 0x2) || (loc_e09f98(r5, r6) == 0x6)) {
                    loc_e09f98(TTFNormalTrace, @selector(alloc), objc_cls_ref_TTFNormalTrace);
                    r11 = loc_e09f98();
                    loc_e09f98(r11, @selector(traceDict));
                    r7 = r7;
                    r0 = loc_e09f9c();
                    r4 = r6;
                    r6 = r0;
                    sub_a22caa();
                    r0 = r6;
                    r6 = r4;
                    loc_e09f94(r0);
                    loc_e09f94(r11);
            }
            else {
                    if (loc_e09f98(r5, r6) == 0x5) {
                            loc_e09f98(TTFNormalTrace, @selector(alloc), objc_cls_ref_TTFNormalTrace);
                            r11 = loc_e09f98();
                            loc_e09f98(r11, @selector(traceDict));
                            r7 = r7;
                            r0 = loc_e09f9c();
                            r4 = r6;
                            r6 = r0;
                            sub_a22caa();
                            r0 = r6;
                            r6 = r4;
                            loc_e09f94(r0);
                            loc_e09f94(r11);
                    }
            }
            r11 = @selector(delegate);
            loc_e09f98(r5, r11);
            r7 = r7;
            r4 = loc_e09f9c();
            if (r4 != 0x0) {
                    loc_e09f98(r5, r11);
                    r7 = r7;
                    r0 = loc_e09f9c();
                    arg_4 = r6;
                    r6 = r0;
                    var_0 = @selector(quizShowActivityChangeToStatus:);
                    r0 = loc_e09f98(r6, @selector(respondsToSelector:), @selector(quizShowActivityChangeToStatus:));
                    arg_8 = r8;
                    r8 = r5;
                    r5 = r0;
                    r0 = r6;
                    r6 = arg_4;
                    loc_e09f94(r0);
                    loc_e09f94(r4);
                    COND = r5 == 0x0;
                    r5 = r8;
                    r8 = arg_8;
                    if (!COND) {
                            loc_e09f98(r5, r11);
                            r7 = r7;
                            r4 = loc_e09f9c();
                            r0 = loc_e09f98(r5, r6);
                            loc_e09f98(r4, var_0, r0);
                            loc_e09f94(r4);
                    }
            }
    }
    r0 = loc_e09f98(r10, r8);
    if (r0 == 0x6) goto loc_aba63e;
    goto loc_aba626;

loc_aba63e:
    loc_e09f98(r5, @selector(operateCeremonyWithHeartbeat:), r10);
    r8 = arg_C;

loc_aba66c:
    if (loc_e09f98(r10, @selector(hasGeneralControl)) != 0x0) {
            loc_e09f98(r10, @selector(generalControl));
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f98(r5, @selector(setGeneralControl:), r4);
            loc_e09f94(r4);
            r2 = loc_e09f98(r5, @selector(commentRefreshInterval));
            loc_e09f98(r5, @selector(setCommentInterval:), r2);
    }
    r6 = r5;
    r1 = @selector(livingStreamURLArray_Count);
    if (loc_e09f98(r10, r1) != 0x0) {
            loc_e09f98(r10, @selector(livingStreamURLArray));
            r7 = r7;
            r4 = loc_e09f9c();
            r5 = loc_e09f98(r4, @selector(copy));
            r1 = @selector(setLivingStreamUrls:);
            loc_e09f98(r6, r1, r5);
            loc_e09f94(r5);
            loc_e09f94(r4);
    }
    goto loc_aba73e;

loc_aba626:
    r8 = arg_C;
    if (r0 == 0x4) goto loc_aba658;
    goto loc_aba62e;

loc_aba658:
    r0 = 0x2345c7c;

loc_aba662:
    loc_e09f98(r5, *r0, r8);
    goto loc_aba66c;

loc_aba62e:
    if (r0 != 0x3) goto loc_aba66c;
    r0 = 0x2345c78;
    goto loc_aba662;

loc_aba366:
    r11 = @selector(debugDelegate);
    loc_e09f98(r4, r11);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = @selector(debug_didReceiveHeartbeat:);
    r10 = loc_e09f98(r4, @selector(respondsToSelector:), r5);
    loc_e09f94(r4);
    loc_e09f94(r6);
    if (r10 == 0x0) goto loc_aba3da;
    loc_e09f98(arg_10, r11);
    r7 = r7;
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    goto loc_aba3d6;
}

- (id)isActivityGetOn
{
    r4 = self;
    r5 = @selector(activityStatus);
    if ((loc_e09f98(r4, r5) == 0x2) || (loc_e09f98(r4, r5) == 0x3)) {
            r0 = 0x1;
            return r0;
    }
    else {
            if (loc_e09f98(r4, r5) == 0x4) {
                    r0 = 0x1;
                    return r0;
            }
            else {
                    r0 = loc_e09f98(r4, r5);
                    r1 = 0x0;
                    asm{ it         eq };
                    if (r0 == 0x6) {
                            r1 = 0x1;
                    }
                    r0 = r1;
                    return r0;
            }
    }
    return r0;
}

- (id)isActivityEnd
{
    r0 = self;
    if (CPU_FLAGS & NE) {
                Push(r4);
                Push(r5);
                Push(r7);
                Push(lr);
    }
    r4 = r0;
    r5 = @selector(activityStatus);
    if ((loc_e09f98(r4, r5) == 0x0) || (loc_e09f98(r4, r5) == 0x1)) {
            r0 = 0x0;
            return r0;
    }
    else {
            if ((loc_e09f98(r4, r5) == 0x2) || (loc_e09f98(r4, r5) == 0x3)) {
                    r0 = 0x0;
                    return r0;
            }
            else {
                    if (loc_e09f98(r4, r5) == 0x4) {
                            r0 = 0x0;
                            return r0;
                    }
                    else {
                            r0 = loc_e09f98(r4, r5);
                            r1 = 0x0;
                            asm{ it         ne };
                            if (r0 != 0x6) {
                                    r1 = 0x1;
                            }
                            r0 = r1;
                            return r0;
                    }
            }
    }
    return r0;
}

- (void)checkActivityStatus
{
    r0 = self;
    if (CPU_FLAGS & E) {
                Push(r4);
                Push(r5);
                Push(r6);
                Push(r7);
                Push(lr);
    }
    r7 = &arg_C;
    sp = sp - 0x4;
    r11 = r0;
    r10 = @selector(currentQuestionAnswerUnit);
    loc_e09f98(r11, r10);
    r7 = r7;
    r6 = loc_e09f9c();
    if ((r6 != 0x0) && (loc_e09f98(r11, @selector(activityStatus)) == 0x3)) goto loc_aba848;
    goto loc_aba850;

loc_aba848:
    loc_e09f94(r6);

loc_aba896:
    loc_e09f98(r11, r10);
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(question));
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 == 0x0) goto loc_aba9a8;
    goto loc_aba8c4;

loc_aba9a8:
    loc_e09f94(r5);

loc_aba9b0:
    loc_e09f94();

loc_aba9b4:
    loc_e09f98(r11, @selector(ceremony));
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f94();
    if (r4 != 0x0) {
            r5 = @selector(delegate);
            loc_e09f98(r11, r5);
            r7 = r7;
            r6 = loc_e09f9c();
            if (r6 != 0x0) {
                    loc_e09f98(r11, r5);
                    r7 = r7;
                    r4 = loc_e09f9c();
                    r8 = @selector(quizShowFinishedWithViewModel:);
                    r10 = loc_e09f98(r4, @selector(respondsToSelector:), r8);
                    loc_e09f94(r4);
                    loc_e09f94(r6);
                    if (r10 != 0x0) {
                            loc_e09f98(r11, r5);
                            r7 = r7;
                            r0 = loc_e09f9c();
                            r4 = r0;
                            loc_e09f98();
                            loc_e09f94(r4);
                    }
            }
    }
    r0 = loc_e09f98(r11, @selector(isQuizshowSuccess));
    if (r0 == 0x0) goto loc_abaaf8;
    goto loc_abaa6e;

loc_abaaf8:
    Pop();
    Pop();
    Pop();
    return;

loc_abaa6e:
    r5 = @selector(delegate);
    loc_e09f98(r11, r5);
    r7 = r7;
    r0 = loc_e09f9c();
    r6 = r0;
    if (r6 == 0x0) goto loc_abaaf8;
    loc_e09f98(r11, r5);
    r7 = r7;
    r4 = loc_e09f9c();
    r8 = @selector(quizShowSuccess);
    r10 = loc_e09f98(r4, @selector(respondsToSelector:), r8);
    loc_e09f94(r4);
    r0 = loc_e09f94(r6);
    if (r10 == 0x0) goto loc_abaaf8;
    loc_e09f98(r11, r5);
    r7 = r7;
    r0 = loc_e09f9c();
    r1 = r8;
    r4 = r0;
    loc_e09f98();
    r0 = r4;

loc_abaaea:
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);

loc_aba8c4:
    loc_e09f98(r11, r10);
    r7 = r7;
    r4 = loc_e09f9c();
    r8 = loc_e09f98(r4, @selector(remainingAnswerTime));
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r6);
    asm{ vmov.f32   d0, #0x1 } << 0x10 | 0x1;
    r8 << 0x10 | r8;
    asm{ vcmpe.f32  s2, s0 };
    asm{ vmrs       APSR_nzcv, fpscr };
    if (CPU_FLAGS & L) goto loc_aba9b4;
    r6 = @selector(questionAnswerDelegate);
    loc_e09f98(r11, r6);
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 == 0x0) goto loc_aba9b4;
    loc_e09f98(r11, r6);
    r7 = r7;
    r4 = loc_e09f9c();
    var_0 = @selector(showQuestionWithQuestionAnswerUnit:);
    r8 = loc_e09f98(r4, @selector(respondsToSelector:), @selector(showQuestionWithQuestionAnswerUnit:));
    loc_e09f94(r4);
    loc_e09f94(r5);
    if (r8 == 0x0) goto loc_aba9b4;
    loc_e09f98(r11, r6);
    r4 = loc_e09f9c();
    loc_e09f98(r11, r10);
    r7 = r7;
    r5 = loc_e09f9c();
    loc_e09f98(r4, var_0, r5);
    loc_e09f94(r5);
    goto loc_aba9b0;

loc_aba850:
    r1 = @selector(ceremony);
    loc_e09f98(r11, r1);
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 == 0x0) goto loc_aba9a4;
    goto loc_aba870;

loc_aba9a4:
    r0 = r6;
    goto loc_abaaea;

loc_aba870:
    r4 = loc_e09f98(r11, @selector(activityStatus));
    loc_e09f94(r5);
    r0 = loc_e09f94(r6);
    if (r4 != 0x6) goto loc_abaaf8;
    goto loc_aba896;
}

- (id)getActivityStatusStringForTracker
{
    r7 = &arg_C;
    r4 = self;
    r5 = @selector(activityStatus);
    r1 = r5;
    if (loc_e09f98(r4, r1) > 0x1) goto loc_abab2e;
    goto loc_abab22;

loc_abab2e:
    r1 = r5;
    if (loc_e09f98(r4, r1) != 0x2) goto loc_abab46;
    goto loc_abab3a;

loc_abab46:
    r8 = @selector(authInfo);
    loc_e09f98(r4, r8);
    r7 = r7;
    r6 = loc_e09f9c();
    r10 = @selector(answerStatus);
    r11 = loc_e09f98(r6, r10);
    loc_e09f94(r6);
    if (r11 == 0x0) goto loc_ababaa;
    goto loc_abab88;

loc_ababaa:
    if (loc_e09f98(r4, r5) < 0x6) goto loc_abac6c;
    goto loc_ababb6;

loc_abac6c:
    r6 = @selector(currentQuestionAnswerUnit);
    loc_e09f98(r4, r6);
    r7 = r7;
    r5 = loc_e09f9c();
    r1 = @selector(status);
    if (loc_e09f98(r5, r1) != 0x1) goto loc_abad02;
    goto loc_abac9e;

loc_abad02:
    loc_e09f94(r5);

loc_abab3a:
    r4 = @"million_pound_playing";

loc_abac58:
    loc_e09fa4(r4);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, r1);
    return r0;

loc_abac9e:
    loc_e09f98(r4, r6);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(userChoosenOptions));
    r7 = r7;
    r6 = loc_e09f9c();
    r1 = @selector(count);
    r8 = loc_e09f98(r6, r1);
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    if (r8 == 0x0) {
            r4 = @"million_pound_time_out";
    }
    else {
            r4 = @"million_pound_playing";
    }
    goto loc_abac58;

loc_ababb6:
    r1 = @selector(isQuizshowSuccess);
    if (loc_e09f98(r4, r1) == 0x0) goto loc_abac6c;
    r4 = @"million_pound_success";
    goto loc_abac58;

loc_abab88:
    loc_e09f98(r4, r8);
    r7 = r7;
    r0 = loc_e09f9c();
    r1 = r10;
    r4 = r0;
    if (loc_e09f98() == 0x2) {
            loc_e09f94(r4);
            r4 = @"million_pound_late";
    }
    else {
            loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
            r5 = loc_e09f9c();
            loc_e09f98(r5, @selector(delegate));
            r7 = r7;
            r6 = loc_e09f9c();
            r1 = @selector(isLogin);
            r8 = loc_e09f98(r6, r1);
            loc_e09f94(r6);
            loc_e09f94(r5);
            loc_e09f94(r4);
            if (r8 != 0x0) {
                    r4 = @"million_pound_fail";
            }
            else {
                    r4 = @"million_pound_late";
            }
    }
    goto loc_abac58;

loc_abab22:
    r4 = @"million_pound_before";
    goto loc_abac58;
}

+ (id)formattedStringWithAllBonus:(id)arg2 
{
    loc_e09f98(self, @selector(formatToBonus:), arg2);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(firstObject));
    r10 = loc_e09f9c();
    loc_e09f98(r4, @selector(lastObject));
    r6 = loc_e09f9c();
    var_0 = r6;
    loc_e09f98(NSString, @selector(stringWithFormat:), @"%@%@", r10);
    r7 = &arg_C;
    r5 = loc_e09f9c();
    loc_e09f94(r6);
    loc_e09f94(r10);
    loc_e09f94(r4);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r5, @selector(stringWithFormat:));
    return r0;
}

+ (id)formattedStringWithMyBonus:(id)arg2 
{
    r7 = &arg_4;
    sp = sp - 0x4;
    r0 = sub_e0a2c8();
    asm{ vmov.i32   d16, #0x0 } << 0x10 | 0x0;
    r0 << 0x10 | r0;
    asm{ vmax.f32   d0, d17, d16 };
    r4 = NSString;
    asm{ vcmpe.f32  s0, s2 };
    asm{ vmrs       APSR_nzcv, fpscr };
    if (CPU_FLAGS & P) {
            asm{ vmov       r0, s0 };
            r0 = sub_e0a1a4(r0);
            r0 << 0x10 | r0;
            asm{ vcvt.f64.f32 d16, s0 };
            r1 = @selector(stringWithFormat:);
            var_0 = d16 >> 0x10;
            loc_e09f98(r4, r1, @"0.%.0f", d16 & 0xffff);
            r7 = r7;
    }
    else {
            asm{ vcvt.f64.f32 d16, s0 };
            asm{ vdiv.f64   d16, d16, d17 };
            r9 = sub_e0a040(d16 & 0xffff);
            var_0 = d16 >> 0x10;
            r1 = @selector(stringWithFormat:);
            loc_e09f98(r4, r1, @"%.0f", r9);
            r7 = r7;
    }
    r0 = loc_e09f9c();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r0, r1);
    return r0;
}

- (void)debug_enable_frontier:(id)arg2 
{
    loc_e09f98(TTFHeartBeatService, @selector(sharedService), objc_cls_ref_TTFHeartBeatService);
    r5 = loc_e09f9c();
    r1 = @selector(debug_enable_frontier:);
    loc_e09f98(r5, r1, arg2);
    r0 = r5;
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_1be412c(r0, r1);
    return;
}

- (id)delegate
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__delegate;
    r0 = sub_e09f88();
    Pop();
    Pop();
    r0 = loc_e09f82(r0, r1);
    return r0;
}

- (void)setDelegate:(id)arg2 
{
    r0 = loc_e09f8c(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__delegate, arg2, arg2);
    return;
}

- (id)questionAnswerDelegate
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__questionAnswerDelegate;
    r0 = sub_e09f88();
    Pop();
    Pop();
    r0 = loc_e09f82(r0, r1);
    return r0;
}

- (void)setQuestionAnswerDelegate:(id)arg2 
{
    r0 = loc_e09f8c(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__questionAnswerDelegate, arg2, arg2);
    return;
}

- (id)debugDelegate
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__debugDelegate;
    r0 = sub_e09f88();
    Pop();
    Pop();
    r0 = loc_e09f82(r0, r1);
    return r0;
}

- (void)setDebugDelegate:(id)arg2 
{
    r0 = loc_e09f8c(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__debugDelegate, arg2, arg2);
    return;
}

- (id)enterFromStr
{
    r0 = self->_enterFromStr;
    return r0;
}

- (void)setEnterFromStr:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__enterFromStr, arg2, arg2);
    return;
}

- (id)curUser
{
    r0 = self->_curUser;
    return r0;
}

- (void)setCurUser:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__curUser, arg2, arg2);
    return;
}

- (id)livingStreamUrls
{
    r0 = self->_livingStreamUrls;
    return r0;
}

- (void)setLivingStreamUrls:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__livingStreamUrls, arg2, arg2);
    return;
}

- (id)authInfo
{
    r0 = self->_authInfo;
    return r0;
}

- (void)setAuthInfo:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__authInfo, arg2, arg2);
    return;
}

- (id)lastAnswerInfo
{
    r0 = self->_lastAnswerInfo;
    return r0;
}

- (void)setLastAnswerInfo:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__lastAnswerInfo, arg2, arg2);
    return;
}

- (id)ceremony
{
    r0 = self->_ceremony;
    return r0;
}

- (void)setCeremony:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__ceremony, arg2, arg2);
    return;
}

- (id)currentActivity
{
    r0 = self->_currentActivity;
    return r0;
}

- (void)setCurrentActivity:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__currentActivity, arg2, arg2);
    return;
}

- (id)nextActivity
{
    r0 = self->_nextActivity;
    return r0;
}

- (void)setNextActivity:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__nextActivity, arg2, arg2);
    return;
}

- (id)isSign
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsSign:(id)arg2 
{
    r0 = self;
    r0->_isSign = arg2;
    return;
}

- (id)activityStatus
{
    r0 = self->_activityStatus;
    return r0;
}

- (void)setActivityStatus:(id)arg2 
{
    r0 = self;
    r0->_activityStatus = arg2;
    return;
}

- (id)curSignCount
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__curSignCount;
    r2 = *(self + r1);
    r0 = r2;
    return r0;
}

- (id)curUsersCount
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__curUsersCount;
    r2 = *(self + r1);
    r0 = r2;
    return r0;
}

- (id)curSignCountStr
{
    r0 = loc_e09fd4(self, _cmd);
    return r0;
}

- (void)setCurSignCountStr:(id)arg2 
{
    r0 = loc_e09fd8(self, _cmd, arg2);
    return;
}

- (id)currentQuestionAnswerUnit
{
    r0 = self->_currentQuestionAnswerUnit;
    return r0;
}

- (void)setCurrentQuestionAnswerUnit:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__currentQuestionAnswerUnit, arg2, arg2);
    return;
}

- (id)isLiveRoomIndexSuccess
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsLiveRoomIndexSuccess:(id)arg2 
{
    r0 = self;
    r0->_isLiveRoomIndexSuccess = arg2;
    return;
}

- (id)isLiveRoomInitSuccess
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsLiveRoomInitSuccess:(id)arg2 
{
    r0 = self;
    r0->_isLiveRoomInitSuccess = arg2;
    return;
}

- (id)netFailedQuestionID
{
    r0 = self->_netFailedQuestionID;
    return r0;
}

- (void)setNetFailedQuestionID:(id)arg2 
{
    r0 = self;
    r0->_netFailedQuestionID = arg2;
    return;
}

- (id)countDown
{
    r0 = self->_countDown;
    return r0;
}

- (void)setCountDown:(id)arg2 
{
    r0 = self;
    r0->_countDown = arg2;
    return;
}

- (id)maxParticipateCount
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__maxParticipateCount;
    r2 = *(self + r1);
    r0 = r2;
    return r0;
}

- (id)commentInterval
{
    r0 = self->_commentInterval;
    return r0;
}

- (void)setCommentInterval:(id)arg2 
{
    r0 = self;
    r0->_commentInterval = arg2;
    return;
}

- (id)submitRetryCount
{
    r0 = self->_submitRetryCount;
    return r0;
}

- (void)setSubmitRetryCount:(id)arg2 
{
    r0 = self;
    r0->_submitRetryCount = arg2;
    return;
}

- (id)submitRetryTimeout
{
    r0 = self->_submitRetryTimeout;
    return r0;
}

- (void)setSubmitRetryTimeout:(id)arg2 
{
    r0 = self;
    r0->_submitRetryTimeout = arg2;
    return;
}

- (id)needUpgrade
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setNeedUpgrade:(id)arg2 
{
    r0 = self;
    r0->_needUpgrade = arg2;
    return;
}

- (id)upgradeTips
{
    r0 = loc_e09fd4(self, _cmd);
    return r0;
}

- (void)setUpgradeTips:(id)arg2 
{
    r0 = loc_e09fd8(self, _cmd, arg2);
    return;
}

- (id)warmupVideoAddr
{
    r0 = self->_warmupVideoAddr;
    return r0;
}

- (void)setWarmupVideoAddr:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__warmupVideoAddr, arg2, arg2);
    return;
}

- (id)activityListArray
{
    r0 = self->_activityListArray;
    return r0;
}

- (void)setActivityListArray:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__activityListArray, arg2, arg2);
    return;
}

- (id)isIndexInfoSuccess
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsIndexInfoSuccess:(id)arg2 
{
    r0 = self;
    r0->_isIndexInfoSuccess = arg2;
    return;
}

- (id)bannerImage
{
    r0 = self->_bannerImage;
    return r0;
}

- (void)setBannerImage:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__bannerImage, arg2, arg2);
    return;
}

- (id)generalControl
{
    r0 = self->_generalControl;
    return r0;
}

- (void)setGeneralControl:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__generalControl, arg2, arg2);
    return;
}

- (id)isInvitation
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsInvitation:(id)arg2 
{
    r0 = self;
    r0->_isInvitation = arg2;
    return;
}

- (id)kickoutNetError
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setKickoutNetError:(id)arg2 
{
    r0 = self;
    r0->_kickoutNetError = arg2;
    return;
}

- (id)isQuizshowSuccess
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsQuizshowSuccess:(id)arg2 
{
    r0 = self;
    r0->_isQuizshowSuccess = arg2;
    return;
}

- (id)startTime
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__startTime;
    r2 = *(self + r1);
    r0 = r2;
    return r0;
}

- (void)setStartTime:(id)arg2 
{
    r1 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__startTime;
    *(self + r1) = arg2;
    r0 = self + r1;
    *(r0 + 0x4) = r3;
    return;
}

- (id)countDownDisplayLink
{
    r0 = self->_countDownDisplayLink;
    return r0;
}

- (void)setCountDownDisplayLink:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__countDownDisplayLink, arg2, arg2);
    return;
}

- (id)indexRetryIndex
{
    r0 = self->_indexRetryIndex;
    return r0;
}

- (void)setIndexRetryIndex:(id)arg2 
{
    r0 = self;
    r0->_indexRetryIndex = arg2;
    return;
}

- (id)isFetchingStreamInfo
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsFetchingStreamInfo:(id)arg2 
{
    r0 = self;
    r0->_isFetchingStreamInfo = arg2;
    return;
}

- (id)getStreamRetryIndex
{
    r0 = self->_getStreamRetryIndex;
    return r0;
}

- (void)setGetStreamRetryIndex:(id)arg2 
{
    r0 = self;
    r0->_getStreamRetryIndex = arg2;
    return;
}

- (id)indexTrace
{
    r0 = self->_indexTrace;
    return r0;
}

- (void)setIndexTrace:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__indexTrace, arg2, arg2);
    return;
}

- (id)fetchLiveInfoTrace
{
    r0 = self->_fetchLiveInfoTrace;
    return r0;
}

- (void)setFetchLiveInfoTrace:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__fetchLiveInfoTrace, arg2, arg2);
    return;
}

- (void).cxx_destruct
{
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__fetchLiveInfoTrace;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__indexTrace;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__countDownDisplayLink;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__generalControl;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__bannerImage;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__activityListArray;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__warmupVideoAddr;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__upgradeTips;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__currentQuestionAnswerUnit;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__curSignCountStr;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__nextActivity;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__currentActivity;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__ceremony;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__lastAnswerInfo;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__authInfo;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__livingStreamUrls;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__curUser;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__enterFromStr;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__debugDelegate;
    sub_e09f90(r0 + self);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__questionAnswerDelegate;
    sub_e09f90(r0 + self);
    r0 = *objc_ivar_offset_TTFQuizShowLiveRoomViewModel__delegate;
    Pop();
    Pop();
    Pop();
    r0 = loc_1be4168();
    return;
}

+ (id)formatToBonus:(id)arg2 
{
    r2 = arg2;
    r7 = &arg_C;
    sp = sp - 0xc;
    arg_8 = *___stack_chk_guard;
    r5 = NSNumber;
    r4 = NSString;
    if (r0 >= 0x0) {
            r1 = r3;
            r2 = sub_e0a200();
            loc_e09f98(r5, @selector(numberWithLongLong:), r2, r1);
            r5 = loc_e09f9c();
            loc_e09f98(r4, @selector(stringWithFormat:), @"%@", r5);
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f94(r5);
            r5 = cfstring__N;
    }
    else {
            r1 = r3;
            r2 = sub_e0a5a0();
            loc_e09f98(r5, @selector(numberWithLongLong:), r2, r1);
            r5 = loc_e09f9c();
            loc_e09f98(r4, @selector(stringWithFormat:), @"%@", r5);
            r7 = r7;
            r4 = loc_e09f9c();
            loc_e09f94(r5);
            r5 = cfstring_CQ;
    }
    loc_e09fa4(r5);
    asm{ strd       r4, r5, [sp] };
    loc_e09f98(NSArray, @selector(arrayWithObjects:count:), sp, 0x2);
    r7 = r7;
    r6 = loc_e09f9c();
    loc_e09f94(r5);
    loc_e09f94(r4);
    r1 = *___stack_chk_guard;
    asm{ it         ne };
    if (r1 != arg_8) {
            loc_e09fdc();
    }
    r1 = *___stack_chk_guard;
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r6, r1);
    return r0;
}

+ (id)formatTimestamp:(id)arg2 
{
    r2 = arg2;
    if (CPU_FLAGS & E) {
                Push(r4);
                Push(r5);
                Push(r6);
                Push(r7);
                Push(lr);
    }
    r7 = &arg_C;
    sp = sp - 0x1c;
    r2 = sub_e0a2f0();
    arg_18 = *___stack_chk_guard;
    loc_e09f98(NSDate, @selector(dateWithTimeIntervalSince1970:), r2, r3);
    r11 = loc_e09f9c();
    loc_e09f98(NSDateFormatter, @selector(alloc), objc_cls_ref_NSDateFormatter);
    r4 = loc_e09f98();
    loc_e09f98(r4, @selector(setDateFormat:), @"yyyy-MM-dd|HH:mm");
    arg_8 = r4;
    loc_e09f98(r4, @selector(stringFromDate:), r11);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(componentsSeparatedByString:), @"|");
    r5 = loc_e09f9c();
    loc_e09f94(r4);
    arg_C = r5;
    loc_e09f98(r5, @selector(firstObject));
    r6 = loc_e09f9c();
    r8 = @selector(stringWithFormat:);
    loc_e09f98(NSString, r8, @"%@", r6);
    r5 = loc_e09f9c();
    loc_e09f94(r6);
    loc_e09f98(NSCalendar, @selector(currentCalendar), objc_cls_ref_NSCalendar);
    r7 = r7;
    r6 = loc_e09f9c();
    if (loc_e09f98(r6, @selector(isDateInToday:), r11) != 0x0) {
            loc_e09fa4(cfstring__N_Y);
            loc_e09f94(r5);
            r5 = cfstring__N_Y;
    }
    r0 = loc_e09f98(r6, @selector(isDateInTomorrow:), r11);
    asm{ strd       r11, r6, [sp] };
    if (r0 != 0x0) {
            r4 = cfstring__f_Y;
            loc_e09fa4(r4);
            loc_e09f94(r5);
    }
    else {
            r4 = r5;
    }
    loc_e09f98(arg_C, @selector(lastObject));
    r11 = loc_e09f9c();
    loc_e09f98(NSString, r8, @"%@", r11);
    r7 = r7;
    r6 = loc_e09f9c();
    loc_e09f94(r11);
    if (r4 != 0x0) {
            r2 = loc_e09f98(*objc_cls_ref_NSString, @selector(class));
            r0 = loc_e09f98(r4, @selector(isKindOfClass:), r2);
            r11 = var_0;
            if ((r0 == 0x0) || (loc_e09f98(r4, @selector(length)) == 0x0)) {
                    r8 = @"-";
                    loc_e09fa4(r8);
                    loc_e09f94(r4);
            }
            else {
                    r0 = loc_e09f98(r4, @selector(isEqualToString:), @"null");
                    r8 = r4;
                    if (r0 != 0x0) {
                            r8 = @"-";
                            loc_e09fa4(r8);
                            loc_e09f94(r4);
                    }
            }
    }
    else {
            r11 = var_0;
            r8 = @"-";
            loc_e09fa4(r8);
            loc_e09f94(r4);
    }
    if (r6 != 0x0) {
            r2 = loc_e09f98(*objc_cls_ref_NSString, @selector(class));
            if ((loc_e09f98(r6, @selector(isKindOfClass:), r2) == 0x0) || (loc_e09f98(r6, @selector(length)) == 0x0)) {
                    r4 = @"-";
                    loc_e09fa4(r4);
                    loc_e09f94(r6);
            }
            else {
                    if (loc_e09f98(r6, @selector(isEqualToString:), @"null") != 0x0) {
                            r4 = @"-";
                            loc_e09fa4(r4);
                            loc_e09f94(r6);
                    }
                    else {
                            r4 = r6;
                    }
            }
    }
    else {
            r4 = @"-";
            loc_e09fa4(r4);
            loc_e09f94(r6);
    }
    asm{ strd       r8, r4, [sp, #0x10] };
    loc_e09f98(NSArray, @selector(arrayWithObjects:count:), &arg_10, 0x2);
    r7 = r7;
    r5 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(arg_4);
    loc_e09f94(r8);
    loc_e09f94(arg_C);
    loc_e09f94(arg_8);
    loc_e09f94(r11);
    r1 = *___stack_chk_guard;
    asm{ it         ne };
    if (r1 != arg_18) {
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
    r0 = loc_e09f82(r5, r1);
    return r0;
}

@end

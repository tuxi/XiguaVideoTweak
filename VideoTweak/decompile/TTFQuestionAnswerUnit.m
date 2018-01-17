
@implementation TTFQuestionAnswerUnit

- (id)init
{
    loc_e09f98(self, @selector(doesNotRecognizeSelector:), _cmd);
    loc_e09f94(self);
    return 0x0;
}

- (id)initWithHeartbeatTrace:(id)arg2 currentTime:(id)arg3 viewModel:(id)arg4 
{
    STK33 = r5;
    STK35 = r7;
    r7 = &arg_C;
    sp = sp - 0x24;
    r5 = arg3;
    r10 = loc_e09fa4(arg2, _cmd, arg2, arg3, r8, r11, r10, r8, lr, STK35, r6, STK33, r4);
    r6 = loc_e09fa4(*(r7 + 0xc));
    arg_1C = self;
    arg_20 = *0x2352ed4;
    r11 = loc_e09fa0(&arg_1C, @selector(init));
    if (r11 == 0x0) goto loc_a8d226;
    goto loc_a8ca5a;

loc_a8d226:
    loc_e09f94(r6);
    loc_e09f94(r10);
    r0 = r11;
    Pop();
    Pop();
    Pop();
    Pop();
    return r0;

loc_a8ca5a:
    arg_14 = r5;
    loc_e09f98(r11, @selector(setViewModel:), r6);
    loc_e09f98(r11, @selector(setHeartbeatTrace:), r10);
    r8 = @selector(heartbeat);
    loc_e09f98(r10, r8);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(hasQuestion));
    loc_e09f94(r4);
    arg_18 = r6;
    if (r5 != 0x0) {
            loc_e09f98(r10, r8);
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(question));
            r5 = loc_e09f9c();
            loc_e09f98(r11, @selector(setQuestion:), r5);
            loc_e09f94(r5);
            loc_e09f94(r4);
            loc_e09f98(TTFQuestionTrace, @selector(alloc), objc_cls_ref_TTFQuestionTrace);
            r4 = loc_e09f98();
            loc_e09f98(r11, @selector(setQuestionTrace:), r4);
            loc_e09f94(r4);
            loc_e09f98(r11, @selector(questionTrace));
            r5 = loc_e09f9c();
            loc_e09f98(r6, @selector(authInfo));
            r6 = loc_e09f9c();
            r2 = loc_e09f98(r6, @selector(answerStatus));
            loc_e09f98(r5, @selector(setAuth:), r2);
            r0 = r6;
            r6 = arg_18;
            loc_e09f94(r0);
            loc_e09f94(r5);
            loc_e09f98(r11, @selector(questionTrace));
            r4 = loc_e09f9c();
            loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
            r7 = r7;
            r5 = loc_e09f9c();
            @selector(timeIntervalSince1970) << 0x10 | loc_e09f98(r5, @selector(timeIntervalSince1970));
            asm{ vmul.f64   d16, d17, d16 };
            r2 = sub_e0a078();
            loc_e09f98(r4, @selector(setShowT:), r2, 0x0 >> 0x10);
            loc_e09f94(r5);
            loc_e09f94(r4);
    }
    loc_e09f98(r10, r8);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(hasAnswer));
    loc_e09f94(r4);
    if (r5 != 0x0) {
            loc_e09f98(r10, r8);
            r4 = loc_e09f9c();
            r5 = @selector(answer);
            loc_e09f98(r4, r5);
            r6 = loc_e09f9c();
            loc_e09f98(r11, @selector(setAnswer:), r6);
            loc_e09f94(r6);
            loc_e09f94(r4);
            loc_e09f98(TTFAnswerTrace, @selector(alloc), objc_cls_ref_TTFAnswerTrace);
            r4 = loc_e09f98();
            loc_e09f98(r11, @selector(setAnswerTrace:), r4);
            loc_e09f94(r4);
            loc_e09f98(r11, @selector(answerTrace));
            r4 = loc_e09f9c();
            loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
            r7 = r7;
            r6 = loc_e09f9c();
            @selector(timeIntervalSince1970) << 0x10 | loc_e09f98(r6, @selector(timeIntervalSince1970));
            asm{ vmul.f64   d16, d17, d16 };
            r2 = sub_e0a078();
            loc_e09f98(r4, @selector(setShowT:), r2, 0x0 >> 0x10);
            r0 = r6;
            r6 = arg_18;
            loc_e09f94(r0);
            loc_e09f94(r4);
    }
    else {
            r5 = @selector(answer);
    }
    r2 = loc_e09f98(r6, @selector(submitRetryCount));
    r8 = @selector(setRetryCount:);
    loc_e09f98(r11, r8, r2);
    r2 = loc_e09f98(r6, @selector(submitRetryTimeout));
    loc_e09f98(r11, @selector(setRetryTimeout:), r2);
    loc_e09f98(r11, @selector(setRetryIndex:), 0x0);
    loc_e09f98(r11, r5);
    r7 = r7;
    r5 = loc_e09f9c();
    loc_e09f94();
    if (r5 == 0x0) goto loc_a8ce52;
    goto loc_a8ce14;

loc_a8ce52:
    arg_4 = r10;
    r10 = @selector(question);
    loc_e09f98(r11, r10);
    r7 = r7;
    r5 = loc_e09f9c();
    r6 = loc_e09f98(r5, @selector(questionId));
    loc_e09f94(r5);
    if (r0 >= 0x0) {
            loc_e09f98(r11, r8, 0x2);
    }
    r5 = 0x0;
    loc_e09f98(r11, @selector(setStatus:), 0x0);
    loc_e09f98(r11, r10);
    r6 = loc_e09f9c();
    r4 = loc_e09f98(r6, @selector(questionStartTsMs));
    arg_8 = @selector(questionStartTsMs);
    loc_e09f94(r6);
    loc_e09f98(r11, r10);
    r7 = r7;
    r6 = loc_e09f9c();
    arg_10 = @selector(timeLimit);
    r8 = loc_e09f98(r6, @selector(timeLimit));
    arg_C = r10;
    r10 = @selector(timeLimit);
    loc_e09f94(r6);
    r1 = *(r7 + 0x8);
    r0 = sub_e0a5a0();
    r4 = r1 - arg_8 + !CARRY(arg_14 - r4);
    asm{ it         lt };
    if (r1 < 0x0) {
            r5 = 0x1;
    }
    asm{  };
    if (r5 == 0x0) {
            r4 = r5;
    }
    if (CPU_FLAGS & E) {
            r5 = r0;
    }
    if (r0 < 0x0) {
            r8 = arg_C;
            loc_e09f98(r11, r8);
            r7 = r7;
            r6 = loc_e09f9c();
            r5 = loc_e09f98();
            r4 = arg_10;
            loc_e09f94(r6);
    }
    else {
            r8 = arg_C;
    }
    loc_e09f98(r11, @selector(questionTrace));
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(setPassT:), r5, r4);
    loc_e09f94(r6);
    loc_e09f98(r11, r8);
    r6 = loc_e09f9c();
    arg_10 - r4 + !CARRY(loc_e09f98() - r5);
    r2 = sub_e0a2c8();
    loc_e09f98(r11, @selector(setRemainingAnswerTime:), r2);
    loc_e09f94(r6);
    loc_e09f98(r11, @selector(questionTrace));
    r5 = loc_e09f9c();
    r0 = loc_e09f98(r11, @selector(remainingAnswerTime));
    r0 << 0x10 | r0;
    asm{ vmuleq.f32 d0, d16, d0 };
    asm{ vmovne     r0, s0 };
    r2 = sub_e0a368(r0);
    loc_e09f98(r5, @selector(setLeftT:), r2, @selector(remainingAnswerTime));
    loc_e09f94(r5);
    loc_e09f98(r11, @selector(setBufferRemainingAnswerTime:), 0x3fc00000);
    r0 = loc_e09f98(r11, @selector(remainingAnswerTime));
    r0 << 0x10 | r0;
    asm{ vcvt.f64.f32 d8, s0 };
    @selector(remainingAnswerTime) << 0x10 | sub_a24644();
    asm{ vadd.f64   d16, d8, d16 };
    asm{ vcvt.f32.f64 s0, d16 };
    asm{ vmov       r2, s0 };
    loc_e09f98(r11, @selector(setEndTime:));
    loc_e09f98(r11, r8);
    r5 = loc_e09f9c();
    r0 = loc_e09f98(r11, @selector(remainingAnswerTime));
    r0 << 0x10 | r0;
    r8 = @selector(viewModel);
    asm{ vcvt.f64.f32 d8, s0 };
    loc_e09f98(r11, r8);
    r6 = loc_e09f9c();
    arg_14 = @selector(authInfo);
    loc_e09f98();
    r4 = loc_e09f9c();
    var_0 = r4;
    sub_a22894(@"show question:%@, remaining time:%f,auth:%@", r5, d8 & 0xffff, d8 >> 0x10);
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f94(r5);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(delegate));
    r7 = r7;
    r10 = loc_e09f9c();
    if (loc_e09f98(r10, @selector(isLogin)) == 0x0) goto loc_a8d202;
    goto loc_a8d162;

loc_a8d202:
    loc_e09f94(r10);
    loc_e09f94(r4);
    r10 = arg_4;
    r6 = arg_18;

loc_a8d214:
    loc_e09f98(r11, @selector(beginAnswerCountdown));
    goto loc_a8d226;

loc_a8d162:
    r6 = r8;
    loc_e09f98(r11, r8);
    r0 = loc_e09f9c();
    r8 = r0;
    loc_e09f98();
    r7 = r7;
    r5 = loc_e09f9c();
    if (r5 == 0x0) goto loc_a8d1fc;
    goto loc_a8d184;

loc_a8d1fc:
    loc_e09f94(r8);
    goto loc_a8d202;

loc_a8d184:
    loc_e09f98(r11, r6);
    r0 = loc_e09f9c();
    arg_10 = r4;
    r4 = r0;
    loc_e09f98();
    r6 = loc_e09f9c();
    arg_14 = loc_e09f98(r6, @selector(answerStatus));
    loc_e09f94(r6);
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r8);
    loc_e09f94(r10);
    loc_e09f94(arg_10);
    r10 = arg_4;
    r6 = arg_18;
    if (arg_14 == 0x0) {
            loc_e09f98(r11, @selector(setUserNeedAnswer:), 0x1);
    }
    goto loc_a8d214;

loc_a8ce14:
    loc_e09f98(r11, @selector(setStatus:), 0x2);
    loc_e09f98(r11, @selector(setRemainingAnswerTime:), 0x0);
    loc_e09f98(r11, @selector(setBufferRemainingAnswerTime:), 0x0);
    goto loc_a8d226;
}

- (void)dealloc
{
    loc_e09f98(self, @selector(countdownDisplayLink));
    r5 = loc_e09f9c();
    loc_e09f98(r5, @selector(invalidate));
    loc_e09f94(r5);
    var_0 = self;
    arg_4 = *0x2352ed4;
    r0 = loc_e09fa0(sp - 0x8, @selector(dealloc));
    return;
}

- (void)beginAnswerCountdown
{
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    arg_8 = self;
    sub_e09ff4((0x60 - sp - 0x40) + 0x24, self);
    r2 = *_NSConcreteStackBlock;
    arg_28 = 0x14 + (0x60 - sp - 0x40) + 0xc;
    arg_C = r2;
    arg_10 = 0xc2000000;
    asm{ stm        r2!, {r0, r1, r3} };
    loc_e09ff0(arg_28, (0x60 - sp - 0x40) + 0x24, (0x60 - sp - 0x40) + 0x14, 0x20c5488);
    arg_44 = *__objc_personality_v0;
    r0 = *0xa8d468;
    arg_48 = 0x1f21310;
    arg_4C = &arg_C;
    arg_54 = 0x60 - sp - 0x40;
    arg_50 = (r0 | 0x1) + 0xa8d340;
    arg_30 = 0x1;
    sub_e09ff8();
    loc_e09f98(CADisplayLink, @selector(displayLinkWithExecuteBlock:), (0x60 - sp - 0x40) + 0xc);
    arg_30 = 0xffffffff;
    r2 = loc_e09f9c();
    arg_30 = 0x2;
    arg_4 = r2;
    loc_e09f98(arg_8, @selector(setCountdownDisplayLink:), r2);
    loc_e09f94(arg_4);
    arg_30 = 0x3;
    loc_e09f98(arg_8, @selector(countdownDisplayLink));
    arg_30 = 0xffffffff;
    arg_8 = loc_e09f9c();
    arg_30 = 0x4;
    loc_e09f98(NSRunLoop, @selector(currentRunLoop), 0x4);
    arg_30 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_30 = 0x5;
    r3 = *_NSRunLoopCommonModes;
    arg_4 = r6;
    loc_e09f98(arg_8, @selector(addToRunLoop:forMode:), r6, r3);
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

- (void)answerTimeUp
{
    r7 = &arg_C;
    sp = sp - 0x10;
    r6 = self;
    loc_e09f98(r6, @selector(setStatus:), 0x1);
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r10 = loc_e09f9c();
    loc_e09f98(r10, @selector(delegate));
    r7 = r7;
    r8 = loc_e09f9c();
    r1 = @selector(isLogin);
    if (loc_e09f98(r8, r1) == 0x0) goto loc_a8d6e2;
    goto loc_a8d654;

loc_a8d6e2:
    loc_e09f94(r8);
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

loc_a8d654:
    r11 = @selector(viewModel);
    loc_e09f98(r6, r11);
    r4 = loc_e09f9c();
    r5 = @selector(authInfo);
    r1 = r5;
    loc_e09f98(r4, r1);
    r7 = r7;
    if (loc_e09f9c() == 0x0) goto loc_a8d6dc;
    goto loc_a8d68e;

loc_a8d6dc:

loc_a8d6de:
    loc_e09f94();
    goto loc_a8d6e2;

loc_a8d68e:
    arg_8 = r4;
    asm{ strd       r6, r0, [sp] };
    loc_e09f98(r6, r11);
    r0 = loc_e09f9c();
    r6 = r0;
    loc_e09f98();
    r7 = r7;
    r11 = loc_e09f9c();
    r1 = @selector(answerStatus);
    if (loc_e09f98(r11, r1) == 0x0) goto loc_a8d6f8;
    goto loc_a8d6c6;

loc_a8d6f8:
    loc_e09f98(var_0, @selector(userChoosenOptions));
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(count));
    loc_e09f94(r4);
    loc_e09f94(r11);
    loc_e09f94(r6);
    loc_e09f94(arg_4);
    loc_e09f94(arg_8);
    loc_e09f94(r8);
    r0 = loc_e09f94(r10);
    if (r5 == 0x0) {
            loc_e09f98(NSArray, @selector(arrayWithObjects:count:), &arg_C, 0x0);
            r4 = loc_e09f9c();
            loc_e09f98(var_0, @selector(submitAnswerWithOptions:), r4);
            r0 = loc_e09f94(r4);
    }
    Pop();
    Pop();
    Pop();
    return;

loc_a8d6c6:
    loc_e09f94(r11);
    loc_e09f94(r6);
    loc_e09f94(arg_4);
    goto loc_a8d6de;
}

- (id)canAnswer
{
    r7 = &arg_C;
    sp = sp - 0x8;
    r5 = self;
    loc_e09f98(TTFantasyService, @selector(sharedService), objc_cls_ref_TTFantasyService);
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(delegate));
    r7 = r7;
    r6 = loc_e09f9c();
    if (loc_e09f98(r6, @selector(isLogin)) == 0x0) goto loc_a8d91e;
    goto loc_a8d7fe;

loc_a8d91e:
    loc_e09f94(r6);

loc_a8d936:
    loc_e09f94();
    r0 = 0x0;

loc_a8d93c:
    Pop();
    Pop();
    Pop();
    return r0;

loc_a8d7fe:
    arg_4 = r4;
    r4 = @selector(viewModel);
    loc_e09f98(r5, r4);
    r11 = loc_e09f9c();
    r8 = @selector(authInfo);
    loc_e09f98(r11, r8);
    r7 = r7;
    r10 = loc_e09f9c();
    if (r10 == 0x0) goto loc_a8d928;
    goto loc_a8d840;

loc_a8d928:
    loc_e09f94(r11);
    loc_e09f94(r6);
    goto loc_a8d936;

loc_a8d840:
    var_0 = r5;
    loc_e09f98(r5, r4);
    r0 = loc_e09f9c();
    r4 = r0;
    loc_e09f98();
    r7 = r7;
    r5 = loc_e09f9c();
    r8 = loc_e09f98(r5, @selector(answerStatus));
    loc_e09f94(r5);
    loc_e09f94(r4);
    loc_e09f94(r10);
    loc_e09f94(r11);
    loc_e09f94(r6);
    loc_e09f94(arg_4);
    if (r8 == 0x0) {
            r4 = var_0;
            r0 = loc_e09f98(r4, @selector(remainingAnswerTime));
            r0 << 0x10 | r0;
            asm{ vcmpe.f32  s0, #0x0 };
            asm{ vmrs       APSR_nzcv, fpscr };
            if (CPU_FLAGS & NE) {
                    r0 = loc_e09f98(r4, @selector(bufferRemainingAnswerTime));
                    r0 << 0x10 | r0;
                    asm{ vcmpe.f32  s0, #0x0 };
                    asm{ vmrs       APSR_nzcv, fpscr };
                    if (CPU_FLAGS & E) {
                            loc_e09f98(r4, @selector(userChoosenOptions));
                            r4 = loc_e09f9c();
                            r5 = loc_e09f98(r4, @selector(count));
                            loc_e09f94(r4);
                            r0 = 0x0;
                            asm{ it         eq };
                            if (r5 == 0x0) {
                                    r0 = 0x1;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    loc_e09f98(r4, @selector(userChoosenOptions));
                    r4 = loc_e09f9c();
                    r5 = loc_e09f98(r4, @selector(count));
                    loc_e09f94(r4);
                    r0 = 0x0;
                    asm{  };
                    if (r5 == 0x0) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    goto loc_a8d93c;
}

- (id)passTimeRate
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
    sp = sp - 0xc;
    r10 = r0;
    loc_e09f98(r10, @selector(question));
    r8 = loc_e09f9c();
    r11 = @selector(timeLimit);
    loc_e09f98(r8, r11);
    asm{ strd       r1, r0, [sp, #0x4] };
    var_0 = loc_e09f98(r10, @selector(remainingAnswerTime));
    r0 = r8;
    r8 = @selector(question);
    loc_e09f94(r0);
    loc_e09f98(r10, r8);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98();
    loc_e09f94(r4);
    r0 = r5 | r11;
    if (r0 != 0x0) {
            var_0 << 0x10 | var_0;
            loc_e09f98(r10, r8);
            r4 = loc_e09f9c();
            r5 = loc_e09f98();
            loc_e09f94(r4);
            asm{ ldrd       r1, r0, [sp, #0x4] };
            r0 = sub_e0a2c8();
            r0 << 0x10 | r0;
            asm{ vsub.f32   d8, d16, d8 };
            r0 = sub_e0a2c8();
            r0 << 0x10 | r0;
            asm{ vmov.f32   d16, #0x1 } << 0x10 | 0x1;
            asm{ vdiv.f32   s2, s16, s0 };
            asm{ vcmpe.f32  s2, #0x0 };
            asm{ vmrs       APSR_nzcv, fpscr };
            asm{ vmin.f32   d0, d1, d16 };
            asm{ vmov.i32   d2, #0x0 } << 0x10 | 0x0;
            asm{ it         mi };
            if (CPU_FLAGS & P) {
                    asm{ vmovmi.f32 s0, s4 } << 0x10 | s4;
            }
    }
    else {
            asm{ vmov.f32   d0, #0x1 } << 0x10 | 0x1;
    }
    asm{ vmov       r0, s0 };
    Pop();
    Pop();
    Pop();
    Pop();
    return r0;
}

- (void)revealAnswer:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0xb0 - sp - 0x40;
    r11 = self;
    r8 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(r8, @selector(heartbeat));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(answer));
    r10 = loc_e09f9c();
    loc_e09f94(r4);
    arg_28 = @selector(userChoosenOptions);
    loc_e09f98(r11, @selector(userChoosenOptions));
    r6 = loc_e09f9c();
    sub_a22894(@"reveal answer:%@,user options:%@", r10, r6, r3);
    loc_e09f94(r6);
    loc_e09f98(r11, @selector(answer));
    r7 = r7;
    r5 = loc_e09f9c();
    arg_94 = *__objc_personality_v0;
    r0 = *0xa8e2dc;
    arg_98 = 0x1f21320;
    arg_9C = r7;
    arg_A4 = sp;
    arg_A0 = (r0 | 0x1) + 0xa8db0e;
    sub_e09ff8();
    if (r5 == 0x0) goto loc_a8db48;
    goto loc_a8db1a;

loc_a8db48:
    loc_e09f94(r5);
    if (r10 == 0x0) goto loc_a8e1dc;
    goto loc_a8db56;

loc_a8e1dc:
    loc_e09f94(r10);
    loc_e09f94(r8);
    r0 = loc_e09fec(&arg_7C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;

loc_a8db56:
    arg_24 = r8;
    r8 = r10;
    r10 = @selector(question);
    r0 = r11;
    r11 = 0xffffffff;
    arg_80 = r11;
    arg_30 = r0;
    loc_e09f98(r0, r10);
    arg_80 = r11;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_80 = r11;
    arg_20 = r0;
    r5 = loc_e09f98();
    arg_80 = r11;
    arg_2C = r8;
    if ((loc_e09f98(r8, @selector(activityId)) ^ r5 | @selector(activityId) ^ @selector(activityId)) != 0x0) goto loc_a8e1d0;
    goto loc_a8dbbc;

loc_a8e1d0:
    loc_e09f94();
    r8 = arg_24;
    r10 = arg_2C;
    goto loc_a8e1dc;

loc_a8dbbc:
    arg_80 = 0xffffffff;
    loc_e09f98(arg_30, r10);
    arg_80 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    arg_80 = 0xffffffff;
    r0 = loc_e09f98(r4, @selector(questionId));
    arg_80 = 0xffffffff;
    r10 = arg_2C;
    r8 = r0;
    r5 = loc_e09f98(r10, @selector(questionId));
    loc_e09f94(r4);
    loc_e09f94(arg_20);
    r1 = r8 ^ r5;
    r8 = arg_24;
    r11 = arg_30;
    if ((@selector(questionId) ^ @selector(questionId) | r1) != 0x0) goto loc_a8e1dc;
    arg_80 = 0xffffffff;
    loc_e09f98(r11, @selector(setAnswer:), r10);
    arg_80 = 0xffffffff;
    r10 = @selector(answerTrace);
    loc_e09f98(r11, r10);
    arg_80 = 0xffffffff;
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f94();
    arg_20 = r10;
    if (r4 == 0x0) {
            arg_80 = 0xffffffff;
            loc_e09f98(TTFAnswerTrace, @selector(alloc), objc_cls_ref_TTFAnswerTrace);
            arg_80 = 0xffffffff;
            r4 = loc_e09f98();
            arg_80 = 0xffffffff;
            loc_e09f98(r11, @selector(setAnswerTrace:), r4);
            loc_e09f94(r4);
            arg_80 = 0xffffffff;
            loc_e09f98(r11, r10);
            arg_80 = 0xffffffff;
            r8 = loc_e09f9c();
            arg_80 = 0xffffffff;
            loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
            arg_80 = 0xffffffff;
            r7 = r7;
            r6 = loc_e09f9c();
            arg_80 = 0xffffffff;
            @selector(timeIntervalSince1970) << 0x10 | loc_e09f98(r6, @selector(timeIntervalSince1970));
            asm{ vmul.f64   d16, d17, d16 };
            arg_80 = 0xffffffff;
            r0 = sub_e0a078();
            loc_e09f98(r8, @selector(setShowT:), r0, 0x40000000 >> 0x10);
            r10 = arg_20;
            loc_e09f94(r6);
            loc_e09f94(r8);
    }
    arg_80 = 0xffffffff;
    loc_e09f98(r11, @selector(countdownDisplayLink));
    arg_80 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_80 = 0xffffffff;
    loc_e09f98(r4, @selector(invalidate));
    loc_e09f94(r4);
    arg_80 = 0xffffffff;
    loc_e09f98(r11, @selector(setRemainingAnswerTime:), 0x0);
    arg_80 = 0xffffffff;
    loc_e09f98(r11, @selector(setBufferRemainingAnswerTime:), 0x0);
    arg_80 = 0xffffffff;
    loc_e09f98(r11, r10);
    arg_80 = 0xffffffff;
    r8 = loc_e09f9c();
    arg_80 = 0xffffffff;
    loc_e09f98(r11, @selector(viewModel));
    arg_80 = 0xffffffff;
    r6 = loc_e09f9c();
    arg_80 = 0xffffffff;
    loc_e09f98(r6, @selector(authInfo));
    arg_80 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_80 = 0xffffffff;
    r2 = loc_e09f98(r4, @selector(answerStatus));
    arg_80 = 0xffffffff;
    loc_e09f98(r8, @selector(setAuth:), r2);
    loc_e09f94(r4);
    loc_e09f94(r6);
    loc_e09f94(r8);
    arg_80 = 0xffffffff;
    r8 = arg_28;
    loc_e09f98(r11, r8);
    arg_80 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_80 = 0xffffffff;
    arg_18 = @selector(count);
    r6 = loc_e09f98(r4, @selector(count));
    loc_e09f94(r4);
    arg_80 = 0xffffffff;
    loc_e09f98(r11, r10);
    arg_80 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    if (r6 != 0x0) {
            arg_80 = 0xffffffff;
            loc_e09f98(r11, r8);
            arg_80 = 0xffffffff;
            r11 = loc_e09f9c();
            arg_80 = 0xffffffff;
            r8 = @selector(objectAtIndexedSubscript:);
            loc_e09f98(r11, r8, 0x0);
            arg_80 = 0xffffffff;
            r7 = r7;
            r4 = loc_e09f9c();
            arg_80 = 0xffffffff;
            r10 = @selector(optionId);
            r2 = loc_e09f98(r4, r10);
            arg_80 = 0xffffffff;
            loc_e09f98(r5, @selector(setLocalOid:), r2, r10);
            loc_e09f94(r4);
            r0 = r11;
            r11 = arg_30;
            loc_e09f94(r0);
            loc_e09f94(r5);
    }
    else {
            arg_80 = 0xffffffff;
            loc_e09f98(r5, @selector(setLocalOid:), 0xffffffff, 0xffffffff);
            loc_e09f94(r5);
            r10 = @selector(optionId);
            r8 = @selector(objectAtIndexedSubscript:);
    }
    arg_80 = 0xffffffff;
    loc_e09f98(NSMutableArray, @selector(array), objc_cls_ref_NSMutableArray);
    arg_80 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_80 = 0xffffffff;
    loc_e09f98(arg_2C, @selector(optionsArray));
    arg_80 = 0xffffffff;
    r5 = loc_e09f9c();
    r0 = *_NSConcreteStackBlock;
    arg_C = r0;
    arg_64 = r0;
    arg_68 = 0xc2000000;
    asm{ stm        r3!, {r0, r1, r2} };
    r4 = loc_e09fa4(r4, 0xa8e2e1, 0x20c54a0, &arg_6C);
    arg_78 = r4;
    arg_80 = 0xffffffff;
    arg_10 = @selector(enumerateObjectsUsingBlock:);
    loc_e09f98(r5, @selector(enumerateObjectsUsingBlock:), &arg_64);
    loc_e09f94(r5);
    arg_80 = 0xffffffff;
    loc_e09f98(r11, arg_20);
    arg_80 = 0xffffffff;
    r5 = loc_e09f9c();
    arg_80 = 0xffffffff;
    arg_1C = r4;
    loc_e09f98(r4, r8, 0x0);
    arg_80 = 0xffffffff;
    r4 = loc_e09f9c();
    arg_80 = 0xffffffff;
    r2 = loc_e09f98();
    arg_80 = 0xffffffff;
    loc_e09f98(r5, @selector(setOptionId:), r2, r10);
    loc_e09f94(r4);
    loc_e09f94(r5);
    arg_50 = 0x0;
    arg_54 = &arg_50;
    arg_58 = 0x20000000;
    arg_5C = 0x14;
    arg_60 = 0x1;
    arg_80 = 0x1;
    loc_e09f98(r11, arg_28);
    arg_80 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_80 = 0x2;
    arg_28 = r0;
    arg_14 = loc_e09f98();
    arg_80 = 0x3;
    r4 = loc_e09f98(arg_1C, arg_18);
    loc_e09f94(arg_28);
    if (arg_14 == r4) {
            arg_34 = arg_C;
            arg_38 = 0xc2000000;
            asm{ strd       r2, r0, [sp, #0x3c] };
            arg_44 = 0x20c54d0;
            arg_48 = loc_e09fa4(arg_30, 0x20c54d0, 0x0);
            arg_4C = &arg_50;
            arg_80 = 0x4;
            loc_e09f98(arg_1C, arg_10, &arg_34);
            loc_e09f94(arg_48);
    }
    else {
            *(int8_t *)(arg_54 + 0x10) = 0x0;
    }
    arg_80 = 0x5;
    loc_e09f98(arg_30, arg_20);
    arg_80 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    asm{ ldrsb.w    r2, [r2, #0x10] };
    arg_80 = 0x6;
    arg_28 = r0;
    loc_e09f98();
    loc_e09f94(arg_28);
    if (*(int8_t *)(arg_54 + 0x10) == 0x0) goto loc_a8e204;
    goto loc_a8e140;

loc_a8e204:
    arg_80 = 0x7;
    arg_28 = @selector(delegate);
    loc_e09f98(arg_30, @selector(delegate));
    arg_80 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    if (r0 == 0x0) goto loc_a8e1a8;
    goto loc_a8e22c;

loc_a8e1a8:
    arg_80 = 0x10;
    loc_e09f98(arg_30, @selector(setStatus:), 0x2);
    sub_e0a084(&arg_50);
    loc_e09f94(arg_78);
    goto loc_a8e1d0;

loc_a8e22c:
    arg_20 = r0;
    arg_80 = 0x8;
    loc_e09f98(arg_30, arg_28);
    arg_80 = 0xffffffff;
    r7 = r7;
    loc_e09f9c();
    arg_80 = 0x9;
    asm{ strd       r2, r0, [sp, #0x14] };
    r4 = loc_e09f98();
    loc_e09f94(arg_18);
    loc_e09f94(arg_20);
    if (r4 == 0x0) goto loc_a8e1a8;
    arg_80 = 0xa;
    loc_e09f98(arg_30, arg_28);
    arg_80 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_80 = 0xb;
    arg_28 = r0;
    loc_e09f98();

loc_a8e1a2:
    loc_e09f94(arg_28);
    goto loc_a8e1a8;

loc_a8e140:
    arg_80 = 0xc;
    loc_e09f98(arg_30, @selector(setIsUserAnswerCorrect:), 0x1);
    arg_80 = 0xd;
    loc_e09f98(arg_30, arg_20);
    arg_80 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_80 = 0xe;
    arg_28 = r0;
    loc_e09f98();
    arg_80 = 0xffffffff;
    r7 = r7;
    r0 = loc_e09f9c();
    arg_80 = 0xf;
    arg_20 = r0;
    sub_a22caa();
    loc_e09f94(arg_20);
    goto loc_a8e1a2;

loc_a8db1a:
    arg_80 = 0xffffffff;
    r6 = loc_e09f98(r11, @selector(status));
    loc_e09f94(r5);
    if ((r10 != 0x0) && (r6 != 0x2)) goto loc_a8db56;
    goto loc_a8e1dc;
}

- (void)submitAnswerWithOptions:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x38;
    r11 = self;
    r10 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(r11, @selector(userChoosenOptions));
    r7 = r7;
    r4 = loc_e09f9c();
    loc_e09f94();
    if (r4 == 0x0) {
            loc_e09f98(r11, @selector(setUserChoosenOptions:), r10);
            loc_e09f98(NSMutableArray, @selector(array), objc_cls_ref_NSMutableArray);
            r7 = r7;
            r8 = loc_e09f9c();
            r1 = @selector(count);
            r0 = loc_e09f98(r10, r1);
            var_0 = r8;
            if (r0 != 0x0) {
                    sub_a22894(@"submit answer with options:%@", r10, objc_cls_ref_NSMutableArray, r3);
                    r6 = @selector(questionTrace);
                    loc_e09f98(r11, r6);
                    r4 = loc_e09f9c();
                    loc_e09f98(r4, @selector(setIsClick:), 0x1);
                    loc_e09f94(r4);
                    loc_e09f98(r11, r6);
                    r4 = loc_e09f9c();
                    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
                    r5 = loc_e09f9c();
                    @selector(timeIntervalSince1970) << 0x10 | loc_e09f98(r5, @selector(timeIntervalSince1970));
                    asm{ vmul.f64   d16, d17, d16 };
                    r2 = sub_e0a078();
                    loc_e09f98(r4, @selector(setClickT:), r2, 0x0 >> 0x10);
                    loc_e09f94(r5);
                    loc_e09f94(r4);
                    loc_e09f98(r11, r6);
                    r4 = loc_e09f9c();
                    loc_e09f98(r10, @selector(objectAtIndexedSubscript:), 0x0);
                    r7 = r7;
                    r5 = loc_e09f9c();
                    r2 = loc_e09f98(r5, @selector(optionId));
                    loc_e09f98(r4, @selector(setOptionId:), r2, @selector(optionId));
                    loc_e09f94(r5);
                    loc_e09f94(r4);
                    r0 = *_NSConcreteStackBlock;
                    arg_20 = r0;
                    arg_24 = 0xc2000000;
                    asm{ stm        r3!, {r0, r1, r2} };
                    r0 = loc_e09fa4(r8, 0xa8e9c1, 0x20c54e8, &arg_28);
                    arg_34 = r0;
                    loc_e09f98(r10, @selector(enumerateObjectsUsingBlock:), &arg_20);
            }
            else {
                    sub_a22894(@"submit none answer", r1, objc_cls_ref_NSMutableArray, r3);
                    loc_e09f98(NSNumber, @selector(numberWithInt:), 0xffffffff);
                    r4 = loc_e09f9c();
                    loc_e09f98(r8, @selector(addObject:), r4);
                    loc_e09f94(r4);
                    r6 = @selector(questionTrace);
                    loc_e09f98(r11, r6);
                    r4 = loc_e09f9c();
                    loc_e09f98(r4, @selector(setIsClick:), 0x0);
                    loc_e09f94(r4);
                    loc_e09f98(r11, r6);
                    r4 = loc_e09f9c();
                    loc_e09f98(r4, @selector(setOptionId:), 0xffffffff, 0xffffffff);
                    loc_e09f94(r4);
                    loc_e09f98(r11, r6);
                    r7 = r7;
                    r4 = loc_e09f9c();
                    loc_e09f98(r4, @selector(setIsTout:), 0x1);
            }
            loc_e09f94();
            loc_e09f98(r11, r6);
            r6 = loc_e09f9c();
            loc_e09f98(r11, @selector(viewModel));
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(curUser));
            r5 = loc_e09f9c();
            r2 = loc_e09f98(r5, @selector(lifesCanUse));
            loc_e09f98(r6, @selector(setLifes:), r2);
            loc_e09f94(r5);
            loc_e09f94(r4);
            loc_e09f94(r6);
            r6 = @selector(question);
            loc_e09f98(r11, r6);
            r7 = r7;
            r4 = loc_e09f9c();
            r5 = @selector(commitDelay);
            r0 = loc_e09f98(r4, r5);
            if (r0 >= 0x0) {
                    loc_e09f98(r11, r6);
                    r0 = loc_e09f9c();
                    r5 = loc_e09f98();
                    loc_e09f94(r0);
            }
            else {
                    r5 = 0x0;
            }
            loc_e09f94(r4);
            sub_e0a998(r5);
            asm{ smull      r2, r3, r0, r1 };
            r4 = sub_e0a03c(0x0, 0x0);
            arg_4 = *_NSConcreteStackBlock;
            asm{ strd       r0, r8, [sp, #0x8] };
            asm{ strd       r1, r2, [sp, #0x10] };
            arg_18 = loc_e09fa4(r11, 0xa8ea2f, 0x20c5500);
            arg_1C = var_0;
            r6 = loc_e09fa4(var_0);
            sub_e0a038(r4, 0x0, *_dispatch_main_q);
            loc_e09f94(arg_1C);
            loc_e09f94(arg_18);
            loc_e09f94(r6);
    }
    r0 = loc_e09f94(r10);
    Pop();
    Pop();
    Pop();
    return;
}

- (void)_submitAnswerToServerWithOptions:(id)arg2 
{
    r7 = &arg_C;
    asm{ bfc        r4, #0x0, #0x4 };
    asm{ vst1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vst1.64    {d12, d13, d14, d15}, [r4:128] };
    sp = 0x90 - sp - 0x40;
    r10 = self;
    r11 = loc_e09fa4(arg2, _cmd, arg2);
    loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
    r7 = r7;
    r5 = loc_e09f9c();
    r8 = loc_e09f98(r5, @selector(timeIntervalSince1970));
    loc_e09f94(r5);
    r6 = @selector(retryIndex);
    r5 = loc_e09f98(r10, r6);
    arg_74 = *__objc_personality_v0;
    r0 = *0xa8edb0;
    arg_78 = 0x1f2134c;
    arg_7C = r7;
    arg_84 = sp;
    arg_80 = (r0 | 0x1) + 0xa8eb0c;
    sub_e09ff8();
    @selector(timeIntervalSince1970) << 0x10 | r8;
    asm{ vmul.f64   d16, d17, d16 };
    r4 = sub_e0a078();
    r8 = 0x40000000 >> 0x10;
    arg_34 = r11;
    if (r5 == 0x0) goto loc_a8eb7a;
    goto loc_a8eb36;

loc_a8eb7a:
    arg_60 = 0xffffffff;
    loc_e09f98(r10, @selector(questionTrace));
    arg_60 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    arg_60 = 0xffffffff;

loc_a8ebfc:
    loc_e09f98();
    loc_e09f94(r5);

loc_a8ec06:
    sub_e09ff4(&arg_54, r10);
    arg_28 = TTFQuizShowLiveRoomNetworkManager;
    arg_58 = &arg_38 + 0x18;
    arg_60 = 0x1;
    arg_30 = r10;
    loc_e09f98(r10, @selector(viewModel), &arg_38 + 0x18);
    arg_60 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_60 = 0x2;
    arg_2C = r0;
    loc_e09f98();
    arg_60 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_60 = 0x3;
    arg_24 = r0;
    loc_e09f98();
    asm{ strd       r1, r0, [sp, #0x1c] };
    arg_60 = 0x4;
    loc_e09f98(arg_30, @selector(question));
    arg_60 = 0xffffffff;
    r0 = loc_e09f9c();
    arg_60 = 0x5;
    arg_30 = r0;
    loc_e09f98();
    r0 = *_NSConcreteStackBlock;
    arg_38 = r0;
    arg_3C = 0xc2000000;
    asm{ stm        r3!, {r0, r1, r2} };
    loc_e09ff0(arg_58, &arg_54, 0x20c5518, &arg_40);
    r2 = loc_e09fa4(arg_34);
    arg_4C = r2;
    arg_60 = 0x6;
    arg_34 = r2;
    asm{ strd       r2, r0, [sp, #0x8] };
    asm{ strd       r4, r5, [sp] };
    asm{ ldrd       r3, r2, [sp, #0x1c] };
    loc_e09f98(arg_28, @selector(submitAnwserOfActivityID:questionID:optionIDs:completion:), r2);
    loc_e09f94(arg_30);
    loc_e09f94(arg_24);
    loc_e09f94(arg_2C);
    loc_e09f94(arg_4C);
    sub_e09f90(arg_58);
    sub_e09f90(&arg_54);
    loc_e09f94(arg_34);
    r0 = loc_e09fec(&arg_5C);
    asm{ vld1.64    {d8, d9, d10, d11}, [r4:128]! };
    asm{ vld1.64    {d12, d13, d14, d15}, [r4:128] };
    Pop();
    Pop();
    Pop();
    return;

loc_a8eb36:
    r11 = r4;
    arg_30 = r8;
    arg_60 = 0xffffffff;
    if (loc_e09f98(r10, r6) != 0x1) goto loc_a8ebb2;
    goto loc_a8eb4e;

loc_a8ebb2:
    arg_60 = 0xffffffff;
    if (loc_e09f98(r10, r6) != 0x2) goto loc_a8ec06;
    r8 = 0xffffffff;
    arg_60 = r8;
    loc_e09f98(r10, @selector(questionTrace));
    arg_60 = r8;
    r7 = r7;
    r5 = loc_e09f9c();
    arg_60 = r8;
    r0 = 0x2345758;

loc_a8ebf4:
    goto loc_a8ebfc;

loc_a8eb4e:
    arg_60 = 0xffffffff;
    loc_e09f98(r10, @selector(questionTrace));
    arg_60 = 0xffffffff;
    r7 = r7;
    r5 = loc_e09f9c();
    arg_60 = 0xffffffff;
    r0 = 0x2345754;
    goto loc_a8ebf4;
}

- (id)isUserNeedAnswer
{
    r0 = self;
    r1 = @selector(userNeedAnswer);
    r0 = loc_1be4138(r0, r1);
    return r0;
}

- (id)userAnswerResult
{
    r7 = &arg_8;
    r4 = self;
    if (loc_e09f98(r4, @selector(isUserNeedAnswer)) != 0x0) {
            loc_e09f98(r4, @selector(answer));
            r5 = loc_e09f9c();
            loc_e09f94();
            if (r5 != 0x0) {
                    r1 = loc_e09f98(r4, @selector(isUserAnswerCorrect));
                    r0 = 0x2;
                    asm{ it         eq };
                    if (r1 == 0x0) {
                            r0 = 0x3;
                    }
                    return r0;
            }
            else {
                    r0 = 0x1;
                    return r0;
            }
    }
    else {
            r0 = 0x0;
            return r0;
    }
    return r0;
}

- (void)userClickOption
{
    r0 = self;
    if (CPU_FLAGS & NE) {
                Push(r4);
                Push(r5);
                Push(r6);
                Push(r7);
                Push(lr);
    }
    r8 = r0;
    r5 = @selector(questionTrace);
    loc_e09f98(r8, r5);
    r7 = &arg_C;
    r6 = loc_e09f9c();
    r4 = loc_e09f98(r6, @selector(isClick));
    r0 = loc_e09f94(r6);
    if (r4 != 0x0) {
            return;
    }
    else {
            loc_e09f98(r8, r5);
            r4 = loc_e09f9c();
            loc_e09f98(r4, @selector(setIsClick:), 0x1);
            loc_e09f94(r4);
            loc_e09f98(r8, r5);
            r4 = loc_e09f9c();
            loc_e09f98(NSDate, @selector(date), objc_cls_ref_NSDate);
            r5 = loc_e09f9c();
            @selector(timeIntervalSince1970) << 0x10 | loc_e09f98(r5, @selector(timeIntervalSince1970));
            asm{ vmul.f64   d16, d17, d16 };
            r2 = sub_e0a078();
            r1 = @selector(setClickT:);
            loc_e09f98(r4, r1, r2, 0x0 >> 0x10);
            loc_e09f94(r5);
            r0 = r4;
            Pop();
            Pop();
            Pop();
            Pop();
            Pop();
            r0 = loc_1be412c(r0, r1);
    }
    return;
}

- (void)setUserChoosen:(id)arg2 
{
    r0 = self;
    r1 = @selector(setUserChoosenOptions:);
    r0 = loc_1be4138(r0, r1);
    return;
}

- (id)delegate
{
    r1 = *objc_ivar_offset_TTFQuestionAnswerUnit__delegate;
    r0 = sub_e09f88();
    Pop();
    Pop();
    r0 = loc_e09f82(r0, r1);
    return r0;
}

- (void)setDelegate:(id)arg2 
{
    r0 = loc_e09f8c(self + *objc_ivar_offset_TTFQuestionAnswerUnit__delegate, arg2, arg2);
    return;
}

- (id)viewModel
{
    r1 = *objc_ivar_offset_TTFQuestionAnswerUnit__viewModel;
    r0 = sub_e09f88();
    Pop();
    Pop();
    r0 = loc_e09f82(r0, r1);
    return r0;
}

- (void)setViewModel:(id)arg2 
{
    r0 = loc_e09f8c(self + *objc_ivar_offset_TTFQuestionAnswerUnit__viewModel, arg2, arg2);
    return;
}

- (id)status
{
    r0 = self->_status;
    return r0;
}

- (void)setStatus:(id)arg2 
{
    r0 = self;
    r0->_status = arg2;
    return;
}

- (id)question
{
    r0 = self->_question;
    return r0;
}

- (void)setQuestion:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuestionAnswerUnit__question, arg2, arg2);
    return;
}

- (id)answer
{
    r0 = self->_answer;
    return r0;
}

- (void)setAnswer:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuestionAnswerUnit__answer, arg2, arg2);
    return;
}

- (id)remainingAnswerTime
{
    r0 = self->_remainingAnswerTime;
    return r0;
}

- (void)setRemainingAnswerTime:(id)arg2 
{
    r0 = self;
    r0->_remainingAnswerTime = arg2;
    return;
}

- (id)userChoosenOptions
{
    r0 = loc_e09fd4(self, _cmd);
    return r0;
}

- (void)setUserChoosenOptions:(id)arg2 
{
    r0 = loc_e09fd8(self, _cmd, arg2);
    return;
}

- (id)answerTrace
{
    r0 = self->_answerTrace;
    return r0;
}

- (void)setAnswerTrace:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuestionAnswerUnit__answerTrace, arg2, arg2);
    return;
}

- (id)randomOrderIndexArray
{
    r0 = self->_randomOrderIndexArray;
    return r0;
}

- (void)setRandomOrderIndexArray:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuestionAnswerUnit__randomOrderIndexArray, arg2, arg2);
    return;
}

- (id)heartbeatTrace
{
    r0 = self->_heartbeatTrace;
    return r0;
}

- (void)setHeartbeatTrace:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuestionAnswerUnit__heartbeatTrace, arg2, arg2);
    return;
}

- (id)bufferRemainingAnswerTime
{
    r0 = self->_bufferRemainingAnswerTime;
    return r0;
}

- (void)setBufferRemainingAnswerTime:(id)arg2 
{
    r0 = self;
    r0->_bufferRemainingAnswerTime = arg2;
    return;
}

- (id)endTime
{
    r0 = self->_endTime;
    return r0;
}

- (void)setEndTime:(id)arg2 
{
    r0 = self;
    r0->_endTime = arg2;
    return;
}

- (id)countdownDisplayLink
{
    r0 = self->_countdownDisplayLink;
    return r0;
}

- (void)setCountdownDisplayLink:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuestionAnswerUnit__countdownDisplayLink, arg2, arg2);
    return;
}

- (id)userNeedAnswer
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setUserNeedAnswer:(id)arg2 
{
    r0 = self;
    r0->_userNeedAnswer = arg2;
    return;
}

- (id)isUserAnswerCorrect
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsUserAnswerCorrect:(id)arg2 
{
    r0 = self;
    r0->_isUserAnswerCorrect = arg2;
    return;
}

- (id)retryCount
{
    r0 = self->_retryCount;
    return r0;
}

- (void)setRetryCount:(id)arg2 
{
    r0 = self;
    r0->_retryCount = arg2;
    return;
}

- (id)retryTimeout
{
    r0 = self->_retryTimeout;
    return r0;
}

- (void)setRetryTimeout:(id)arg2 
{
    r0 = self;
    r0->_retryTimeout = arg2;
    return;
}

- (id)retryIndex
{
    r0 = self->_retryIndex;
    return r0;
}

- (void)setRetryIndex:(id)arg2 
{
    r0 = self;
    r0->_retryIndex = arg2;
    return;
}

- (id)questionTrace
{
    r0 = self->_questionTrace;
    return r0;
}

- (void)setQuestionTrace:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFQuestionAnswerUnit__questionTrace, arg2, arg2);
    return;
}

- (void).cxx_destruct
{
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__questionTrace;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__countdownDisplayLink;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__heartbeatTrace;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__randomOrderIndexArray;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__answerTrace;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__userChoosenOptions;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__answer;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__question;
    loc_e09fac(r0 + self, 0x0);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__viewModel;
    sub_e09f90(r0 + self);
    r0 = *objc_ivar_offset_TTFQuestionAnswerUnit__delegate;
    Pop();
    Pop();
    Pop();
    r0 = loc_1be4168();
    return;
}

@end

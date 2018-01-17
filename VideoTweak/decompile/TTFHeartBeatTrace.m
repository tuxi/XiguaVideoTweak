
@implementation TTFHeartBeatTrace

- (id)init
{
    loc_e09f98(self, @selector(doesNotRecognizeSelector:), _cmd);
    loc_e09f94(self);
    return 0x0;
}

- (id)initWithHeartBeat:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x8;
    r6 = arg2;
    r4 = loc_e09fa4(r6, _cmd, arg2);
    var_0 = self;
    arg_4 = *0x2352e70;
    r5 = loc_e09fa0(sp, @selector(init));
    if (r5 != 0x0) {
            r0 = *objc_ivar_offset_TTFHeartBeatTrace__heartbeat;
            loc_e09fac(r0 + r5, r6);
            r0 = loc_e09f98(r4, @selector(activityId));
            r2 = *objc_ivar_offset_TTFHeartBeatTrace__activityId;
            *(r5 + r2) = r0;
            *(0x4 + r5 + r2) = @selector(activityId);
            loc_e09f98(NSDate, @selector(date), r2, 0x2331518);
            r6 = loc_e09f9c();
            @selector(timeIntervalSince1970) << 0x10 | loc_e09f98(r6, @selector(timeIntervalSince1970));
            asm{ vmul.f64   d16, d17, d16 };
            r0 = sub_e0a078();
            r2 = *objc_ivar_offset_TTFHeartBeatTrace__localTime;
            *(r5 + r2) = r0;
            *(0x4 + r5 + r2) = 0x0 >> 0x10;
            loc_e09f94(r6);
            r0 = loc_e09f98(r4, @selector(timestampMs));
            r2 = *objc_ivar_offset_TTFHeartBeatTrace__htTime;
            *(r5 + r2) = r0;
            *(0x4 + r5 + r2) = @selector(timestampMs);
            r0 = loc_e09f98(r4, @selector(currentActivityStatus), r2, 0x23452ac);
            r5->_htStatus = r0;
    }
    loc_e09f94(r4);
    r0 = r5;
    return r0;
}

- (id)description
{
    loc_e09f98(self, @selector(heartbeat));
    r10 = loc_e09f9c();
    loc_e09f98(r10, @selector(description));
    r11 = loc_e09f9c();
    loc_e09f98(self, @selector(traceDict));
    r0 = loc_e09f9c();
    r5 = r0;
    loc_e09f98();
    r4 = loc_e09f9c();
    var_0 = r4;
    loc_e09f98(NSString, @selector(stringWithFormat:), @"%@,%@", r11);
    r7 = &arg_C;
    r6 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r11);
    loc_e09f94(r10);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r6, @selector(stringWithFormat:));
    return r0;
}

- (id)heartbeat
{
    r0 = self->_heartbeat;
    return r0;
}

- (void)setHeartbeat:(id)arg2 
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFHeartBeatTrace__heartbeat, arg2, arg2);
    return;
}

- (id)activityId
{
    r1 = *objc_ivar_offset_TTFHeartBeatTrace__activityId;
    r2 = *(self + r1);
    r0 = r2;
    return r0;
}

- (void)setActivityId:(id)arg2 
{
    r1 = *objc_ivar_offset_TTFHeartBeatTrace__activityId;
    *(self + r1) = arg2;
    r0 = self + r1;
    *(r0 + 0x4) = r3;
    return;
}

- (id)isFromWs
{
    r0 = self;
    asm{ ldrsb      r0, [r0, r1] };
    return r0;
}

- (void)setIsFromWs:(id)arg2 
{
    r0 = self;
    r0->_isFromWs = arg2;
    return;
}

- (id)localTime
{
    r1 = *objc_ivar_offset_TTFHeartBeatTrace__localTime;
    r2 = *(self + r1);
    r0 = r2;
    return r0;
}

- (void)setLocalTime:(id)arg2 
{
    r1 = *objc_ivar_offset_TTFHeartBeatTrace__localTime;
    *(self + r1) = arg2;
    r0 = self + r1;
    *(r0 + 0x4) = r3;
    return;
}

- (id)htTime
{
    r1 = *objc_ivar_offset_TTFHeartBeatTrace__htTime;
    r2 = *(self + r1);
    r0 = r2;
    return r0;
}

- (void)setHtTime:(id)arg2 
{
    r1 = *objc_ivar_offset_TTFHeartBeatTrace__htTime;
    *(self + r1) = arg2;
    r0 = self + r1;
    *(r0 + 0x4) = r3;
    return;
}

- (id)htStatus
{
    r0 = self->_htStatus;
    return r0;
}

- (void)setHtStatus:(id)arg2 
{
    r0 = self;
    r0->_htStatus = arg2;
    return;
}

- (void).cxx_destruct
{
    r0 = loc_e09f7e(self + *objc_ivar_offset_TTFHeartBeatTrace__heartbeat, 0x0, r2);
    return;
}

- (id)traceDict
{
    STK32 = r4;
    STK35 = r7;
    r7 = &arg_C;
    sp = sp - 0x30;
    arg_2C = *___stack_chk_guard;
    r3 = *objc_ivar_offset_TTFHeartBeatTrace__activityId;
    arg_4 = @"activityId";
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), *(self + r3), @selector(numberWithShort:), r11, r10, r8, lr, STK35, r6, r5, STK32);
    r8 = loc_e09f9c();
    arg_8 = @"isFromWs";
    r2 = *objc_ivar_offset_TTFHeartBeatTrace__isFromWs;
    arg_18 = r8;
    asm{ ldrsb      r2, [r6, r2] };
    loc_e09f98(NSNumber, @selector(numberWithBool:), r2);
    r10 = loc_e09f9c();
    arg_C = @"localTime";
    r0 = *objc_ivar_offset_TTFHeartBeatTrace__localTime;
    arg_1C = r10;
    r2 = *(self + r0);
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), r2, *0x1c);
    r11 = loc_e09f9c();
    arg_10 = @"htTime";
    r0 = *objc_ivar_offset_TTFHeartBeatTrace__htTime;
    arg_20 = r11;
    r2 = *(self + r0);
    loc_e09f98(NSNumber, @selector(numberWithLongLong:), r2, *0x24);
    r5 = loc_e09f9c();
    arg_14 = @"htStatus";
    arg_24 = r5;
    loc_e09f98(NSNumber, @selector(numberWithInt:), self->_htStatus);
    r4 = loc_e09f9c();
    arg_28 = r4;
    var_0 = 0x5;
    loc_e09f98(NSDictionary, @selector(dictionaryWithObjects:forKeys:count:), &arg_18, &arg_4);
    r7 = r7;
    r6 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r11);
    loc_e09f94(r10);
    loc_e09f94(r8);
    r1 = *___stack_chk_guard;
    asm{ it         ne };
    if (r1 != arg_2C) {
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

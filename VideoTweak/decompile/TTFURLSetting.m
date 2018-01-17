
@implementation TTFURLSetting

+ (id)domainForType:(id)arg2 
{
    r4 = arg2;
    r10 = @"";
    loc_e09fa4(r10, _cmd, arg2);
    r6 = @selector(sharedService);
    loc_e09f98(TTFantasyService, r6);
    r5 = loc_e09f9c();
    r1 = @selector(settings);
    loc_e09f98(r5, r1);
    r7 = &arg_C;
    r8 = loc_e09f9c();
    loc_e09f94(r5);
    if (r4 > 0x3) goto loc_af3790;
    goto loc_af3598;

loc_af3790:
    loc_e09f94(r8);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r10, r1);
    return r0;

loc_af3598:
    (*(int8_t *)(0xaf359c + r4))();
    r0 = *objc_cls_ref_TTFantasyService;
    loc_e09f98(r0, r6);
    r7 = r7;
    r4 = loc_e09f9c();
    r5 = loc_e09f98(r4, @selector(isTestEnvEnabled));
    loc_e09f94(r4);
    r1 = @selector(objectForKeyedSubscript:);
    if (r5 == 0x0) goto loc_af36f2;
    goto loc_af35de;

loc_af36f2:
    loc_e09f98(r8);
    r7 = r7;

loc_af3760:
    r4 = loc_e09f9c();

loc_af3770:
    asm{ it         ne };
    if (r4 != 0x0) {
    }
    r10 = loc_e09fa4();
    loc_e09f94(@"");
    loc_e09f94(r4);
    goto loc_af3790;

loc_af35de:
    loc_e09f98(r8);
    r7 = r7;

loc_af36e0:
    r4 = loc_e09f9c();
    goto loc_af3770;

loc_af3706:
    loc_e09f98(r8);
    r7 = r7;
    r4 = loc_e09f9c();
    goto loc_af3770;

loc_af362e:
    loc_e09f98(r8);
    r7 = r7;
    goto loc_af36e0;

loc_af374e:
    loc_e09f98(r8);
    r7 = r7;
    goto loc_af3760;

loc_af36ce:
    loc_e09f98(r8);
    r7 = r7;
    goto loc_af36e0;
}

+ (id)frontierURL
{
    if (CPU_FLAGS & E) {
                Push(r4);
                Push(r5);
                Push(r7);
                Push(lr);
    }
    loc_e09f98();
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"wss://%@/ws/v2", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)indexURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/ans/index/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)indexInfoURL
{
    loc_e09f98(self, @selector(domainForType:), 0x1);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/cdn/h/1/cli/index_info/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)quizShowInitURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/ans/init/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)quizShowLeaveURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/ans/leave/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)submitAnwserURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"http://%@/h/1/ans/submit/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)heartbeatURLWithActivityID:(id)arg2 
{
    loc_e09f98(self, @selector(domainForType:), 0x1);
    r4 = loc_e09f9c();
    asm{ strd       r5, r8, [sp] };
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/cdn/h/1/heartbeat/%lld", r4);
    r7 = &arg_C;
    r5 = loc_e09f9c();
    loc_e09f94(r4);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r5, @selector(stringWithFormat:));
    return r0;
}

+ (id)commentPostURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/comment/post/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)commentBrowURL
{
    loc_e09f98(self, @selector(domainForType:), 0x1);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/cdn/h/1/comment/brow/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)ansWinURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/ans/win/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)signUpURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/ans/sign/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)logURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/log/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)playURLsURLWithGroupID:(id)arg2 
{
    r7 = &arg_C;
    sp = sp - 0x4;
    r5 = r3;
    r11 = arg2;
    r10 = @selector(sharedService);
    loc_e09f98(TTFantasyService, r10, arg2);
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(delegate));
    r4 = loc_e09f9c();
    loc_e09f98(r4, @selector(getAppID));
    r7 = r7;
    r8 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(r6);
    if (r0 != 0x0) {
            r3 = r11;
            var_0 = r5;
            r11 = @selector(stringWithFormat:);
            loc_e09f98(NSString, @selector(stringWithFormat:), @"%lld", r3);
            r7 = r7;
            r5 = loc_e09f9c();
            loc_e09f94(r8);
            r8 = r5;
    }
    else {
            r11 = @selector(stringWithFormat:);
    }
    loc_e09f98(TTFantasyService, r10);
    r6 = loc_e09f9c();
    loc_e09f98(r6, @selector(settings));
    r5 = loc_e09f9c();
    loc_e09f94(r6);
    r6 = NSString;
    loc_e09f98(r5, @selector(objectForKeyedSubscript:), @"cdn_domain");
    r7 = r7;
    r4 = loc_e09f9c();
    var_0 = r8;
    asm{ it         ne };
    if (r4 != 0x0) {
    }
    loc_e09f98(r6, r11);
    r6 = loc_e09f9c();
    loc_e09f94(r4);
    loc_e09f94(r5);
    loc_e09f94(r8);
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r6, r11);
    return r0;
}

+ (id)rankURL
{
    if (CPU_FLAGS & E) {
                Push(r4);
                Push(r5);
                Push(r7);
                Push(lr);
    }
    loc_e09f98();
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/rank/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)checkInvicationCodeURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/check_invite/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)inviteCodeURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/invite/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)walletPageURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/page/wallet", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)shareTypeURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/share/type/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)shareToFriendsBaseURL
{
    loc_e09f98(self, @selector(domainForType:), 0x3);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/page", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)settingsURL
{
    r1 = @selector(stringWithFormat:);
    r0 = NSString;
    r0 = loc_1be4138(r0, r1);
    return r0;
}

+ (id)userGuideURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/page/guide", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)resurrectPageURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/page/revive-star", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)recoverURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/ans/recover/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

+ (id)shareAddLifeURL
{
    loc_e09f98(self, @selector(domainForType:), 0x0);
    r5 = loc_e09f9c();
    loc_e09f98(NSString, @selector(stringWithFormat:), @"https://%@/h/1/cli/share/addlife/", r5);
    r4 = loc_e09f9c();
    loc_e09f94(r5);
    Pop();
    Pop();
    Pop();
    Pop();
    r0 = loc_e09f82(r4, @selector(stringWithFormat:));
    return r0;
}

@end

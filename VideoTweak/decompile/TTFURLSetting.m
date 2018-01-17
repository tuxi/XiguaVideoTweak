
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

/**
 http://api-spe.snssdk.com/h/1/ans/index/?fp=F2TqLzcScrUSFlDrLSU1FlFSF2c7&version_code=1.0&app_name=news_article&vid=F33D9B1C-9D06-494E-933B-AF2E2D68EEC8&device_id=3304350490&channel=pp&resolution=1536*2048&aid=13&ab_version=257809,258186,256801,253449,248579,249685,249687,249675,249668,252533,249670,206078,249674,257297,258067,229304,249671,256772,232362,257900,239097,256932,250561,243583,248081,258355,257285,258440,258264,255853,240868,258520,251158,251797,251711,229900,257784,214069,31650,251454,258229,251873,251623,258356,247848,228168,254166,257532,248625,205527,258488,249960,256785,258054,210246,245085,249916,252768,249828,246859,246436&ab_feature=z1&openudid=82416ce2741175208f1ad41921e5ad34be1d9963&idfv=F33D9B1C-9D06-494E-933B-AF2E2D68EEC8&ac=WIFI&os_version=10.3.2&ssmix=a&device_platform=ipad&iid=23656004609&ab_client=a1,f2,f7,e1&device_type=iPad%20AIR&idfa=787931B6-61E3-49D4-9EE0-FC75FC9AC974&as=a2a5b5458d52da524f5678&ts=1516196397
 */
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
/**
 http://api-spe-ttl.ixigua.com/cdn/h/1/cli/index_info/13_2/?iid=23622246612&resolution=1242*2208&ab_client=a1,f2,f7,e1&ab_version=256801,248579,249685,249687,249675,249668,252533,249670,206078,249674,257297,258067,229304,249671,256772,232362,258675,257900,239097,256932,250561,243583,248081,258355,257285,258440,257248,258264,255853,240868,258520,251158,251797,254283,251711,229900,257784,214069,31650,258229,255232,251623,258356,247848,228168,254166,257532,248625,205527,258488,249960,258054,258692,210246,258453,245085,249916,252768,249828,246859,246436&app_name=news_article&channel=pp&device_platform=iphone&idfa=4FF322E8-DBC8-4D38-91DD-E6F5CDA2B261&ssmix=a&vid=E5034F6D-69A8-4008-9CE9-AD8C37C3AE35&openudid=d026bca5acedc277218dd1028db3ec1aafee6a6c&device_type=iPhone%208%20Plus&ab_feature=z1&idfv=E5034F6D-69A8-4008-9CE9-AD8C37C3AE35&version_code=1.0&ac=WIFI&os_version=11.2.1&aid=13&device_id=40444474551&as=a2d545c51881ea6bcf9053&ts=1516198680
 */
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

/*
 http://api-spe-ttl.ixigua.com/cdn/h/1/heartbeat/13241404?fp=F2TqLzcScrUSFlDrLSU1FlFSF2c7&version_code=1.0&app_name=news_article&vid=F33D9B1C-9D06-494E-933B-AF2E2D68EEC8&device_id=3304350490&channel=pp&resolution=1536*2048&aid=13&ab_version=257809,258186,256801,253449,248579,249685,249687,249675,249668,252533,249670,206078,249674,257297,258067,229304,249671,256772,232362,257900,239097,256932,250561,243583,248081,258355,257285,258440,258264,255853,240868,258520,251158,251797,251711,229900,257784,214069,31650,251454,258229,251873,251623,258356,247848,228168,254166,257532,248625,205527,258488,249960,256785,258054,210246,245085,249916,252768,249828,246859,246436&ab_feature=z1&openudid=82416ce2741175208f1ad41921e5ad34be1d9963&idfv=F33D9B1C-9D06-494E-933B-AF2E2D68EEC8&ac=WIFI&os_version=10.3.2&ssmix=a&device_platform=ipad&iid=23656004609&ab_client=a1,f2,f7,e1&device_type=iPad%20AIR&idfa=787931B6-61E3-49D4-9EE0-FC75FC9AC974&as=a2f535f59763aa62cf9220&ts=1516196407
 */
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
/**
 http://api-spe-ttl.ixigua.com/cdn/h/1/comment/brow/13241404?iid=23622246612&resolution=1242*2208&ab_client=a1,f2,f7,e1&ab_version=256801,248579,249685,249687,249675,249668,252533,249670,206078,249674,257297,258067,229304,249671,256772,232362,258675,257900,239097,256932,250561,243583,248081,258355,257285,258440,257248,258264,255853,240868,258520,251158,251797,254283,251711,229900,257784,214069,31650,258229,255232,251623,258356,247848,228168,254166,257532,248625,205527,258488,249960,258054,258692,210246,258453,245085,249916,252768,249828,246859,246436&app_name=news_article&channel=pp&device_platform=iphone&idfa=4FF322E8-DBC8-4D38-91DD-E6F5CDA2B261&ssmix=a&vid=E5034F6D-69A8-4008-9CE9-AD8C37C3AE35&openudid=d026bca5acedc277218dd1028db3ec1aafee6a6c&device_type=iPhone%208%20Plus&ab_feature=z1&idfv=E5034F6D-69A8-4008-9CE9-AD8C37C3AE35&version_code=1.0&ac=WIFI&os_version=11.2.1&aid=13&device_id=40444474551&as=a2651555c9716aab3f2751&ts=1516198681
 */
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

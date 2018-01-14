//
//  Tweak.xm
//  Video
//
//  Created by xiaoyuan on 2018/1/13.
//  Copyright © 2018年 alpface. All rights reserved.
//

#import "VideoHeaders.h"
#import "ExceptionUtils.h"

%hook AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    BOOL res = %orig;
    
    return res;
}


%end

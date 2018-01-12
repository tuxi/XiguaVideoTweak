//
//  UIViewController+XYHookExtend.m
//  VideoTweak
//
//  Created by swae on 2018/1/13.
//  Copyright © 2018年 alpface. All rights reserved.
//

#import "UIViewController+XYHookExtend.h"
#import <objc/runtime.h>

@implementation UIViewController (XYHookExtend)
    
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class class = [self class];
        
        SEL originalSelector = @selector(viewWillAppear:);
        SEL swizzledSelector = @selector(xy_viewWillAppear:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL didAddMethod =
        class_addMethod(class,
                        originalSelector,
                        method_getImplementation(swizzledMethod),
                        method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
            
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}
- (void)xy_viewWillAppear:(BOOL)animated {
    [self xy_viewWillAppear:animated];
    
    NSLog(@"%s", __func__);
}

@end

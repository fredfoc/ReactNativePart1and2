//
//  MyNativeModule.m
//  MyReactNativeApp
//
//  Created by fauquette fred on 26/01/18.
//  Copyright © 2018 Fred Fauquette. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTBridgeModule.h>

@interface MyNativeModule : NSObject
@end

@interface MyNativeModule (RCTExternModule) <RCTBridgeModule>
@end

@implementation MyNativeModule (RCTExternModule)
dispatch_queue_t RCTJSThread;
void RCTRegisterModule(Class);
+ (NSString *)moduleName {
    return @"MyNativeModule";
}
+ (void)load {
    RCTRegisterModule(self);
}

+ (const RCTMethodInfo *)__rct_export__uniqueID {
    static RCTMethodInfo config = {"triggerJSRequest", "triggerRequest", NO};
    return &config;
}

@end

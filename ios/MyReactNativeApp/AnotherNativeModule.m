//
//  AnotherNativeModule.m
//  MyReactNativeApp
//
//  Created by fauquette fred on 29/01/18.
//  Copyright © 2018 Fred Fauquette. All rights reserved.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(AnotherNativeModule, NSObject)
RCT_EXTERN_METHOD(triggerAnotherRequest)
RCT_EXTERN_METHOD(callWithName:(NSString *)name)
@end

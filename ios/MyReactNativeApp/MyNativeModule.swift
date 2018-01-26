//
//  MyNativeModule.swift
//  MyReactNativeApp
//
//  Created by fauquette fred on 26/01/18.
//  Copyright © 2018 Fred Fauquette. All rights reserved.
//

import Foundation
import React


@objc(MyNativeModule)
class MyNativeModule: NSObject, RCTBridgeModule {
    override init() {
        super.init()
    }
    
    static func moduleName() -> String! {
        return "MyNativeModule"
    }
    static func requiresMainQueueSetup() -> Bool {
        return false
    }
    var bridge: RCTBridge?
    var methodQueue: DispatchQueue?
    
    @objc func triggerRequest() -> Void {
        print("trigger Request")
    }
    
    
    @objc func batchDidComplete() {
        
    }
    
    @objc func partialBatchDidFlush() {
        
    }
}


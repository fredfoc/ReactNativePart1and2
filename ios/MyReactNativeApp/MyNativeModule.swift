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
class MyNativeModule: NSObject {
    override init() {
        super.init()
    }
    @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
    @objc var bridge: RCTBridge?
    @objc var methodQueue: DispatchQueue?
    @objc func triggerRequest() -> Void {
        print("trigger Request")
    }
    @objc func batchDidComplete() {
        // do something if needed at the end of the batch
    }
    @objc func partialBatchDidFlush() {
        // do something if needed at the end of the partial flush of the batch
    }
}


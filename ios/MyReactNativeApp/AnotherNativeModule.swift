//
//  AnotherNativeModule.swift
//  MyReactNativeApp
//
//  Created by fauquette fred on 29/01/18.
//  Copyright © 2018 Fred Fauquette. All rights reserved.
//

import Foundation
import React


@objc(AnotherNativeModule)
class AnotherNativeModule: NSObject {
    // MARK: RCTBridgeModule
    @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
    // MARK: Bridged methods
    @objc func triggerAnotherRequest() -> Void {
        print("trigger Another Request")
    }
    
    @objc func call(name: String) -> Void {
        print("call : " + name)
    }

}

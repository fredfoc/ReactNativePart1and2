//
//  ViewController.swift
//  MyReactNativeApp
//
//  Created by fauquette fred on 26/01/18.
//  Copyright © 2018 Fred Fauquette. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "TestView",
            initialProperties: nil,
            launchOptions: nil
        )
        view = rootView
    }

}


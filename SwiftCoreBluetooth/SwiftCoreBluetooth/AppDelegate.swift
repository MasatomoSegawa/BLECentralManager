//
//  AppDelegate.swift
//  SwiftCoreBluetooth
//
//  Created by Masatomo Segawa on 2015/03/13.
//  Copyright (c) 2015年 Masatomo Segawa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // ViewControllerを生成する.
        let myFirstViewController = ViewController()
        
        // UIWindowを生成する.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // rootViewControllerにNatigationControllerを設定する.
        self.window?.rootViewController = myFirstViewController
        
        self.window?.makeKeyAndVisible()
        
        // CentralMangerの初期化.
        var _CentralManager = CentralManager()
        
        return true
    }



}


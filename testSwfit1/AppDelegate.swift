//
//  AppDelegate.swift
//  testSwift
//
//  Created by XR on 15/10/21.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let rootView = ViewController()
        let navigationViewController = UINavigationController(rootViewController: rootView)
        
        self.window!.rootViewController = navigationViewController;
        self.window!.makeKeyAndVisible()
        return true
    }
    
}

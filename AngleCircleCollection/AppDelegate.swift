//
//  AppDelegate.swift
//  AngelCircleCollection
//
//  Created by Adiel Levy on 20/04/2020.
//  Copyright © 2020 Adiel Levy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.backgroundColor = UIColor.white
        let vc : AngelCollectionVC = AngelCollectionVC(nibName: "AngelCollectionVC", bundle: nil)
        
        self.window?.rootViewController = vc
        self.window!.makeKeyAndVisible()
        
        return true
    }

}

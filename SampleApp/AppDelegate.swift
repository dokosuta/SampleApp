//
//  AppDelegate.swift
//  SampleApp
//
//  Created by 窪田泰之 on 2020/08/14.
//  Copyright © 2020 窪田泰之. All rights reserved.
//

import SwiftyBeaver
import UIKit

let log: SwiftyBeaver.Type? = {
    #if DEBUG
        let logger = SwiftyBeaver.self
        let console = ConsoleDestination()
        console.asynchronously = false
        let file = FileDestination()
        logger.addDestination(console) // コンソールにログを出力する
        logger.addDestination(file) // ファイルにログを出力する
    
        return logger
    #else
        return nil
    #endif
}()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

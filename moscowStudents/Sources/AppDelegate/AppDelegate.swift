//
//  AppDelegate.swift
//  moscowStudents
//
//  Created by Владислав Игнатьев on 08/03/2019.
//  Copyright © 2019 Владислав Игнатьев. All rights reserved.
//

import UIKit
import SwiftyVK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    VKDelegate.shared.configure()
    
    return true
  }
  
  func application(_ app: UIApplication,
                   open url: URL,
                   options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool { // swiftlint: disable
    let app = options[.sourceApplication] as? String
    VK.handle(url: url, sourceApplication: app)
    return true
  }
  
}

//
//  VKDelegate.swift
//  moscowStudents
//
//  Created by Владислав Игнатьев on 15.03.2019.
//  Copyright © 2019 Студенты Москвы. All rights reserved.
//

import SwiftyVK

final class VKDelegate: SwiftyVKDelegate {
  
  static let shared = VKDelegate()
  
  let appId = "4994842"
  let scopes: Scopes = [.messages, .offline, .friends, .wall, .photos, .audio, .video, .docs, .market, .email]
  
  private init() {
    VK.setUp(appId: "", delegate: self)
  }
  
  func vkNeedsScopes(for sessionId: String) -> Scopes {
    return scopes
  }
  
  func vkNeedToPresent(viewController: VKViewController) {
    // This code works only for simplest cases and one screen applications
    // If you have application with two or more screens, you should use different implementation
    // HINT: google it - get top most UIViewController
//    if let rootController = UIApplication.shared.keyWindow?.rootViewController {
//      rootController.present(viewController, animated: true)
//    }
  }
  
  func vkTokenCreated(for sessionId: String, info: [String : String]) {
    print("token created in session \(sessionId) with info \(info)")
  }
  
  func vkTokenUpdated(for sessionId: String, info: [String : String]) {
    print("token updated in session \(sessionId) with info \(info)")
  }
  
  func vkTokenRemoved(for sessionId: String) {
    print("token removed in session \(sessionId)")
  }
  
}

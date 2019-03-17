//
//  VKService.swift
//  moscowStudents
//
//  Created by Владислав Игнатьев on 17.03.2019.
//  Copyright © 2019 Студенты Москвы. All rights reserved.
//

import SwiftyVK

final class VKService {
  
  static func authorize() {
    VK.sessions.default.logIn(onSuccess: { info in
      print("Success. Info: ", info)
    }, onError: { error in
      print(error.localizedDescription)
    })
  }
  
}

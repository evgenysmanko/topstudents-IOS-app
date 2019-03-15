//
//  ViewModelType.swift
//  moscowStudents
//
//  Created by Владислав Игнатьев on 15.03.2019.
//  Copyright © 2019 Студенты Москвы. All rights reserved.
//

protocol ViewModelType: AnyObject {
  
  associatedtype Input
  associatedtype Output
  
  func transform(input: Input) -> Output
  
}

//
//  LoginVKViewModel.swift
//  moscowStudents
//
//  Created by Владислав Игнатьев on 15.03.2019.
//  Copyright © 2019 Владислав Игнатьев. All rights reserved.
//

import RxSwift
import RxCocoa

final class LoginVKViewModel {
  
  private let disposeBag = DisposeBag()
  
}

// MARK: - ViewModelType
extension LoginVKViewModel: ViewModelType {
  
  struct Input { }
  
  struct Output { }
  
  func transform(input: Input) -> Output {
    return Output()
  }
  
}

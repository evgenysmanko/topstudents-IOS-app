//
//  LoginVKViewController.swift
//  moscowStudents
//
//  Created by Владислав Игнатьев on 08/03/2019.
//  Copyright © 2019 Владислав Игнатьев. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import SwiftyVK

final class LoginVKViewController: UIViewController {
  
  @IBOutlet private var loginButton: UIButton!
  
  private let viewModel = LoginVKViewModel()
  
  private let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    bindWith(viewModel)
    subscribe()
  }
  
  private func bindWith<V>(_ viewModel: V)
    where V: ViewModelType, V.Input == LoginVKViewModel.Input, V.Output == LoginVKViewModel.Output {
    
  }
  
  private func subscribe() {
    loginButton.rx.tap.subscribe(onNext: {
      VKService.authorize()
    })
      .disposed(by: disposeBag)
  }
  
}

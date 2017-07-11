//
//  RegisterPresenter.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class RegisterPresenter: PresenterInterface,RegisterModuleInterface {
    func register(username: String, password: String) {
        
    }
    
    func cancel() {
        
    }
    weak var moduleDelegate:RegisterModuleDelegate?
    var router: RouterInterface?
    var interactor: InteractorInterface?
    var viewer: ViewInterface?
}

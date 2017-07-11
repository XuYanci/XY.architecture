//
//  LoginPresenter.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class LoginPresenter: PresenterInterface,LoginModuleInterface {
    func login(username: String, password: String) {
        
    }
    
    func cancel() {
         
    }
    weak var moduleDelegate:LoginModuleDelegate?
    var router: RouterInterface?
    var interactor: InteractorInterface?
    var viewer: ViewInterface?
}

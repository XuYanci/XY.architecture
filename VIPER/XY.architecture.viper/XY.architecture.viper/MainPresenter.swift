//
//  MainPresenter.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class MainPresenter:PresenterInterface,MainModuleInterface {
    func gotoRegister() {
        if let r = router as? MainRouter {
            r.presentRegisterInterface()
        }
    }
    
    func gotoLogin() {
        if let r = router as? MainRouter {
            r.presentLoginInterface()
        }
    }
    weak var moduleDelegate:MainModuleDelegate?
    var router: RouterInterface?
    var interactor: InteractorInterface?
    var viewer: ViewInterface?
}

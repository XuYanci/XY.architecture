//
//  MainPresenter.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class MainPresenter:MainModuleInterface {
    func gotoRegister() {
        
    }
    
    func gotoLogin() {
        
    }
    weak var moduleDelegate:MainModuleDelegate?
    var router: RouterInterface?
    var interactor: InteractorInterface?
    var viewer: ViewInterface?
}
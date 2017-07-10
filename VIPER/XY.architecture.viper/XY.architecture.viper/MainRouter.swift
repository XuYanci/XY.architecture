//
//  MainRouter.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import Foundation
import UIKit

class MainRouter:RouterInterface {
    var presenter: PresenterInterface?
    var registerRouter:RegisterRouter?
    var loginRouter:LoginRouter?
    var rootRouter:RootRouter?
    
    func presentMainInterfaceFromWindow(window:UIWindow) {
        
    }
    
    func presentLoginInterface() {
        
    }
    
    func presentRegisterInterface() {
        
    }
    
    func loginViewControllerFromStoryboard() -> LoginViewController {
        let viewController = LoginViewController()
        return viewController
    }
    
    func registerViewControllerFromStoryboard() -> RegisterViewController {
        let viewController = RegisterViewController()
        return viewController
    }
    
    func mainViewControllerFromStoryboard() -> MainViewController {
        let viewController = MainViewController()
        return viewController
    }
    
    func mainStoryboard()->UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard
    }
    
    
}

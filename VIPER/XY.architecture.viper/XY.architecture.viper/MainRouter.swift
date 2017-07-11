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
    var mainViewController:MainViewController?
    
    // 展示主界面
    func presentMainInterfaceFromWindow(window:UIWindow) {
        let viewController = mainViewControllerFromStoryboard()
        viewController.presenter = presenter
        mainViewController = viewController
        presenter?.viewer = viewController
        rootRouter?.showRootViewController(viewController: viewController, inWindow: window)
    }
    
    // 展示登录界面
    func presentLoginInterface() {
        loginRouter?.presentLoginInterfaceFromViewController(viewController: mainViewController!)
    }
    
    // 展示注册界面
    func presentRegisterInterface() {
        registerRouter?.presentRegisterInterfaceFromViewController(viewController: mainViewController!)
    }
    
    
    
    func mainViewControllerFromStoryboard() -> MainViewController {
        let storyboard = mainStoryboard()
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "Main") as! MainViewController
        return mainViewController
    }
    
    func mainStoryboard()->UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard
    }
    
    
}

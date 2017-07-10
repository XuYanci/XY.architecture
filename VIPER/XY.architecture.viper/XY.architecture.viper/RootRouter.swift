//
//  RootWireFrame.swift
//  XY.architecture.viper
//
//  Created by Yanci on 2017/7/9.
//  Copyright © 2017年 tdw. All rights reserved.
//

import Foundation
import UIKit

class RootRouter: NSObject {
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = navigationControllerFromWindow(window: inWindow)
        navigationController.viewControllers = [viewController]
    }
    
    func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
}

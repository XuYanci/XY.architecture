//
//  AppDelegateDependency.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class AppDelegateDependency {
    var rootRouter = RootRouter()
    
    init() {
        configureDependencies()
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        
    }
    
    // MARK: First config every module  R , P , I , Second in R, Config V , P
    func configureDependencies() {
        
    }
}

//
//  AppDelegateDependency.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class AppDelegateDependency {
    
    let mainRouter = MainRouter()
    
    init() {
        configureDependencies()
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        
    }
    
    // MARK: First config every module  R , P , I 
    // Second in R, Config V , P
    
    // ADT: 
    // Main: - with login & register btn
    // Can go to login 
    // Can goto register
    
    // Login:
    // Login success  -> go to index
    // Login fail
    
    // Register:
    // Registe success  -> go to main
    // Register fail
    
    func configureDependencies() {
       
        // Setup main
//        let mainRouter = MainRouter()
        let mainPresenter = MainPresenter()
        let mainInteractor = MainInteractor()
        
        
        // Setup register
        let registerRouter =
            RegisterRouter()
        let registerPresenter = RegisterPresenter()
        let registerInteractor = RegisterInteractor()
      
        
        // Set up login
        let loginRouter = LoginRouter()
        let loginPresenter = LoginPresenter()
        let loginInteractor = LoginInteractor()
        
        
        // Set up index
        let indexRouter = IndexRouter()
        let indexPresenter = IndexPresenter()
        let indexInteractor = IndexInteractor()
        
        
        
        
        
    }
}

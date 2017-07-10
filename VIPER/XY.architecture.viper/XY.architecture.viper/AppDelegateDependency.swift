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
        mainRouter.presentMainInterfaceFromWindow(window: window)
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
        
        mainPresenter.interactor = mainInteractor
        mainInteractor.presenter = mainPresenter
        
        
        // Setup register
        let registerRouter =
            RegisterRouter()
        let registerPresenter = RegisterPresenter()
        let registerInteractor = RegisterInteractor()
        
        // R P
        registerRouter.presenter = registerPresenter
        // P R
        registerPresenter.router = registerRouter
        // P I
        registerPresenter.interactor = registerInteractor
        // I P
        registerInteractor.presenter = registerPresenter
       
        
      
        // Set up login
        let loginRouter = LoginRouter()
        let loginPresenter = LoginPresenter()
        let loginInteractor = LoginInteractor()
        
        // R P
        loginRouter.presenter = loginPresenter
        // P R
        loginPresenter.router = loginRouter
        // P I
        loginPresenter.interactor = loginInteractor
        // I P
        loginInteractor.presenter = loginPresenter
        
        
        // Set up index
        let indexRouter = IndexRouter()
        let indexPresenter = IndexPresenter()
        let indexInteractor = IndexInteractor()
        
        // R P
        indexRouter.presenter = indexPresenter
        // P R
        indexPresenter.router = indexRouter
        // P I
        indexPresenter.interactor = indexInteractor
        // I P
        indexInteractor.presenter = indexPresenter
        
        
        
    }
}

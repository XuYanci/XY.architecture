//
//  RegisterModuleInterface.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

protocol RegisterModuleInterface: PresenterInterface {
    func register(username:String,password:String)
    func cancel()
}

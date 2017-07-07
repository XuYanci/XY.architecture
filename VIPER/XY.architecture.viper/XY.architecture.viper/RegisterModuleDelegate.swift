//
//  RegisterModuleDelegate.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

protocol RegisterModuleDelegate: ViewInterface {
    func didRegisterSuccess()->Void
    func didRegisterFail(error:Error)->Void
}

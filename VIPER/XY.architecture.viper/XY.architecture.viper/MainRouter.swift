//
//  MainRouter.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class MainRouter:RouterInterface {
    var presenter: PresenterInterface?
    var registerRouter:RegisterRouter?
    var loginRouter:LoginRouter?
}

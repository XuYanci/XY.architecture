//
//  XYViperProtocols.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit


//// I
//// E
//// D
/// Application Logic -- can tdd

/// Module Interface
//// Interface  --  can do what
//// Delegate   --  do what

///  UserInterface
//// V
//// P
//// R

// Viper Structure
//             R
//             |
//   V   ->    P  -> I   - E
//       <~       <~     - E
//                   |
//                   D
//
//

/// Basic framework class

protocol ViewInterface:class {
    var presenter:PresenterInterface? { get set }
    // P -> V
}

protocol InteractorInterface:class {
    var presenter:PresenterInterface? { get set }
    
    // P -> I
}

protocol PresenterInterface:class {
    weak var viewer:ViewInterface?  {get set}
    weak var interactor:InteractorInterface? {get set}
    weak var router:RouterInterface? {get set}
    
    // V -> P
    // I -> P
    // R -> P
}

protocol RouterInterface:class {
    var presenter:PresenterInterface?{get set}
    // P -> R
}


protocol EntityInterface {
    
}



class XYViperProtocols: NSObject {

}

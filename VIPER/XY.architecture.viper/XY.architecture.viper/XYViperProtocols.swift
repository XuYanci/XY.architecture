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

/// Module Interface - This what do in Router binding (Router configure v & p)
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

// Just learning something: 

// in the main method (applicationDidFinish) :
// First config every module  R , P , I 
// Second in R , Config V , P

// in the main method (applicationDidFinish) :
// config every module VIPER releation in the R
/// Module Interface not just between I & P , Perhaps P & P

// Router owns subrouter

// Router present viewconroller of self (UI) , or push viewcontroller of self (UI)

// From objccn.io https://objccn.io/issue-13-5/
// 在 VIPER 中我们使用小型，轻量级的 model 类来在比如从展示器到视图这样不同的层间传递数据
// DataManager 用接口 其实也可以用逃逸闭包
// 实体永远不会由交互器传输给展示器，取而代之，那些无行为的简单数据结构会从交互器传输到展示器那里。这就防止了那些“真正的工作”在展示器那里进行，展示器只能负责准备那些在视图里显示的数据。
// 屏幕间的路径会在交互设计师创建的线框 (wireframes) 里进行定义。在 VIPER 中，路由是由两个部分来负责的：展示器和线框。一个线框对象包括 UIWindow，UINavigationController，UIViewController 等部分，它负责创建视图/视图控制器并将其装配到窗口中。
// 首先建立交互器是一种符合 TDD 的自然规律。如果你首先开发交互器，紧接着是展示器，你就可以首先建立一个位于这些层的套件测试，并且为实现这是实例奠定基础

// 遵守单一指责 尽量viewcontroller的module类型不应该作为参数传过去给presenter要么就将该类型作为共用的类型参数

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

//
//  RegisterRouter.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class RegisterRouter:RouterInterface {
    var presenter: PresenterInterface?
    var presentedViewController : UIViewController?
    
    func presentRegisterInterfaceFromViewController(viewController: UIViewController) -> Void {
        presentedViewController = viewController
        
        let registerViewController = self.registerViewControllerFromStoryboard()
        viewController.present( UINavigationController.init(rootViewController: registerViewController), animated: true) {
        }
    }
    
    func dismissRegisterViewController() {
        presentedViewController?.dismiss(animated: true, completion: { 
            
        })
    }
    
    func registerViewControllerFromStoryboard() -> RegisterViewController {
        let storyboard = mainStoryboard()
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "Register") as! RegisterViewController
        return mainViewController
    }
    
    func mainStoryboard()->UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard
    }
    

}

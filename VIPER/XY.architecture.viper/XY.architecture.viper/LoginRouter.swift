//
//  LoginRouter.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class LoginRouter:RouterInterface {
    var presenter: PresenterInterface?
    var presentedViewController : UIViewController?
    
    func presentLoginInterfaceFromViewController(viewController: UIViewController) -> Void {
        
        presentedViewController = viewController
        let loginViewController = self.loginViewControllerFromStoryboard()
        viewController.present(UINavigationController.init(rootViewController: loginViewController), animated: true) {
            
        }
    }
    
    func dismissLoginInterface() {
        presentedViewController?.dismiss(animated: true, completion: { 
            
        })
    }
    
    func loginViewControllerFromStoryboard() -> LoginViewController {
        let storyboard = mainStoryboard()
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "Login") as! LoginViewController
        return mainViewController
    }
    
 
 
    func mainStoryboard()->UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard
    }
    

}

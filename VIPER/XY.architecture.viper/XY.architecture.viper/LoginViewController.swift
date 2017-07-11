//
//  LoginViewController.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController ,LoginModuleDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var presenter: PresenterInterface?
    
    func didLoginFail(error: Error) {
        
    }
    
    func didLoginSuccess() {
        
    }
    
    @IBAction func clickOnLogIn() {
        if let p = presenter as? LoginModuleInterface {
            p.login(username: "abc", password: "12345")
        }
    }
    
    @IBAction func clickCancel() {
        if let p = presenter as? LoginModuleInterface {
            p.cancel()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  RegisterViewController.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController,RegisterModuleDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didRegisterFail(error: Error) {
        
    }
    
    func didRegisterSuccess() {
        
    }
    
    @IBAction func clickOnRegister() {
        if let p = presenter as? RegisterModuleInterface {
            p.register(username: "abc", password: "12345")
        }
    }
    
    @IBAction func clickOnCancel() {
        if let p = presenter as? RegisterModuleInterface {
            p.cancel()
        }
    }
    
    var presenter: PresenterInterface?

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

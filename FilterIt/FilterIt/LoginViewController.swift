//
//  LoginViewController.swift
//  FilterIt
//
//  Created by Christian Martinez on 12/21/16.
//  Copyright © 2016 Angel soriano. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func LoginButtonClicked(_ sender: Any) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        let usernameStored = UserDefaults.standard.string(forKey: "username");
        let passwordStored = UserDefaults.standard.string(forKey: "password");
        
        if(username == usernameStored){
            if(password == passwordStored){
                //Successful Login
                UserDefaults.standard.set(true, forKey: "isSuccessfulLogin");
                UserDefaults.standard.synchronize();
                
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

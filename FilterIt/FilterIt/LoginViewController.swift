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
    
    @IBAction func LoginClicked(_ sender: Any) {
    
    let username = usernameTextField.text
    let password = passwordTextField.text
    let usernameStored = UserDefaults.standard.string(forKey: "username");
    let passwordStored = UserDefaults.standard.string(forKey: "userPassword");
            
    if(username == usernameStored){
        if(password == passwordStored){
            //Successful Login
            UserDefaults.standard.set(true, forKey: "isSuccessfulLogin");
            UserDefaults.standard.synchronize();
            self.dismiss(animated: true, completion: nil);
        }else{
            displayMyAlertMessage(userMessage: "Incorrect Password");
        }
    }else{
         displayMyAlertMessage(userMessage: "Incorrect Username");
        }
    }
    
    func displayMyAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title:"Incorrect Credentials", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion:nil);
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

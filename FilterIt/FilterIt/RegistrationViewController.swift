//
//  RegistrationViewController.swift
//  FilterIt
//
//  Created by Christian Martinez on 12/21/16.
//  Copyright © 2016 Angel soriano. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func CancelButtonClicked(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
    }

    @IBAction func RegisterButtonClicked(_ sender: Any) {
        let username = usernameTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        //check for empty fields
        if ((username?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeatPassword?.isEmpty)!){
            //Display alert message (user should not continue)
            displayMyAlertMessage(userMessage: "All fields are required.");
            return;
        }
        
        //check if passwords match
        if(userPassword != userRepeatPassword){
            //Display alert message (user should not continue)
            displayMyAlertMessage(userMessage: "Passwords do not match.");
            return;
        }
        
        // store data
        UserDefaults.standard.set(username,forKey:"username");
        UserDefaults.standard.set(userPassword,forKey:"userPassword");
        UserDefaults.standard.synchronize();
        
        //Display confirmation
        let myAlert = UIAlertController(title:"Success!", message:"Registration Complete", preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){
            action in self.dismiss(animated: true, completion: nil)
        }
        myAlert.addAction(okAction);
        self.present(myAlert, animated: true, completion:nil);
    }

    
    func displayMyAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion:nil);
    }
}

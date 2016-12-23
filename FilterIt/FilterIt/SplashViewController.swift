//
//  SplashViewController.swift
//  FilterIt
//
//  Created by Pearce on 12/22/16.
//  Copyright © 2016 Angel soriano. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isSuccessfulLogin")
        
        if(!isUserLoggedIn){
        self.performSegue(withIdentifier: "loginView", sender: self)
        }
        else{
            self.performSegue(withIdentifier: "StraightToHome", sender: self)
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

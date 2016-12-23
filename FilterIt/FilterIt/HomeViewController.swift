//
//  HomeViewController.swift
//  FilterIt
//
//  Created by Christian Martinez on 12/21/16.
//  Authors: Christin Martinez, Angel Soriano
//  Copyright © 2016 Angel soriano. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController,
    UIImagePickerControllerDelegate,
    UINavigationControllerDelegate{
    
    
    var pickedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //override func viewDidAppear(_ animated: Bool) {
      //  self.performSegue(withIdentifier: "loginView", sender: self)
    //}
    
    @IBAction func CameraRoll(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func LogoutButtonClicked(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isSuccessfulLogin");
        UserDefaults.standard.synchronize();
        self.performSegue(withIdentifier: "logout", sender: self)
    }
    @IBAction func CameraAction(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated:true, completion: nil)
            
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "sendImage") {
            let detailVC = segue.destination as! CollectionViewController;
            detailVC.pic = pickedImage
            
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        pickedImage = image
        self.dismiss(animated: true, completion: nil)
        self.performSegue(withIdentifier: "sendImage", sender: self)
    }
}

//
//  FilteredController.swift
//  FilterIt
//
//  Created by Pearce on 12/20/16.
//  Copyright © 2016 Angel soriano. All rights reserved.
//

import UIKit

class FilteredController: UIViewController {

    @IBOutlet weak var filteredImage: UIImageView!
    var pic = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.filteredImage.image = self.pic
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goingBack(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }

    @IBAction func saveFilteredImg(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(self.pic, nil, nil, nil)
        
        let theAlert = UIAlertController(title: "Image Saved", message: "This filtered image has been saved to your photo album.", preferredStyle: UIAlertControllerStyle.alert);
        theAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action:UIAlertAction) in
            // program the stuff to go to the from page... maybe use self.navigationController?.popToRootViewController(animated: true)
        }));
        show(theAlert, sender: self);
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

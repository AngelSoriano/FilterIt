//
//  FilterCell.swift
//  FilterIt
//
//  Created by Pearce on 12/20/16.
//  Copyright © 2016 Angel soriano. All rights reserved.
//

import UIKit

class FilterCell: UICollectionViewCell, FilterSample {
    
    @IBOutlet weak var imageCell: UIImageView!
    var filter = CIFilter()
    
    func setFilter() {
        let aRand = CGFloat(arc4random_uniform(191) + 5)
        let radRand = (aRand / 100.0) * CGFloat.pi
        let tempImg = CIImage(image: self.imageCell.image!)
        let tempFilter = CIFilter(name: "CIHueAdjust")
        tempFilter?.setDefaults()
        tempFilter?.setValue(tempImg, forKey: "inputImage")
        tempFilter?.setValue(CGFloat(radRand), forKey: "inputAngle")
        self.filter = tempFilter!
        let filteredImg = tempFilter?.value(forKey: "outputImage") as! CIImage
        let filteredUIImage = UIImage(cgImage: CIContext(options: nil).createCGImage(filteredImg, from: filteredImg.extent)!)
        
        self.imageCell.image = filteredUIImage
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
}

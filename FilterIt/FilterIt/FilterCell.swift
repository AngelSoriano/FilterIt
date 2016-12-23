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
}

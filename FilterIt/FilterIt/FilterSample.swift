//
//  filteredPic.swift
//  FilterIt
//
//  Created by Pearce on 12/20/16.
//  Copyright © 2016 Angel soriano. All rights reserved.
//

import UIKit

protocol FilterSample {
    var filter:CIFilter {get}
    init(filter:CIFilter)
}

//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

// Model of snapshot controller 

struct TestModel {
    
    let testName: String
    let className: String
    
    var testingImage: UIImage?
    
    var referenceImage: UIImage?
    var differenceImage: UIImage?
    
    var isTestSucceeded: Bool
    
}

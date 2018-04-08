//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

// Model of snapshot controller 

struct TestModel {
    
    let testName: String
    let className: String
    let isTestSucceeded: Bool
    
    let referenceImage: UIImage?
    let failedImage: UIImage
    let differenceImage: UIImage?
    
    let testEngine: String? //old ios or new ios
}

//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

// Snapshot controller

struct TestController {
    
    var testModel: TestModel
    let infrastructure: Infrastructure
    let referenceImagesDirectoryPath: String?
    let differenceImagesDirectoryPath: String?
    let recordMode: String?

    
    mutating func verify(_ window: UIWindow) throws {
        

    }
    
    init() {
        
        testModel = TestModel()
        
        referenceImagesDirectoryPath = ProcessInfo.processInfo.environment["REF_IMAGES_DIR"]
        
        differenceImagesDirectoryPath = ProcessInfo.processInfo.environment["DIFF_IMAGES_DIR"]
        
        recordMode = ProcessInfo.processInfo.environment["RECORD_MODE"]
        
        infrastructure = Infrastructure()
    }
    
    // referenceImageForSelector()

    // renderSnapshot()
    
    // compareWithReferenceImage()

    // saveFailedReferenceImage()
        
    // getReferenceImageDirectoryWithDefault
}

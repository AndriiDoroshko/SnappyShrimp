//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

// Snapshot controller

struct TestController {
    
    var testModel: TestModel
    let infrastructure: Infrastructure //TODO: change type
    let refferenceImagesDirectoryPath: String?
    let differenceImagesDirectoryPath: String?
    let recordMode: String?

    
    mutating func verify(_ window: UIWindow,
                identifier: String,
                suffixes: [String],
                file: StaticString = #file,
                line: UInt = #line) {
        
        if #available(iOS 10.0, *) {
            testModel.testingImage = window.render()
        } else {
            testModel.testingImage = window.oldRender()
        }
        
        if recordMode == "TRUE" {
            //record(snapshot)
        } else {
            compare()
        }
    }
    
    init() {
        
        testModel = TestModel(testName: "", className: "", testingImage: nil, referenceImage: nil, differenceImage: nil, isTestSucceeded: false)
        
        refferenceImagesDirectoryPath = ProcessInfo.processInfo.environment["REF_IMAGES_DIR"]
        
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

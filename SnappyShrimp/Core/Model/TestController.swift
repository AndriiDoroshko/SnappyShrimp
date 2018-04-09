//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

// Snapshot controller

struct TestController {
    
    let testModel: TestModel?
    let infrastructure: Infrastructure //TODO: change type
    let refImagesDirectoryPath: String?
    let diffImagesDirectoryPath: String?

    
    func verify(_ window: UIWindow,
                identifier: String,
                suffixes: [String],
                file: StaticString = #file,
                line: UInt = #line) {
        
        if #available(iOS 10.0, *) {
            let snapshot = window.render()
        } else {
            let snapshot = window.oldRender()
        }
        
        //if recordMode {
            //record(snapshot)
        //} else {
            //performPixelComparison(with: snapshot)
        //}
    }
    
    init() {
        
        testModel = TestModel(testName: "", className: "", testingImage: nil, referenceImage: nil, differenceImage: nil, isTestSucceeded: false)
        
        refImagesDirectoryPath = ProcessInfo.processInfo.environment["REF_IMAGES_DIR"]
        
        diffImagesDirectoryPath = ProcessInfo.processInfo.environment["DIF_IMAGES_DIR"]
        
        infrastructure = Infrastructure()
    }
    
    // referenceImageForSelector()

    // renderSnapshot()
    
    // compareWithReferenceImage()

    // saveFailedReferenceImage()
        
    // getReferenceImageDirectoryWithDefault
}

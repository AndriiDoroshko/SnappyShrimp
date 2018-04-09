//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import UIKit
import XCTest
///The base class of view snapshotting tests on all possible screens. By default, you have to create schemes for testing and for record. Both of them must contain enviroment arguments with paths to save images and with a value that indicates the record mode state ("RECORD_MODE" by default).
open class SnapshotTestCase: XCTestCase {
    
    open var isGamutSupportEnabled = false
    
    var testModel: TestModel
    var infrastructure: Infrastructure
    var referenceImagesDirectoryPath: String?
    var differenceImagesDirectoryPath: String?
    
    let recordMode = ProcessInfo.processInfo.environment["RECORD_MODE"]
    
    override init() {
        
        testModel = TestModel()
        
        infrastructure = Infrastructure()
        
        super.init()
    }
    
    public final func verify(
        _ controller: UIViewController,
        for presentation: Presentation,
        file: StaticString = #file,
        line: UInt = #line) {
        //bundleName: String = Bundle.main.infoDictionary?["CFBundleName"] as? String,
        //className: String = String(describing: self),
        //testName: String = #function
        
        guard presentation.userInterfaceIdiom == UIDevice.current.userInterfaceIdiom else { return }
        guard presentation.scale == UIScreen.main.scale else { return }
        
        if isGamutSupportEnabled, #available(iOS 10.0, *) {
            guard presentation.gamut == UIScreen.main.traitCollection.displayGamut else { return }
        }
        
        let window = HostWindow(presentation: presentation)
        window.addSubview(controller.view)
        
        controller.view.frame = window.bounds
        if #available(iOS 11.0, *) {
            controller.additionalSafeAreaInsets = window.safeAreaInsets
        }
        
        window.isHidden = false
        
        if #available(iOS 10.0, *) {
            testModel.testingImage = window.render()
        } else {
            testModel.testingImage = window.oldRender()
        }
        
        do {
            recordMode == "TRUE" ? try record() : try compare()
        } catch SetupErrors.referenceImageNotFound {
            XCTFail("Couldn't load reference image. Check if you've specified 'REF_IMAGES_DIR' env variable in your scheme")
        } catch SetupErrors.testingImageNotFound {
            XCTFail("")
        } catch SetupErrors.invalidOS {
            XCTFail("")
        } catch TestingErrors.sizeNotEqual {
            XCTFail("")
            //save diffs
            //add attachment
        } catch TestingErrors.invalidImageSize { //zero size
            XCTFail("")
            //save diffs
            //add attachment
        } catch TestingErrors.imagesNotEqual {
            XCTFail("")
            //save diffs
            //add attachment
        } catch TestingErrors.recordMode {
            guard let image = testModel.referenceImage else { fatalError("Failure! Image wasn't recorded") }
            infrastructure.updateReferenceImage(with: image)
            XCTFail("")
        } catch {
            XCTFail("Unknown error")
        }
    }
    
    
    
    // referenceImageForSelector()
    
    // renderSnapshot()
    
    // compareWithReferenceImage()
    
    // saveFailedReferenceImage()
    
    // getReferenceImageDirectoryWithDefault
}



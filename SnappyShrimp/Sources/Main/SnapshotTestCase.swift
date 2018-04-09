//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import UIKit
import XCTest
///The base class of view snapshotting tests on all possible screens. By default, you have to create schemes for testing and for record. Both of them must contain enviroment arguments with paths to save images and with a value that indicates the record mode state ("RECORD_MODE" by default). For your own implementation of setting record mode true or false, override the setUp method and design your own way of running tests.
open class SnapshotTestCase: XCTestCase {
    
    open var isGamutSupportEnabled = false
    
    //private let testController = TestController()
    
    ///Verifies your snapshots with specified controller, whose view you're going to test and a device with its parameteres.
    
    public final func verify(
        _ controller: UIViewController,
        for presentation: Presentation,
        file: StaticString = #file,
        line: UInt = #line,
        className: String = String(describing: self)) {
        
        guard presentation.userInterfaceIdiom == UIDevice.current.userInterfaceIdiom else { return }
        guard presentation.scale == UIScreen.main.scale else { return }
        
        if isGamutSupportEnabled, #available(iOS 10.0, *) {
            guard presentation.gamut == UIScreen.main.traitCollection.displayGamut else { return }
        }
        //  Future
        //let tectController = TestController()
        //let window = HostWindow(presentation: presentation)
        //window.addSubview(controller.view)
        //controller.view.frame = window.bounds
        //controller.additionalSafeAreaInsets = window.safeAreaInsets
        //window.isHidden = false
        //testsController.verify(window, identifier: name, suffixes: [""], file: file, line: line)
//  OLD
//
//        if #available(iOS 11.0, *) {
//        }
//        let name = [presentation.name,
//                    UIDevice.current.systemName,
//                    UIDevice.current.systemVersion]
//            .map { $0.replacingOccurrences(of: " ", with: "_") }
//            .filter { !$0.isEmpty }
//            .joined(separator: "_")
//
//        window.isHidden = false
        //FBSnapshotVerifyView(window, identifier: name, suffixes: [""], file: file, line: line)
//  OLD
        
        
        
    }
}



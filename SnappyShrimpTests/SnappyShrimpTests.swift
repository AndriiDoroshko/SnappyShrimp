//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

@testable import SnappyShrimp

class SnappyShrimpTests: SnapshotTest {
    
    //Note: Current refs were written on lates devices (iPhone 8/8Plus, iPad 12 Pro)
    func testExample() {
        let vc = ViewController()
        
        //Has to be launched on any iPhone with @2 scale
        verify(vc, for: Device.iPhone8.portrait)
        
        //Has to be launched on any iPad with @3 scale
        verify(vc, for: Device.iPhone8Plus.landscape)
        
        //Has to be launched on any iPad with @2 scale
        verify(vc, for: Device.iPadPro9.portrait.oneThird)
        
        //Has to be launched on iPhone with @3 scale
        verify(vc, for: Device.iPhoneX.portrait)
        verify(vc, for: Device.iPhoneX.landscapeLeft)
        verify(vc, for: Device.iPhoneX.landscapeRight)
    }
}

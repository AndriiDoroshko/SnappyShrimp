//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

@testable import SnappyShrimp

class SnappyShrimpExample: SnapshotTestCase {
    
    // Note: Current refs were written on lates devices (iPhone 8/8Plus, iPad 12 Pro).
    // Due to differences in devices, that you can't override, don't change testing devices, unless you want to override refs.
    func testExample() {
        let vc = ViewController()
        
        //Has to be launched on iPhone with @2 scale and P3 screen
        verify(vc, for: Device.iPhone8.landscape)
        verify(vc, for: Device.iPhone8.portrait)
        verify(vc, for: Device.iPhoneSE.portrait)
        
        //Has to be launched on iPhone with @3 scale and P3 screen
        verify(vc, for: Device.iPhone8Plus.landscape)
        verify(vc, for: Device.iPhone8Plus.portrait)
        
        //Has to be launched on any iPad with @2 scale and sRGB screen
        verify(vc, for: Device.iPadPro12.portrait.fullScreen)
        verify(vc, for: Device.iPadPro12.portrait.oneThird)
        verify(vc, for: Device.iPadPro12.portrait.twoThirds)
        
        
        //Has to be launched on iPhone with @3 scale and P3 screen
        verify(vc, for: Device.iPhoneX.portrait)
        verify(vc, for: Device.iPhoneX.landscapeLeft)
        verify(vc, for: Device.iPhoneX.landscapeRight)
    }
}

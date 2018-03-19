//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

@testable import SnappyShrimp

class SnappyShrimpTests: SnapshotTest {
    
    override func setUp() {
        super.setUp()
        recordMode = true
    }
    
    func testExample() {
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        verify(vc, for: Device.iPhoneX.portrait)
    }
}

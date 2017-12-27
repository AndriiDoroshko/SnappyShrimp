//  Copyright © 2017 Andrey Doroshko. All rights reserved.


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

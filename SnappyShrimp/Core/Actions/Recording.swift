//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

// Some object that knows how to record new refs

extension SnapshotTestCase {
    
    func record() throws {
        guard let testingImage = testModel.testingImage else { throw SetupErrors.testingImageNotFound }
        testModel.referenceImage = testingImage
        throw TestingErrors.recordMode
    }
}

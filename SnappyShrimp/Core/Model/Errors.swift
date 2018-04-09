//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

enum TestingErrors: Error {
    case invalidImageSize
    case sizeNotEqual
    case imagesNotEqual
    case recordMode
}

enum SetupErrors: Error {
    case referenceImageNotFound
    case testingImageNotFound
    case invalidOS
}

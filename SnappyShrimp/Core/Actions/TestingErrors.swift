//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

enum TestingErrors: Error {
    case referenceImageNotFound
    case invalidImageSize
    case sizeNotEqual
    case imagesNotEqual
    case invalidOS
}

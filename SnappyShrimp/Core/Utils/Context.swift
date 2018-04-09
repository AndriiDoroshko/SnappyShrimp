//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import UIKit

extension CGImage {
    /// Try to create a context from a given image
    func context() -> CGContext? {
        let imageSize = CGSize(width: width, height: height)
        return CGContext(
            data: nil,
            width: Int(imageSize.width),
            height: Int(imageSize.height),
            bitsPerComponent: bitsPerComponent,
            bytesPerRow: bytesPerRow,
            space: colorSpace!,
            bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue
        )
    }
}


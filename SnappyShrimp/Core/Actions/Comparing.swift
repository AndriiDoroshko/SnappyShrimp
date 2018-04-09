//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import UIKit
import CoreGraphics

extension TestController {
    
    func compare() throws {
        guard let refImage = testModel?.referenceImage else { throw SetupErrors.referenceImageNotFound }
        guard let testingImage = testModel?.testingImage else { throw SetupErrors.testingImageNotFound }
        
        guard let refCGImage = refImage.cgImage else { fatalError("Couldn't get cgImage from reference image")  }
        guard let testingCGImage = testingImage.cgImage else { fatalError("Couldn't get cgImage from tesitng image") }
        
        let refImageSize = CGSize(width: refCGImage.width, height: refCGImage.height)
        let testingImageSize = CGSize(width: testingCGImage.width, height: testingCGImage.height)
        
        guard refImageSize != .zero && testingImageSize != .zero else { throw TestingErrors.invalidImageSize }
        
        guard let refImageContext = refCGImage.context() else { fatalError("Failed to create ref image context") }
        guard let testingImageContext = testingCGImage.context() else { fatalError("Failed to create testing image context") }
        
        refImageContext.draw(refCGImage, in: CGRect(origin: CGPoint.zero, size: refImageSize))
        
        testingImageContext.draw(refCGImage, in: CGRect(origin: CGPoint.zero, size: refImageSize))
        
        let isEqualWidth = refImageContext.width == testingImageContext.width
        let isEqualHeight = refImageContext.height == testingImageContext.height
        let isEqualBitsPerComponent = refImageContext.bitsPerComponent == testingImageContext.bitsPerComponent
        let isEqualBytesPerRow = refImageContext.bytesPerRow == testingImageContext.bytesPerRow
        let isEqualColorSpace = refImageContext.colorSpace == testingImageContext.colorSpace
        
        let equalParameters = isEqualWidth && isEqualHeight &&
            isEqualBitsPerComponent && isEqualBytesPerRow && isEqualColorSpace
        
        
        let minBytesPerRow = min(refCGImage.bytesPerRow, testingCGImage.bytesPerRow)
        let refImageSizeInBytes = Int(refImageSize.height) * minBytesPerRow
        
        let equalSizeInMemory = memcmp(refImageContext.data, testingImageContext.data, refImageSizeInBytes) == 0
        
        guard let refImageData = UIImagePNGRepresentation(refImage) else { fatalError("Failed to get ref image PNG representation") }
        guard let testingImageData = UIImagePNGRepresentation(testingImage) else { fatalError("Failed to get testing image PNG representation") }
        
        let equalData = refImageData == testingImageData
        
        guard equalParameters && equalSizeInMemory && equalData else { throw TestingErrors.imagesNotEqual }
    }
}

//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

@available(iOS 11.0, *)
extension Device {
    public enum iPhoneXR {
        public static let portrait = Presentation(
            name: "iPhone XR Portrait",
            size: CGSize.iPhoneXR,
            traitCollection: UITraitCollection.iPhoneXR.portrait,
            mask: iPhoneXMask.portrait,
            safeAreas: SafeAreas.iPhoneX.portrait)
        public static let landscapeLeft = Presentation(
            name: "iPhone XR Landscape Left",
            size: CGSize.iPhoneXR.rotated,
            traitCollection: UITraitCollection.iPhoneXR.landscape,
            mask: iPhoneXMask.landscapeLeft,
            safeAreas: SafeAreas.iPhoneX.landscape)
        public static let landscapeRight = Presentation(
            name: "iPhone XR Landscape Right",
            size: CGSize.iPhoneXR.rotated,
            traitCollection: UITraitCollection.iPhoneXR.landscape,
            mask: iPhoneXMask.landscapeRight,
            safeAreas: SafeAreas.iPhoneX.landscape)
    }
}

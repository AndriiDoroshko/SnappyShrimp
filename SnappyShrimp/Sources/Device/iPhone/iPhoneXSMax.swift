//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

@available(iOS 11.0, *)
extension Device {
    public enum iPhoneXSMax {
        public static let portrait = Presentation(
            name: "iPhone XS Max Portrait",
            size: CGSize.iPhoneXSMax,
            traitCollection: UITraitCollection.iPhoneXSMax.portrait,
            mask: iPhoneXMask.portrait,
            safeAreas: SafeAreas.iPhoneX.portrait)
        public static let landscapeLeft = Presentation(
            name: "iPhone XS Max Landscape Left",
            size: CGSize.iPhoneXSMax.rotated,
            traitCollection: UITraitCollection.iPhoneXSMax.landscape,
            mask: iPhoneXMask.landscapeLeft,
            safeAreas: SafeAreas.iPhoneX.landscape)
        public static let landscapeRight = Presentation(
            name: "iPhone XS Max Landscape Right",
            size: CGSize.iPhoneXSMax.rotated,
            traitCollection: UITraitCollection.iPhoneXSMax.landscape,
            mask: iPhoneXMask.landscapeRight,
            safeAreas: SafeAreas.iPhoneX.landscape)
    }
}

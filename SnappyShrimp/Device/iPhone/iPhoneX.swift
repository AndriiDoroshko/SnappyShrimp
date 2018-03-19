//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

@available(iOS 11.0, *)
extension Device {
    public enum iPhoneX {
        public static let portrait = Presentation(
            name: "iPhone X Portrait",
            size: CGSize.iPhoneX,
            traitCollection: UITraitCollection.iPhoneX.portrait,
            mask: iPhoneXMask.portrait,
            safeAreas: SafeAreas.iPhoneX.portrait)
        public static let landscapeLeft = Presentation(
            name: "iPhone X Landscape Left",
            size: CGSize.iPhoneX.rotated,
            traitCollection: UITraitCollection.iPhoneX.landscape,
            mask: iPhoneXMask.landscapeLeft,
            safeAreas: SafeAreas.iPhoneX.landscape)
        public static let landscapeRight = Presentation(
            name: "iPhone X Landscape Right",
            size: CGSize.iPhoneX.rotated,
            traitCollection: UITraitCollection.iPhoneX.landscape,
            mask: iPhoneXMask.landscapeRight,
            safeAreas: SafeAreas.iPhoneX.landscape)
    }
}

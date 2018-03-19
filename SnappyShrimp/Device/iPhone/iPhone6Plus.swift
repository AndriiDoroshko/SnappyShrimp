//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPhone6Plus {
        public static let portrait = Presentation(
            name: "iPhone6Plus Portrait",
            size: CGSize.iPhonePlus,
            traitCollection: UITraitCollection.iPhonePlus.portrait)
        public static let landscape = Presentation(
            name: "iPhone 6Plus Landscape Left",
            size: CGSize.iPhonePlus.rotated,
            traitCollection: UITraitCollection.iPhonePlus.landscape)
    }
}

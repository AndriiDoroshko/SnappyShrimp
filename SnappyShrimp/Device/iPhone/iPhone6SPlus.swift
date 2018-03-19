//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    @available(iOS 9.0, *)
    public enum iPhone6SPlus {
        public static let portrait = Presentation(
            name: "iPhone 6SPlus Portrait",
            size: CGSize.iPhonePlus,
            traitCollection: UITraitCollection.iPhonePlus.portrait)
        public static let landscape = Presentation(
            name: "iPhone 6SPlus Landscape Left",
            size: CGSize.iPhonePlus.rotated,
            traitCollection: UITraitCollection(traitsFrom: [
                UITraitCollection.iPhonePlus.landscape,
                UITraitCollection.Compability.ForceTouch.available])
        )
    }
}

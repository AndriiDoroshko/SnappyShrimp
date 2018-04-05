//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPhone6 {
        public static let portrait = Presentation(
            name: "iPhone 6 Portrait",
            size: CGSize.iPhone,
            traitCollection: UITraitCollection.iPhone.portrait)
        public static let landscape = Presentation(
            name: "iPhone 6 Landscape Left",
            size: CGSize.iPhone.rotated,
            traitCollection: UITraitCollection.iPhone.landscape)
    }
}

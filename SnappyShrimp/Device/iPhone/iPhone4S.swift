//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPhone4S {
        public static let portrait = Presentation(
            name: "iPhone 4S Portrait",
            size: CGSize.iPhone4S,
            traitCollection: UITraitCollection.iPhone.portrait)
        public static let landscape = Presentation(
            name: "iPhone 4S Landscape",
            size: CGSize.iPhone4S.rotated,
            traitCollection: UITraitCollection.iPhone.landscape)
    }
}


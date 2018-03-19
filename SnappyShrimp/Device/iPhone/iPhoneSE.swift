//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPhoneSE {
        public static let portrait = Presentation(
            name: "iPhone SE Portrait",
            size: CGSize.iPhoneSE,
            traitCollection: UITraitCollection.iPhone.portrait)
        public static let landscape = Presentation(
            name: "iPhone SE Landscape",
            size: CGSize.iPhoneSE.rotated,
            traitCollection: UITraitCollection.iPhone.landscape)
    }
}

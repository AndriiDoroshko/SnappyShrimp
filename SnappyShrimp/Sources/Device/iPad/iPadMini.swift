//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPadMini {
        public static let portrait = Presentation(
            name: "iPad mini FullScreen",
            size: CGSize.iPadMini,
            traitCollection: UITraitCollection.iPadOld.portrait)
        public static let landscape = Presentation(
            name: "iPad mini Landscape FullScreen",
            size: CGSize.iPadMini.rotated,
            traitCollection: UITraitCollection.iPadOld.landscape)
    }
}

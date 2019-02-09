//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPadAir {
        public static let portrait = Presentation(
            name: "iPad Air FullScreen",
            size: CGSize.iPadPro9_7,
            traitCollection: UITraitCollection.iPadOld.portrait)
        public static let landscape = Presentation(
            name: "iPad Air Landscape FullScreen",
            size: CGSize.iPadPro9_7.rotated,
            traitCollection: UITraitCollection.iPadOld.landscape)
    }   
}

//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPadAir2{
        public static let portrait = Presentation(
            name: "iPad Air2 FullScreen",
            size: CGSize.iPadPro9_7,
            traitCollection: UITraitCollection.iPadOld.portrait)
        public static let landscape = Presentation(
            name: "iPad Air2 Landscape FullScreen",
            size: CGSize.iPadPro9_7.rotated,
            traitCollection: UITraitCollection.iPadOld.landscape)
    }
}

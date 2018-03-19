//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    @available(iOS 11.0, *)
    public enum iPhone8 {
        public static let portrait = Presentation(
            name: "iPhone 8 Portrait",
            size: CGSize.iPhone,
            traitCollection: UITraitCollection.iPhone.portrait)
        public static let landscape = Presentation(
            name: "iPhone 8 Landscape",
            size: CGSize.iPhone.rotated,
            traitCollection: UITraitCollection(traitsFrom: [
                UITraitCollection.iPhone.landscape,
                UITraitCollection.Compability.ForceTouch.available,
                UITraitCollection.Compability.DisplayGamut.P3])
        )
    }
}

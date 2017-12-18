//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

extension Device {
    @available(iOS 11.0, *)
    public enum iPhone8Plus {
        public static let portrait = Presentation(
            name: "iPhone 8 Plus Portrait",
            size: CGSize.iPhonePlus,
            traitCollection: UITraitCollection.iPhonePlus.portrait)
        public static let landscape = Presentation(
            name: "iPhone 8 Plus Landscape",
            size: CGSize.iPhonePlus.rotated,
            traitCollection: UITraitCollection(traitsFrom: [
                UITraitCollection.iPhonePlus.landscape,
                UITraitCollection.Compability.ForceTouch.available,
                UITraitCollection.Compability.DisplayGamut.P3])
        )
    }
}

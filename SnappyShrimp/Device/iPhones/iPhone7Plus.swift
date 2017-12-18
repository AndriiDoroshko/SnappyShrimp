//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

extension Device {
    @available(iOS 10.0, *)
    public enum iPhone7Plus {
        public static let portrait = Presentation(
            name: "iPhone 7Plus Portrait",
            size: CGSize.iPhonePlus,
            traitCollection: UITraitCollection.iPhonePlus.portrait)
        public static let landscape = Presentation(
            name: "iPhone 7Plus Landscape Left",
            size: CGSize.iPhonePlus.rotated,
            traitCollection: UITraitCollection(traitsFrom: [
                UITraitCollection.iPhonePlus.landscape,
                UITraitCollection.Compability.ForceTouch.available,
                UITraitCollection.Compability.DisplayGamut.P3])
        )
    }
}

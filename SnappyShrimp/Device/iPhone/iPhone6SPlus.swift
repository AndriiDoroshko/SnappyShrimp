//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

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

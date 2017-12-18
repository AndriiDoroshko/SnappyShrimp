//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

extension Device {
    public enum iPhone6Plus {
        public static let portrait = Presentation(
            name: "iPhone6Plus Portrait",
            size: CGSize.iPhonePlus,
            traitCollection: UITraitCollection.iPhonePlus.portrait)
        public static let landscape = Presentation(
            name: "iPhone 6Plus Landscape Left",
            size: CGSize.iPhonePlus.rotated,
            traitCollection: UITraitCollection.iPhonePlus.landscape)
    }
}

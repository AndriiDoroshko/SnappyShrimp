//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

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

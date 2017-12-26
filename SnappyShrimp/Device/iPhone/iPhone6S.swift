//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

extension Device {
    @available(iOS 9.0, *)
    public enum iPhone6S {
        public static let portrait = Presentation(
            name: "iPhone 6S Portrait",
            size: CGSize.iPhone,
            traitCollection: UITraitCollection.iPhone.portrait)
        public static let landscape = Presentation(
            name: "iPhone 6S Landscape Left",
            size: CGSize.iPhone.rotated,
            traitCollection: UITraitCollection(traitsFrom: [
                UITraitCollection.iPhone.landscape,
                UITraitCollection.Compability.ForceTouch.available])
        )
    }
}

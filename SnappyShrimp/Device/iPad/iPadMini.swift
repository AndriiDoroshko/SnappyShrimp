//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

extension Device {
    public enum iPadMini {
        public static let portrait = Presentation(
            name: "iPad mini FullScreen",
            size: CGSize.iPadPro9,
            traitCollection: UITraitCollection.iPadOld.fullScreen)
        public static let landscape = Presentation(
            name: "iPad mini Landscape FullScreen",
            size: CGSize.iPadPro9.rotated,
            traitCollection: UITraitCollection.iPadOld.fullScreen)
    }
}

//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

@available(iOS 11.0, *)
extension Device {
    public enum iPhoneX {
        public static let portrait = Presentation(
            name: "iPhone X Portrait",
            size: CGSize.iPhoneX,
            traitCollection: UITraitCollection.iPhoneX.portrait,
            mask: iPhoneXMask.portrait)
        public static let landscapeRight = Presentation(
            name: "iPhone X Landscape Left",
            size: CGSize.iPhoneX.rotated,
            traitCollection: UITraitCollection.iPhoneX.landscape,
            mask: iPhoneXMask.landscapeLeft)
        public static let landscapeLeft = Presentation(
            name: "iPhone X Landscape Right",
            size: CGSize.iPhoneX.rotated,
            traitCollection: UITraitCollection.iPhoneX.landscape,
            mask: iPhoneXMask.landscapeRight)
    }
}

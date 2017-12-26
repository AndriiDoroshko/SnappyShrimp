//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

extension Device {
    public enum iPadMini2 {
        public enum portrait {
            public static let fullScreen = Presentation(
                name: "iPad mini2 FullScreen",
                size: CGSize.iPadPro9,
                traitCollection: UITraitCollection.iPad.portrait.fullScreen)
            public static let twoThirds = Presentation(
                name: "iPad mini2 Portrait SplitView Two-Thirds",
                size: CGSize.iPadPro9.splitViewTwoThirds,
                traitCollection: UITraitCollection.iPad.portrait.fullScreen)
            public static let oneThird = Presentation(
                name: "iPad mini2 Portrait SplitView One Third",
                size: CGSize.iPadPro9.splitViewOneThird,
                traitCollection: UITraitCollection.iPad.portrait.splitOneThird)
        }
        public enum landscape {
            public static let fullScreen = Presentation(
                name: "iPad mini2 Landscape FullScreen",
                size: CGSize.iPadPro9.rotated,
                traitCollection: UITraitCollection.iPad.landscape.fullScreen)
            public static let half = Presentation(
                name: "iPad mini2 Landscape SplitView Half",
                size: CGSize.iPadPro9.rotated.splitViewHalf,
                traitCollection: UITraitCollection.iPad.landscape.splitHalf)
            public static let twoThird = Presentation(
                name: "iPad mini2 Landscape SplitView Two-Thirds",
                size: CGSize.iPadPro9.rotated.splitViewTwoThirds,
                traitCollection: UITraitCollection.iPad.landscape.fullScreen)
            public static let oneThird = Presentation(
                name: "iPad mini2 Landscape SplitView One Third",
                size: CGSize.iPadPro9.rotated.splitViewOneThird,
                traitCollection: UITraitCollection.iPad.landscape.splitHalf)
        }
    }
}

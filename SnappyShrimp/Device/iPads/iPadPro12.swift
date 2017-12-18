//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

extension Device {
    public enum iPadPro12 {
        public enum portrait {
            public static let fullScreen = Presentation(
                name: "iPad Pro12 Portrait FullScreen",
                size: CGSize.iPadPro12,
                traitCollection: UITraitCollection.iPad.portrait.fullScreen)
            public static let twoThirds = Presentation(
                name: "iPad Pro12 Portrait Two Third",
                size: CGSize.iPadPro12.splitViewTwoThirds,
                traitCollection: UITraitCollection.iPad.portrait.fullScreen)
            public static let oneThird = Presentation(
                name: "iPad Pro12 Portrait SplitView One Third",
                size: CGSize.iPadPro12.splitViewOneThird,
                traitCollection: UITraitCollection.iPad.portrait.splitOneThird)
        }
        public enum landscape {
            public static let fullScreen = Presentation(
                name: "iPad Pro12 Landscape FullScreen",
                size: CGSize.iPadPro12.rotated,
                traitCollection: UITraitCollection.iPad.landscape.fullScreen)
            public static let half = Presentation(
                name: "iPad Pro12 Landscape SplitView Half",
                size: CGSize.iPadPro12.rotated.splitViewHalf,
                traitCollection: UITraitCollection(
                    traitsFrom: [UITraitCollection.Display.InterfaceIdiom.pad,
                                 UITraitCollection.Display.SizeClass.Vertical.regular,
                                 UITraitCollection.Display.SizeClass.Horizontal.regular,
                                 UITraitCollection.Display.Scale.x2]))
            public static let twoThird = Presentation(
                name: "iPad Pro12 Landscape SplitView Two-Thirds",
                size: CGSize.iPadPro12.rotated.splitViewTwoThirds,
                traitCollection: UITraitCollection.iPad.landscape.splitTwoThirds)
            public static let oneThird = Presentation(
                name: "iPad Pro12 Landscape SplitView One Third",
                size: CGSize.iPadPro12.rotated.splitViewOneThird,
                traitCollection: UITraitCollection.iPad.landscape.splitOneThird)
        }
    }
}

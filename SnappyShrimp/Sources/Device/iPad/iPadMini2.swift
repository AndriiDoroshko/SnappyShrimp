//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPadMini2 {
        public enum portrait {
            public static let fullScreen = Presentation(
                name: "iPad mini2 FullScreen",
                size: CGSize.iPadMini,
                traitCollection: UITraitCollection.iPad.portrait.fullScreen)
            public static let twoThirds = Presentation(
                name: "iPad mini2 Portrait SplitView Two-Thirds",
                size: CGSize.iPadMini.splitViewTwoThirds,
                traitCollection: UITraitCollection.iPad.portrait.fullScreen)
            public static let oneThird = Presentation(
                name: "iPad mini2 Portrait SplitView One Third",
                size: CGSize.iPadMini.splitViewOneThird,
                traitCollection: UITraitCollection.iPad.portrait.splitOneThird)
        }
        public enum landscape {
            public static let fullScreen = Presentation(
                name: "iPad mini2 Landscape FullScreen",
                size: CGSize.iPadMini.rotated,
                traitCollection: UITraitCollection.iPad.landscape.fullScreen)
            public static let half = Presentation(
                name: "iPad mini2 Landscape SplitView Half",
                size: CGSize.iPadMini.rotated.splitViewHalf,
                traitCollection: UITraitCollection.iPad.landscape.splitHalf)
            public static let twoThird = Presentation(
                name: "iPad mini2 Landscape SplitView Two-Thirds",
                size: CGSize.iPadMini.rotated.splitViewTwoThirds,
                traitCollection: UITraitCollection.iPad.landscape.fullScreen)
            public static let oneThird = Presentation(
                name: "iPad mini2 Landscape SplitView One Third",
                size: CGSize.iPadMini.rotated.splitViewOneThird,
                traitCollection: UITraitCollection.iPad.landscape.splitHalf)
        }
    }
}

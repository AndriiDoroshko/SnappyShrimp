//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    public enum iPad5thGen {
        public enum portrait {
            public static let fullScreen = Presentation(
                name: "iPad 5thGen FullScreen",
                size: CGSize.iPadPro9,
                traitCollection: UITraitCollection.iPad.portrait.fullScreen)
            
            public static let TwoThirds = Presentation(
                name: "iPad 5thGen Portrait SplitView Two-Thirds",
                size: CGSize.iPadPro9.splitViewTwoThirds,
                traitCollection: UITraitCollection.iPad.portrait.fullScreen)
            
            public static let oneThird = Presentation(
                name: "iPad 5thGenPortrait SplitView One Third",
                size: CGSize.iPadPro9.splitViewOneThird,
                traitCollection: UITraitCollection.iPad.portrait.splitOneThird)
        }
        public enum landscape {
            public static let fullScreen = Presentation(
                name: "iPad 5thGen Landscape FullScreen",
                size: CGSize.iPadPro9.rotated,
                traitCollection: UITraitCollection.iPad.landscape.fullScreen)
            
            public static let half = Presentation(
                name: "iPad 5thGen Landscape SplitView Half",
                size: CGSize.iPadPro9.rotated.splitViewHalf,
                traitCollection: UITraitCollection.iPad.landscape.splitHalf)
            
            public static let twoThird = Presentation(
                name: "iPad 5thGen Landscape SplitView Two-Thirds",
                size: CGSize.iPadPro9.rotated.splitViewTwoThirds,
                traitCollection: UITraitCollection.iPad.landscape.fullScreen)
            
            public static let oneThird = Presentation(
                name: "iPad 5thGen Landscape SplitView One Third",
                size: CGSize.iPadPro9.rotated.splitViewOneThird,
                traitCollection: UITraitCollection.iPad.landscape.splitHalf)
        }
    }
}

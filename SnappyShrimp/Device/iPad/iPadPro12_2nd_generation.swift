//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device {
    @available(iOS 10.0, *)
    public enum iPadPro12_2nd_generation {
        public enum portrait {
            public static let fullScreen = Presentation(
                name: "iPad Pro12 Portrait FullScreen",
                size: CGSize.iPadPro12,
                traitCollection: UITraitCollection(
                    traitsFrom: [UITraitCollection.iPad.portrait.fullScreen,
                                 UITraitCollection.Compability.DisplayGamut.P3]))
            public static let twoThirds = Presentation(
                name: "iPad Pro12 Portrait Two Third",
                size: CGSize.iPadPro12.splitViewTwoThirds,
                traitCollection: UITraitCollection(
                    traitsFrom: [UITraitCollection.iPad.portrait.splitTwoThirds,
                                 UITraitCollection.Compability.DisplayGamut.P3]))
            public static let oneThird = Presentation(
                name: "iPad Pro12 Portrait SplitView One Third",
                size: CGSize.iPadPro12.splitViewOneThird,
                traitCollection: UITraitCollection(
                    traitsFrom: [UITraitCollection.iPad.portrait.splitOneThird,
                                 UITraitCollection.Compability.DisplayGamut.P3]))
        }
        public enum landscape {
            public static let fullScreen = Presentation(
                name: "iPad Pro12 Landscape FullScreen",
                size: CGSize.iPadPro12.rotated,
                traitCollection: UITraitCollection(
                    traitsFrom: [UITraitCollection.iPad.landscape.fullScreen,
                                 UITraitCollection.Compability.DisplayGamut.P3]))
            public static let half = Presentation(
                name: "iPad Pro12 Landscape SplitView Half",
                size: CGSize.iPadPro12.rotated.splitViewHalf,
                traitCollection: UITraitCollection(
                    traitsFrom: [UITraitCollection.Display.InterfaceIdiom.pad,
                                 UITraitCollection.Display.SizeClass.Vertical.regular,
                                 UITraitCollection.Display.SizeClass.Horizontal.regular,
                                 UITraitCollection.Display.Scale.x2,
                                 UITraitCollection.Compability.DisplayGamut.P3]))
            public static let twoThird = Presentation(
                name: "iPad Pro12 Landscape SplitView Two-Thirds",
                size: CGSize.iPadPro12.rotated.splitViewTwoThirds,
                traitCollection: UITraitCollection(
                    traitsFrom: [UITraitCollection.iPad.landscape.splitTwoThirds,
                                 UITraitCollection.Compability.DisplayGamut.P3]))
            public static let oneThird = Presentation(
                name: "iPad Pro12 Landscape SplitView One Third",
                size: CGSize.iPadPro12.rotated.splitViewOneThird,
                traitCollection: UITraitCollection(
                    traitsFrom: [UITraitCollection.iPad.landscape.splitOneThird,
                                 UITraitCollection.Compability.DisplayGamut.P3]))
        }
    }
}


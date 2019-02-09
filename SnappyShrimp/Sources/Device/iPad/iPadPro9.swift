//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

extension Device{
    @available(iOS 10.0, *)
    public enum iPadPro9_7 {
        public enum portrait {
            public static let fullScreen = Presentation(
                name: "iPad Pro9 FullScreen",
                size: CGSize.iPadPro9_7,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.portrait.fullScreen,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let twoThirds = Presentation(
                name: "iPad Pro9 Portrait SplitView Two-Thirds",
                size: CGSize.iPadPro9_7.splitViewTwoThirds,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.portrait.splitTwoThirds,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let oneThird = Presentation(
                name: "iPad Pro9 Portrait SplitView One Third",
                size: CGSize.iPadPro9_7.splitViewOneThird,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.portrait.splitOneThird,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
        }
        public enum landscape {
            public static let fullScreen = Presentation(
                name: "iPad Pro9 Landscape FullScreen",
                size: CGSize.iPadPro9_7.rotated,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.landscape.fullScreen,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let half = Presentation(
                name: "iPad Pro9 Landscape SplitView Half",
                size: CGSize.iPadPro9_7.rotated.splitViewHalf,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.landscape.splitHalf,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let twoThird = Presentation(
                name: "iPad Pro9 Landscape SplitView Two-Thirds",
                size: CGSize.iPadPro9_7.rotated.splitViewTwoThirds,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.landscape.splitTwoThirds,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let oneThird = Presentation(
                name: "iPad Pro9 Landscape SplitView One Third",
                size: CGSize.iPadPro9_7.rotated.splitViewOneThird,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.landscape.splitOneThird,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
        }
    }
}

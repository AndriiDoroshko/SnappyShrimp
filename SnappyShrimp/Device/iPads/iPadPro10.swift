//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

extension Device {
    @available(iOS 10.0, *)
    public enum iPadPro10 {
        public enum portrait {
            public static let fullScreen = Presentation(
                name: "iPad Pro10 FullScreen",
                size: CGSize.iPadPro10,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.portrait.fullScreen,
                    UITraitCollection.Compability.ForceTouch.available,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let twoThirds = Presentation(
                name: "iPad Pro10 Portrait SplitView Two-Thirds",
                size: CGSize.iPadPro10.splitViewTwoThirds,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.portrait.splitTwoThirds,
                    UITraitCollection.Compability.ForceTouch.available,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let oneThird = Presentation(
                name: "iPad Pro10 Portrait SplitView One Third",
                size: CGSize.iPadPro10.splitViewOneThird,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.portrait.splitOneThird,
                    UITraitCollection.Compability.ForceTouch.available,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
        }
        public enum landscape {
            public static let fullScreen = Presentation(
                name: "iPad Pro10 Landscape FullScreen",
                size: CGSize.iPadPro10.rotated,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.landscape.fullScreen,
                    UITraitCollection.Compability.ForceTouch.available,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let half = Presentation(
                name: "iPad Pro10 Landscape SplitView Half",
                size: CGSize.iPadPro10.rotated.splitViewHalf,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.landscape.splitHalf,
                    UITraitCollection.Compability.ForceTouch.available,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let twoThird = Presentation(
                name: "iPad Pro10 Landscape SplitView Two-Thirds",
                size: CGSize.iPadPro10.rotated.splitViewTwoThirds,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.landscape.splitTwoThirds,
                    UITraitCollection.Compability.ForceTouch.available,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
            public static let oneThird = Presentation(
                name: "iPad Pro10 Landscape SplitView One Third",
                size: CGSize.iPadPro10.rotated.splitViewOneThird,
                traitCollection: UITraitCollection(traitsFrom: [
                    UITraitCollection.iPad.landscape.splitOneThird,
                    UITraitCollection.Compability.ForceTouch.available,
                    UITraitCollection.Compability.DisplayGamut.P3])
            )
        }
    }
    
}

//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

public struct Presentation {
    let name: String
    let size: CGSize
    let traitCollection: UITraitCollection
    let safeAreas: SafeAreas.SafeAreaSize?
    let mask: UIView?
    
    public init(name: String, size: CGSize,
                traitCollection: UITraitCollection,
                mask: UIView? = nil,
                safeAreas: SafeAreas.SafeAreaSize? = nil) {
        self.name = name
        self.size = size
        self.traitCollection = traitCollection
        self.mask = mask
        self.safeAreas = safeAreas
    }
}

extension Presentation {
    var userInterfaceIdiom: UIUserInterfaceIdiom {
        return self.traitCollection.userInterfaceIdiom
    }
    var scale: CGFloat {
        return self.traitCollection.displayScale
    }
    @available(iOS 10.0, *)
    var gamut: UIDisplayGamut {
        return self.traitCollection.displayGamut
    }
}

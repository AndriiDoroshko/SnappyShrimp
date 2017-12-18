//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import Foundation

public struct Presentation {
    let name: String
    let size: CGSize
    let traitCollection: UITraitCollection
    let mask: UIView?
    
    public init(name: String, size: CGSize,
                traitCollection: UITraitCollection,
                mask: UIView? = nil) {
        self.name = name
        self.size = size
        self.traitCollection = traitCollection
        self.mask = mask
    }
}

extension Presentation {
    var userInterfaceIdiom: UIUserInterfaceIdiom {
        return self.traitCollection.userInterfaceIdiom
    }
    var scale: CGFloat {
        return self.traitCollection.displayScale
    }
}

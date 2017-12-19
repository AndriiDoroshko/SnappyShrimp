//  Copyright © 2017 One by AOL : Publishers. All rights reserved.

import UIKit

///Custom window contains a presentation variable, that is designed to represent all existing device screens in every possible view, including different orientations and split view.
public class HostWindow: UIWindow {
    
    public var presentation: Presentation
    private var traits: UITraitCollection
    
    override public var traitCollection: UITraitCollection {
        return traits
    }
    
    public init(presentation: Presentation, context: Context = .init()) {
        self.presentation = presentation
        self.traits = UITraitCollection(traitsFrom: [presentation.traitCollection, context.traitCollection])
        super.init(frame: presentation.size.asRect)
        self.mask = presentation.mask
        self.mask?.frame = self.bounds
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public struct Context {
    public var name: String
    public var traitCollection: UITraitCollection
    
    @available(iOS 10.0, *)
    public init(layoutDirection: UITraitEnvironmentLayoutDirection = .unspecified, contentSizeCategory: UIContentSizeCategory = .unspecified, name: String = "") {
        self.traitCollection = UITraitCollection(traitsFrom: [
            UITraitCollection(layoutDirection: layoutDirection),
            UITraitCollection(preferredContentSizeCategory: contentSizeCategory)])
        self.name = name
    }
    
    public init(name: String = "") {
        self.name = name
        self.traitCollection = UITraitCollection()
    }
}

//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import UIKit

///Custom window contains a presentation variable, that is designed to represent all existing device screens in every possible view, including different orientations and split view.
public class HostWindow: UIWindow {
    
    public var presentation: Presentation
    private var traits: UITraitCollection
    
    override public var traitCollection: UITraitCollection {
        return traits
    }
    
    @available(iOS 11.0, *)
    public override var safeAreaInsets: UIEdgeInsets {
        guard let safeArea = presentation.safeAreas else { return super.safeAreaInsets }
        return UIEdgeInsets(top: safeArea.top,
                            left: safeArea.leading,
                            bottom: safeArea.bottom,
                            right: safeArea.trailing)
    }
    
    public init(presentation: Presentation) {
        self.presentation = presentation
        self.traits = presentation.traitCollection
        super.init(frame: presentation.size.asRect)
        self.mask = presentation.mask
        self.mask?.frame = self.bounds
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct Context {
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

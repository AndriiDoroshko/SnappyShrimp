//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import UIKit

extension UIView {
    @available(iOS 10.0, *)
    func render() -> UIImage? {
        let imageRendererFormat = UIGraphicsImageRendererFormat.default()
        imageRendererFormat.opaque = true
        let imageRenderer = UIGraphicsImageRenderer(
            bounds: bounds
        )
        let image = imageRenderer.image { context in
            drawHierarchy(in: bounds, afterScreenUpdates: true)
            layer.render(in: context.cgContext)
        }
        UIGraphicsEndImageContext()
        
        return image
    }
    
    func oldRender() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, 0.0)
        
        let context = UIGraphicsGetCurrentContext()!
        drawHierarchy(in: bounds, afterScreenUpdates: true)
        layer.render(in: context)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}


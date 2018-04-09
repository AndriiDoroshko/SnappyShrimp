//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import Foundation

struct Infrastructure {
    let fileManager = FileManager.default
    
    let referenceImagesDirectoryPath = ProcessInfo.processInfo.environment["REF_IMAGES_DIR"]
    let differenceImagesDirectoryPath = ProcessInfo.processInfo.environment["DIFF_IMAGES_DIR"]
    
    func updateReferenceImage(with image: UIImage, named: String) {
        let referenceImage = UIImagePNGRepresentation(image)
        guard let directoryPath = referenceImagesDirectoryPath else { fatalError("Couldn't get path") }
        do {
            try fileManager.createDirectory(atPath: directoryPath, withIntermediateDirectories: true)
        } catch {
            fatalError("Couldn't create folder")
        }
        guard fileManager.createFile(atPath: directoryPath, contents: referenceImage) else {
            fatalError("Couldn't create file")
        }
    }
}

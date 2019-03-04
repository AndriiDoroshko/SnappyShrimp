//  Copyright 2018, Roman Tysiachnik, Andrii Doroshko.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.
//  This file contains all possible specifications for all iOS devices available for this moment, including size, trait collections and masks for iPhone X.

extension UITraitCollection {
    public enum Display {
        public enum Scale {
            public static let x3 = UITraitCollection(displayScale: 3.0)
            public static let x2 = UITraitCollection(displayScale: 2.0)
            public static let x1 = UITraitCollection(displayScale: 1.0)
        }
        public enum InterfaceIdiom {
            public static let phone = UITraitCollection(userInterfaceIdiom: .phone)
            public static let pad = UITraitCollection(userInterfaceIdiom: .pad)
            @available(iOS 9.0, *)
            public static let tv = UITraitCollection(userInterfaceIdiom: .tv)
            @available(iOS 9.0, *)
            public static let carPlay = UITraitCollection(userInterfaceIdiom: .carPlay)
        }
        public enum SizeClass {
            public enum Horizontal {
                public static let regular = UITraitCollection(horizontalSizeClass: .regular)
                public static let compact = UITraitCollection(horizontalSizeClass: .compact)
                public static let unspecified = UITraitCollection(horizontalSizeClass: .unspecified)
            }
            
            public enum Vertical {
                public static let regular = UITraitCollection(verticalSizeClass: .regular)
                public static let compact = UITraitCollection(verticalSizeClass: .compact)
                public static let unspecified = UITraitCollection(verticalSizeClass: .unspecified)
            }
        }
    }
    public enum Compability {
        @available(iOS 10.0, *)
        public enum DisplayGamut {
            public static let unspecified = UITraitCollection(displayGamut: .unspecified)
            public static let SRGB = UITraitCollection(displayGamut: .SRGB)
            public static let P3 = UITraitCollection(displayGamut: .P3)
        }
        
        @available(iOS 9.0, *)
        public enum ForceTouch {
            public static let unavailable = UITraitCollection(forceTouchCapability: .unavailable)
            public static let available = UITraitCollection(forceTouchCapability: .available)
            public static let unknown = UITraitCollection(forceTouchCapability: .unknown)
        }
    }
    enum iPhone {
        static let portrait = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.regular,
                         Display.SizeClass.Horizontal.compact,
                         Display.Scale.x2])
        static let landscape = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.compact,
                         Display.SizeClass.Horizontal.compact,
                         Display.Scale.x2])
    }
    enum iPhonePlus {
        static let portrait = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.regular,
                         Display.SizeClass.Horizontal.compact,
                         Display.Scale.x3])
        static let landscape = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.compact,
                         Display.SizeClass.Horizontal.regular,
                         Display.Scale.x3])
    }
    @available(iOS 11.0, *)
    enum iPhoneX {
        static let portrait = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.regular,
                         Display.SizeClass.Horizontal.compact,
                         Display.Scale.x3,
                         Compability.ForceTouch.available,
                         Compability.DisplayGamut.P3])
        static let landscape = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.compact, 
                         Display.SizeClass.Horizontal.compact,
                         Display.Scale.x3,
                         Compability.ForceTouch.available,
                         Compability.DisplayGamut.P3])
    }
    @available(iOS 11.0, *)
    enum iPhoneXSMax {
        static let portrait = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.regular,
                         Display.SizeClass.Horizontal.compact,
                         Display.Scale.x3,
                         Compability.ForceTouch.available,
                         Compability.DisplayGamut.P3])
        static let landscape = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.compact,
                         Display.SizeClass.Horizontal.regular,
                         Display.Scale.x3,
                         Compability.ForceTouch.available,
                         Compability.DisplayGamut.P3])
    }
    @available(iOS 11.0, *)
    enum iPhoneXR {
        static let portrait = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.regular,
                         Display.SizeClass.Horizontal.compact,
                         Display.Scale.x2,
                         Compability.ForceTouch.available,
                         Compability.DisplayGamut.P3])
        static let landscape = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.phone,
                         Display.SizeClass.Vertical.compact,
                         Display.SizeClass.Horizontal.regular,
                         Display.Scale.x2,
                         Compability.ForceTouch.available,
                         Compability.DisplayGamut.P3])
    }
    enum iPad {
        enum portrait {
            static let fullScreen = UITraitCollection(
                traitsFrom: [Display.InterfaceIdiom.pad,
                             Display.SizeClass.Vertical.regular,
                             Display.SizeClass.Horizontal.regular,
                             Display.Scale.x2])
            static let splitOneThird = UITraitCollection(
                traitsFrom: [Display.InterfaceIdiom.pad,
                             Display.SizeClass.Vertical.regular,
                             Display.SizeClass.Horizontal.compact,
                             Display.Scale.x2])
            static let splitTwoThirds = UITraitCollection(
                traitsFrom: [Display.InterfaceIdiom.pad,
                             Display.SizeClass.Vertical.regular,
                             Display.SizeClass.Horizontal.compact,
                             Display.Scale.x2])
        }
        enum landscape {
            static let fullScreen = UITraitCollection(
                traitsFrom: [Display.InterfaceIdiom.pad,
                             Display.SizeClass.Vertical.regular,
                             Display.SizeClass.Horizontal.regular,
                             Display.Scale.x2])
            static let splitOneThird = UITraitCollection(
                traitsFrom: [Display.InterfaceIdiom.pad,
                             Display.SizeClass.Vertical.regular,
                             Display.SizeClass.Horizontal.compact,
                             Display.Scale.x2])
            static let splitTwoThirds = UITraitCollection(
                traitsFrom: [Display.InterfaceIdiom.pad,
                             Display.SizeClass.Vertical.regular,
                             Display.SizeClass.Horizontal.compact,
                             Display.Scale.x2])
            static let splitHalf = UITraitCollection(
                traitsFrom: [Display.InterfaceIdiom.pad,
                             Display.SizeClass.Vertical.regular,
                             Display.SizeClass.Horizontal.compact,
                             Display.Scale.x2])
        }
    }
    enum iPadOld {
        static let portrait = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.pad,
                         Display.SizeClass.Vertical.regular,
                         Display.SizeClass.Horizontal.regular,
                         Display.Scale.x2])
        static let landscape = UITraitCollection(
            traitsFrom: [Display.InterfaceIdiom.pad,
                         Display.SizeClass.Vertical.regular,
                         Display.SizeClass.Horizontal.regular,
                         Display.Scale.x2])
    }
}

extension CGSize {
    static let iPhone4S = CGSize(width: 320, height: 480)
    static let iPhoneSE = CGSize(width: 320, height: 568)
    static let iPhoneX = CGSize(width: 375, height: 812)
    static let iPhoneXR = CGSize(width: 414, height: 896)
    static let iPhoneXSMax = CGSize(width: 414, height: 896)
    static let iPhone = CGSize(width: 375, height: 667)
    static let iPhonePlus = CGSize(width: 414, height: 736)
    
    static let iPadMini = CGSize(width: 768, height: 1024)
    static let iPadPro9_7 = CGSize(width: 768, height: 1024)
    static let iPadPro10_5 = CGSize(width: 834, height: 1112)
    static let iPadPro11 = CGSize(width: 1024, height: 1366)
    static let iPadPro12_9 = CGSize(width: 1024, height: 1366)
}
extension CGSize {
    var rotated: CGSize {
        return CGSize(width: height, height: width)
    }
    var splitViewHalf: CGSize {
        return CGSize(width: width/2, height: height)
    }
    var splitViewTwoThirds: CGSize {
        return CGSize(width: (width/3)*2, height: height)
    }
    var splitViewOneThird: CGSize {
        return CGSize(width: width/3, height: height)
    }
}

extension CGSize{
    var asRect: CGRect {
        return CGRect(x: 0, y: 0, width: width, height: height)
    }
}

enum iPhoneXMask {
    static let portrait = UIImageView(image: UIImage(named: "maskPortrait", in: Bundle(for: SnapshotTest.self), compatibleWith: nil))
    static let landscapeLeft = UIImageView(image: UIImage(named: "maskLandscapeLeft", in: Bundle(for: SnapshotTest.self), compatibleWith: nil))
    static let landscapeRight = UIImageView(image: UIImage(named: "maskLandscapeRight", in: Bundle(for: SnapshotTest.self), compatibleWith: nil))
}

public enum SafeAreas {
    public struct SafeAreaSize {
        let top: CGFloat
        let bottom: CGFloat
        let leading: CGFloat
        let trailing: CGFloat
    }
    enum iPhoneX {
        static let portrait = SafeAreaSize(top: 44, bottom: 34, leading: 0, trailing: 0)
        static let landscape = SafeAreaSize(top: 0, bottom: 24, leading: 44, trailing: 44)
    }
    enum iPhoneXSMax {
        static let portrait = SafeAreaSize(top: 44, bottom: 34, leading: 0, trailing: 0)
        static let landscape = SafeAreaSize(top: 0, bottom: 24, leading: 44, trailing: 44)
    }
}


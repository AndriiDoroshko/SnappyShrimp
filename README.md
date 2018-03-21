<h1 align="center">Snappy Shrimp - New Snapshot Testing Experience</h1>  

<p align="center">
    <a href="https://travis-ci.org/AndriiDoroshko/SnappyShrimp">
        <img src="https://travis-ci.org/AndriiDoroshko/SnappyShrimp.svg?branch=master" alt="Build Status" />
    </a>
    <a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" alt="Carthage Compatible" />
    </a>
    <img src="https://img.shields.io/badge/Swift-4.0-orange.svg" alt="Swift 4" />
    <a href="https://raw.githubusercontent.com/AndriiDoroshko/SnappyShrimp/master/LICENSE">
        <img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="MIT LICENSE" />
    </a>
    <a href="https://github.com/AndriiDoroshko/SnappyShrimp/releases">
        <img src="https://img.shields.io/github/release/AndriiDoroshko/SnappyShrimp.svg" alt="Releases" />
    </a>
</p>

**Snappy Shrimp** - is a library for snapshot testing. It is based on FBSnapshotTestCase library and actually, it does the same thing - it records a reference image of your view and verifies it every time you launch tests. But how much time does it takes to make tests on all possible devices and in all possible orientations? This library allows you to save your time by decreasing the number of necessary devices up to three - **iPhone**, **iPhone Plus** and **iPad** and you will see why.

[Snappy Shrimp - New Snapshot Testing Experience](#snappy-shrimp---new-snapshot-testing-experience)
1. [Features](#features)
	1. [iPhone, iPhone SE and iPhone Plus examples](#iphone-iphone-se-and-iphone-plus-examples)
	2. [iPad with multitasking support examples](#ipad-with-multitasking-support-examples)
	3. [iPhone X Example](#iphone-x-examples)
2. [Requirements](#requirements)
3. [Install](#install)
	1. [Using Carthage](#using-carthage)
	2. [Using Cocoapods](#using-carthage)
4. [Configuring](#configuring)
5. [How to write tests](#how-to-write-tests)
6. [Snapshot Testing example](#snapshot-testing-example)
7. [Automation example](#automation-example)
8. [Why you need three devices instead one](#why-you-need-three-devices-instead-one)
9. [Specific notes about snapshot testing](#specific-notes-about-snapshot-testing)

## Features

Things that we've improved to make snapshot testing experience much better:
- All devices are presented programmatically, including `actual sizes` and `trait collections`;
- We don't use `Host Application`, so it makes our tests run faster;
- Improved images naming, by adding to the image name: `device`, `orientation` and `os version`;
- Implemented `iPhone X` safe areas and masks to capture snapshots exactly as it looks like on a real device;
- You're able to see how your app looks like in all orientations and in all multitasking modes for iPads;
- We've also added `Context` type to specify custom `Layout Direction` and `Content Size Category`.

### iPhone, iPhone SE and iPhone Plus examples

<img height="480" alt="testexample_iphone_8_plus_portrait_ios_11 2 3x" src="https://user-images.githubusercontent.com/31652265/37855836-09be85e0-2efa-11e8-8fb5-66f6e6d486be.png"> <img height="420" alt="testexample_iphone_8_portrait_ios_11 2 2x" src="https://user-images.githubusercontent.com/31652265/37855837-09dea33e-2efa-11e8-834c-bcae085aaa6d.png"> <img height="340" alt="testexample_iphone_se_portrait_ios_11 2 2x" src="https://user-images.githubusercontent.com/31652265/37855838-09fdde48-2efa-11e8-85b6-ec5399cbc04a.png">

### iPad with multitasking support examples

<img height="530" alt="testexample_ipad_pro12_portrait_fullscreen_ios_11 2 2x" src="https://user-images.githubusercontent.com/31652265/37855639-f772c442-2ef8-11e8-9f0d-fcc9f0ff49a4.png"> <img height="530" alt="testexample_ipad_pro12_portrait_two_third_ios_11 2 2x" src="https://user-images.githubusercontent.com/31652265/37855641-f7b37802-2ef8-11e8-92cf-52614a905ab3.png"> <img height="530" alt="testexample_ipad_pro12_portrait_splitview_one_third_ios_11 2 2x" src="https://user-images.githubusercontent.com/31652265/37855640-f79363c8-2ef8-11e8-9c4c-d031495287a7.png">

### iPhone X examples

<img src="https://user-images.githubusercontent.com/31652265/37720874-df3e1602-2d30-11e8-9afc-3088ac147b1e.png" width="250" alt="Portrait"/> <img src="https://user-images.githubusercontent.com/31652265/37720866-dd2479b0-2d30-11e8-83b5-f082aceb4d98.png" width="600" alt="Landscape" />

## Requirements

- iOS 9.0+
- Xcode 9.0+
- Swift 3.2+

## Install

We use [Carthage](https://github.com/Carthage/Carthage) to install our framework. 
Follow the link if you don't know how to install Carthage.

### Using Carthage

1. Create `Cartfile` in your project;
2. Add this repo to the file:
```
github "AndriiDoroshko/SnappyShrimp"
```
3. Use to get our library:
```
carthage update --platform iOS
```
4. Add both frameworks to `Build Settings/Link Binary With Libraries`
5. In your test target add the `Run Script`

Shell: `/bin/sh`
```
/usr/local/bin/carthage copy-frameworks
```
Input Files:
```
$(SRCROOT)/Carthage/Build/iOS/FBSnapshotTestCase.framework
$(SRCROOT)/Carthage/Build/iOS/SnappyShrimp.framework
```

### Using Cocoapods

We don't really use pods, but in case you want to get our framework using Cocoapods, feel free to contribute.

## Configuring

1. Create two schemes with your test target - first for `testing`, second for `recording`.
2. Add evnironmental variables to your test schemes: 
- `FB_REFERENCE_IMAGE_DIR` - folder for reference images - `$(SOURCE_ROOT)/Tests/ReferenceImages` e.g;
- `IMAGE_DIFF_DIR` - folder for failed and difference images - `$(SOURCE_ROOT)/Tests/FailureDiffs` e.g..
- `RECORD_MODE` - variable to decide if tests should run in record mode. In `Record` scheme, set this value as `TRUE`, to record new references.
3. In case you want to have different snapshots on screens with different display gamut (`P3` and `sRGB`), you should set `isGamutSupportEnabled` value to true.
4. If you want your custom implementation of `record mode` using , just setup the `recordMode` variable.

Example of the setup method:
```swift
override open func setup() {
	super.setup()
	recordMode = #?@!&
	isGamutSupportEnabled = #?@!&
}
```
Note: this is our implementation of Snapshot tests implementation. After install, you're free to configure it as you want.

## How to write tests

1. Add new **Unit test** target;
2. Create new class inherited from `SnapshotTest`;
3. Inside the class, create `test...()` method;
4. Create and setup your `ViewController` for testing;
5. Use method `verify`, that needs your `controller` and a `Presentation` object, that describes a device.
 
Presentations of all devices are specified in `Device` enum. Here's an example

```swift
verify(controller, for: Device.iPadPro9.portrait.oneThird)
```

That's how the method looks like
```swift
verify(controller: UIViewController, 
	for presentation: Presentation,
	with context: Context = Context())
```
Where:
- `controller` - your view controller that you want to test;
- `presentation` - contains information about device, including size, trait colections, masks, safe areas and name;
- `context` - the Context type provides ability to set custom `layoutDirection` and `contentSizeCategory`. If you don't specify them, they will be set to default.

To create snapshot with custom traits and size, just create a `Presentation` object on your own.

### Example:
```swift
public let smallViewController = Presentation(
            name: "iPhone X Portrait",
            size: CGSize(width: 250, height: 375),
            traitCollection: UITraitCollection(
                traitsFrom: [Display.InterfaceIdiom.phone,
                             Display.SizeClass.Vertical.regular,
                             Display.SizeClass.Horizontal.regular,
                             Display.Scale.x2]))
```

## Snapshot Testing example

> [Example of using Snappy Shrimp framework](https://github.com/AndriiDoroshko/SnappyShrimp/tree/master/SnappyShrimpTests)

There're two schemes for snapshot testing - one for recording, another one is for testing. We've picked this way to make things faster and easier.

To run our test example, we're using [Fastlane](https://github.com/fastlane/fastlane).
It allows you to run testing or recording with a simple command
```
fastlane test
```
or
```
fastlane record
```
Inside the Fastfile everything is simple. A `scan` action with required scheme and devices.
```ruby
  lane :test do
    scan(
      scheme: 'SnappyShrimpTests',
      devices: ['iPhone 8', 'iPhone 8 Plus', 'iPad Pro (12.9-inch)']
    )
  end
  lane :record do
    scan(
      scheme: 'SnappyShrimpRecord',
      devices: ['iPhone 8', 'iPhone 8 Plus', 'iPad Pro (12.9-inch)']
    )
  end
```
This is an example of the class for snapshot testing. All you need is to setup your controller and to call `verify` method with `Presentation` that you want to test.

```swift
import SnappyShrimp

class SnappyShrimpTests: SnapshotTest {
    
    func testExample() {
        let vc = ViewController()
        
        verify(vc, for: Device.iPhone8.landscape)
        verify(vc, for: Device.iPhone8.portrait)
        verify(vc, for: Device.iPhoneSE.portrait)
        
        verify(vc, for: Device.iPhone8Plus.landscape)
        verify(vc, for: Device.iPhone8Plus.portrait)
        
        verify(vc, for: Device.iPadPro12.portrait.fullScreen)
        verify(vc, for: Device.iPadPro12.portrait.oneThird)
        verify(vc, for: Device.iPadPro12.portrait.twoThirds)
        
        verify(vc, for: Device.iPhoneX.portrait)
        verify(vc, for: Device.iPhoneX.landscapeLeft)
        verify(vc, for: Device.iPhoneX.landscapeRight)
}
```

## Automation example

We've used snapshot testing to verify that our app looks exactly as we expect in all cases. But obviously, no one wants to run tests before pushing, or simply forgets, so we run these tests on the CI. But if the tests fail on the CI, you just can't take a look what exactly has happened there and you have to run tests on your own machine. 

So we found a way for that, We upload those images out of Travis in cloud storage, and then, if that's a pull request, they're posted in PR comments, if no, they're comming directly to our slack channel.

Things that we're using for that:

- `Fastlane` - if you still don't use fastlane, you better start. It allows you to run tests much easier and has a lot of options for build and testing. 

- `AWS S3` - best storage for your files, but you can use any you want.

- `Danger` - provides you with an ability to post comments, warnings, and failures to GitHub PR. It supports both `Swift` and `Ruby`, so you can write your own script, that will insert failed images into PR comments. With Danger, you will always have only one comment, that will be updated. If there will be no failurs, warnings or messages, it will remove comment.

## Why you need three devices instead one

The main idea was to use only one device with iOS SDK for snapshot testing, when the controller will have all needed `trait collections`, including size classes, idiom, scale and so on. But in fact, you can't override device specific trait collections, like `scale`, `gamut`, `idiom`. So when you launch tests for iPhone Plus on an iPad, you may have wrong behavior, because it will have scale @2 instead of @3, same with the idiom. That is why you need at least three. If you want to test @1 scale (old iPads or iPhone 3GS) you should add more, obviously. 

## Specific notes about snapshot testing

There're some things that you should note from our own experience.

**1. Always use the same devices for testing.**

First of all, because we didn't add differences for devices with different gamut - SRGB and P3. So, when you run snapshot tests on iPhone 6 Plus and iPhone 7 Plus, you will have tests failed, but you will have empty difference images and both reference and failed images will look absolutely the same. But for the machine, there is a difference. So, if you see an empty diff in your folder, first of all, make sure that you're running on the same device, that was used when you were writing these refs.

**2. Issues with empty diffs after layout updates**

If for the previous note there is an explanation, for the next one I haven't found one. We've had some issues when we've had empty diffs after we've changed view hierarchy. We've simply added an empty view, that served as a container and some of the tests have failed. The only way here - record new refs. The issue can be in the original framework's issue, or in the iOS SDK. Had no time to research that issue. Feel free to share your thoughts about that.

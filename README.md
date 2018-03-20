[![Build Status](https://travis-ci.org/AndriiDoroshko/SnappyShrimp.svg?branch=master)](https://travis-ci.org/AndriiDoroshko/SnappyShrimp) 
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://raw.githubusercontent.com/AndriiDoroshko/SnappyShrimp/master/LICENSE)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) 
[![Release](https://img.shields.io/github/release/AndriiDoroshko/SnappyShrimp.svg)](https://github.com/AndriiDoroshko/SnappyShrimp/releases)

#  Snappy Shrimp - New Snapshot Testing Experience

**Snappy Shrimp** - is a library for snapshot testing. It is based on FBSnapshotTestCase library and actually, it does the same thing - it records a reference image of your view and verifies it every time you launch tests. But how much time does it takes to make tests on all possible devices and in all possible orientations? This library allows you to save your time by decreasing the number of necessary devices up to three - **iPhone**, **iPhone Plus** and **iPad** and you will see why.

[Snappy Shrimp - New Snapshot Testing Experience](#snappy-shrimp---new-snapshot-testing-experience)
1. [Features](#features)
2. [Install](#install)
	1. [Using Carthage](#using-carthage)
3. [Recording and Testing](#recording-and-testing)
4. [Why you need three devices instead one](#why-you-need-three-devices-instead-one)
5. [How to write tests](#how-to-write-tests)
6. [Snapshot Testing example](#snapshot-testing-example)
7. [Automation example](#automation-example)
8. [Specific notes about snapshot testing](#specific-notes-about-snapshot-testing)

## Features

Things that we've improved to make snapshot testing experience much better:
- All devices are presented programmatically, including `actual sizes` and `trait collections`;
- We don't use `Host Application`, so it makes our tests run faster;
- Improved images naming, by adding to the image name: `device`, `orientation` and `os version`;
- Implemented `iPhone X` safe areas and masks to capture snapshots exactly as it looks like on a real device;
- You're able to see how your app looks like in all orientations and in all multitasking modes for iPads;
- We've also added `Context` type to specify custom `Layout Direction` and `Content Size Category`.

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
6. Setup your way to record images or to run tests. You can read our implementation [below](#recordnig-and-testig).

### Cocoapods

We don't really use pods, but in case you want to get our framework using Cocoapods, feel free to contribute.

## Recording and Testing

The library, same as the original one, has to modes:
- record mode;
- testing mode.

But it wasn't really comfortable to switch between these two options, especially it has to work on a CI. To make it easier, the default `recordMode` value now equals to `RECORD_MODE` environmental variable.
So now, you can simply create two schemes in your project - one for recording, another one for testing. Each one can have `RECORD_MODE` as env. variable with an appropriate value. And then, you just run tests using one of those schemes.

The example of using these schemes you can see in our repo. Also, you can read the [Snapshot Testing example](#snapshot-testing-example) topic with our own implementation.

## Why you need three devices instead one

The main idea was to use only one device with iOS SDK for snapshot testing, when the controller will have all needed `trait collections`, including size classes, idiom, scale and so on. But in fact, you can't override device specific trait collections, like `scale`, `idiom`. So when you launch tests for iPhone Plus on an iPad, you may have wrong behavior, because it will have scale @2 instead of @3, same with the idiom. That is why you need at least three. If you want to test @1 scale (old iPads or iPhone 4) you should add few more.

## How to write tests

1. Add new **Unit test** target;
2. Create new class inherited from `SnapshotTest`;
3. If you want your custom implementation of changing the `recordMode` value, override the `setUp()` method:
```swift
override open func setup() {
	super.setup()
	recordMode = #?@!&
}
```
4. Inside the class, create `test...()` method;
5. Create and setup your `ViewController` for testing;
6. Use method `verify`, that needs your `controller` and a `Presentation` object, that describes a device. 
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

## Snapshot Testing example

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
        
        //Has to be launched on any iPhone with @2 scale
        verify(vc, for: Device.iPhone8.portrait)
        
        //Has to be launched on any iPad with @3 scale
        verify(vc, for: Device.iPhone8Plus.landscape)
        
        //Has to be launched on any iPad with @2 scale
        verify(vc, for: Device.iPadPro9.portrait.oneThird)
        
        //Has to be launched on iPhone with @3 scale
        verify(vc, for: Device.iPhoneX.portrait)
        verify(vc, for: Device.iPhoneX.landscapeLeft)
        verify(vc, for: Device.iPhoneX.landscapeRight)
    }
}
```

## Automation example

We've used snapshot testing to verify that our app looks exactly as we expect in all cases. But obviously, no one wants to run tests before pushing, so all of these tests are running on the CI. And if your tests fail on the CI, you just can't take a look what exactly happened here and you have to run tests on your own. So in our opinion, you should upload those images out of Travis in some place, where everyone from your team can see what has failed and, maybe, to help you with a solution.

For example, you've added a new PR and one of the snapshot tests has failed, CI runs a script, that collects all diffs, deploys them on a storage and then, all of them are posted to the PR comments, including test target and test case names. 

Things that definetly will make your life easier:

- Fastlane - if you still don't use fastlane, you better start. It allows you to run tests much easier and has a lot of options for build and testing. 

- Danger - provides you with an ability to post comments, warnings, and failures to GitHub PR. It supports both `Swift` and `Ruby`, so you can write your own script, that will insert failed images into PR comments.

## Specific notes about snapshot testing

There're some things that you should note from our own experience.

**1. Always use the same devices for testing.**

First of all, because we didn't add differences for devices with different gamut - SRGB and P3. So, when you run snapshot tests on iPhone 6 Plus and iPhone 7 Plus, you will have tests failed, but you will have empty difference images and both reference and failed images will look absolutely the same. But for the machine, there is a difference. So, if you see an empty diff in your folder, first of all, make sure that you're running on the same device, that was used when you were writing these refs.

**2. Issues with empty diffs after layout updates**

If for the previous note there is an explanation, for the next one I haven't found one. We've had some issues when we've had empty diffs after we've changed view hierarchy. We've simply added an empty view, that served as a container and some of the tests have failed. The only way here - record new refs. The issue can be in the original framework's issue, or in the iOS SDK. Had no time to research that issue. Feel free to share your thoughts about that.

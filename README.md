# 

Hi, everyone) This is library for SnapShot testing based on FBSnapshotTestCase, but improved by adding all possible traitCollection for all devices appropriated, and make you experience with Snapshot tests much more positive.

So, if you want to check screenshots on specific device (or list of devices), just simply add it to `func test()` like in example below:

`func test() {`      

        verify(controller, for: Device.iPhoneX.portrait)
        verify(controller, for: Device.iPhoneX.landscapeLeft)
        
        verify(controller, for: Device.iPadPro9.portrait.oneThird)
    }

`verify()` will do the rest, but make sure you pass correct parameters)

`verify(controller: UIViewController, 
        for presentation: Presentation,
        with context: Context = Context(),` 

- presentation: for specific device
- context: layoutDirection, contentSizeCategory and name should be chosen be user and does not depend from device, but seted "unspecified" by default 

How to set up:

1. add it as a submodule to your project
2. run this comand `git submodule update --init --recursive`




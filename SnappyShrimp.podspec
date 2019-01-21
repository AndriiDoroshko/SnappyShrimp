Pod::Spec.new do |s|
  s.name             = 'SnappyShrimp'
  s.version          = '1.6.2'
  s.summary          = 'New experience of Snapshot testing'
  s.platform         = :ios
  s.swift_version    = '4.2'
  s.description      = <<-DESC
A new, faster way of Snapshot testing. Helps to verify that your view and its layout looks exactly as you expect on all devices, in all orientations, including iPad multitasking mode support and iPhone X support with its specific design.
                       DESC

  s.homepage         = 'https://github.com/AndriiDoroshko/SnappyShrimp'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RomanTysiachnik' => 'pot9ka@gmail.com' }
  s.source           = { :git => 'https://github.com/AndriiDoroshko/SnappyShrimp.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Balavor'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SnappyShrimp/Sources/**/*.swift'
  s.resources = 'SnappyShrimp/Media.xcassets'
  s.frameworks = 'UIKit', 'XCTest'
  s.dependency 'iOSSnapshotTestCase', '~> 5.0'
end
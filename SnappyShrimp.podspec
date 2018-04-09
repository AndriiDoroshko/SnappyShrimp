Pod::Spec.new do |s|
  s.name             = 'SnappyShrimp'
  s.version          = '2.0'
  s.summary          = 'New experience of Snapshot testing'
  s.platform         = :ios
  s.swift_version    = '4.1'
  s.description      = <<-DESC
A new, faster way of Snapshot testing. Helps to verify that your view and its layout looks exactly as you expect on all devices, in all orientations, including iPad multitasking mode support and iPhone X support with its specific design.
                       DESC

  s.homepage         = 'https://github.com/AndriiDoroshko/SnappyShrimp'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RomanTysiachnik' => 'pot9ka@gmail.com' }
  s.source           = { :git => 'https://github.com/AndriiDoroshko/SnappyShrimp.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Balavor'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SnappyShrimp/Sources/**/*'
  s.resources = 'SnappyShrimp/Media.xcassets'
  s.frameworks = 'UIKit', 'XCTest'
  s.dependency 'FBSnapshotTestCase', '~> 2.1.4'
end

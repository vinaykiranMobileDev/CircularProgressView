#
#  Be sure to run `pod spec lint CircularProgressView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "CircularProgressView"
  spec.version      = "0.0.1"
  spec.summary      = "Circular Progress View"

  spec.description  = <<-DESC
	Circular Progress View frame work to animate the progress 
                   DESC

  spec.homepage     = "https://github.com/vinaykiranMobileDev"

 spec.license      = "MIT"



  spec.author             = { "vinaykiran" => "vinay.kiran1993@gmail.com" }


spec.platform     = :ios
spec.platform     = :ios, "13.0"
s.swift_version = '4.0'

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


    spec.version		= '0.0.1'
  spec.source	= { :git => 'https://github.com/vinaykiranMobileDev/CircularProgressView.git', :tag => '0.0.1' }


 
  spec.source_files  = "CircularProgressView", "CircularProgressView/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

 spec.public_header_files = "CircularProgressView/**/*.h"


end

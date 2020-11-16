#
# Be sure to run `pod lib lint VitaleSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VitaleSDK'
  s.version          = '0.3.0'
  s.summary          = 'Intelligent, automatic, comprehensive, adaptive Training System'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
VitaleSDK is a comprehensive intelligent, automatic, and adaptive training framework programmed in Swift for iOS and iPadOS. Is the most convenient way of integrating our physical activity training features with any third party.
                       DESC

  s.homepage         = 'https://github.com/Miguel/VitaleSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Miguel' => 'miguel.munoz@lolaturtle.com' }
  s.source           = { :git => 'https://github.com/mmunozfe/VitaleSDK.git', :tag => "#{s.version}" }
  # s.social_media_url = 'https://twitter.com/mmunozfer'
  s.resource = 'VitaleSDK.xcframework'
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'VitaleSDK.xcframework' # Your XCFramework
  s.dependency 'Alamofire'
  s.dependency 'SwiftyJSON'
  s.dependency 'SwiftDate'
  s.dependency 'Localize-Swift'
  s.dependency 'FMDB'
  s.dependency 'YoutubePlayer-in-WKWebView'
  s.dependency 'HCVimeoVideoExtractor'
  s.dependency 'Instructions', '~> 1.3.1'
  s.swift_version = "5.0"
#  s.source_files = 'VitaleSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'VitaleSDK' => ['VitaleSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

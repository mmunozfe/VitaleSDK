#
# Be sure to run `pod lib lint VitaleSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VitaleSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of VitaleSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Miguel/VitaleSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Miguel' => 'miguel.munoz@lolaturtle.com' }
  s.source           = { :git => 'http://www.lolaturtle.com/VitaleSDK.zip', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/mmunozfer'

  s.ios.deployment_target = '10.0'
  s.ios.vendored_frameworks = 'VitaleSDK.xcframework' # Your XCFramework
  s.dependency 'Alamofire', '~> 4.9.0'
  s.dependency 'SwiftyJSON'
  s.dependency 'SwiftDate', '~> 4.5.1'
  s.dependency 'Localize-Swift', '~> 2.0'
  s.dependency 'FMDB'
  s.dependency 'YoutubePlayer-in-WKWebView', '~> 0.2.0'
  s.dependency 'HCVimeoVideoExtractor'
  s.dependency 'Instructions', '~> 1.3.1'
#  s.source_files = 'VitaleSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'VitaleSDK' => ['VitaleSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
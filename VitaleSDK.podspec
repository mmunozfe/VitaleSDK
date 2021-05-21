#
# Be sure to run `pod lib lint VitaleSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VitaleSDK'
  s.version          = '1.1'
  s.summary          = 'Intelligent, automatic, comprehensive, adaptive Training System'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://www.myvitale.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Miguel Muñoz' => 'miguel.munoz@myvitale.com' }
  s.source           = { :git => 'https://github.com/mmunozfe/VitaleSDK.git', :tag => "#{s.version}" }
  # s.social_media_url = 'https://twitter.com/mmunozfer'
  s.resource = 'VitaleSDK.xcframework'
  s.ios.deployment_target = '11.0'
  s.vendored_frameworks = 'VitaleSDK.xcframework' # Your XCFramework
  s.dependency 'Alamofire'
  s.dependency 'SwiftyJSON', '5.0.0'
  s.dependency 'SwiftDate'
  s.dependency 'Localize-Swift', '3.2.0'
  s.dependency 'FMDB', '2.7.5'
  s.dependency 'YoutubePlayer-in-WKWebView', '0.3.4'
  s.dependency 'HCVimeoVideoExtractor', '0.0.1'
  s.dependency 'Instructions', '1.3.1'
  s.dependency 'Charts', '3.6.0'
  s.swift_version = "5.0"

end

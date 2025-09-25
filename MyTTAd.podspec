#
# Be sure to run `pod lib lint MyTTAd.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyTTAd'
  s.version          = '1.0.6'
  s.summary          = '介绍要整改详细，不要英文简单的说明'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
这里不要有土豆啊，验证不过去，详细点
                       DESC

  s.homepage         = 'https://github.com/zimub/MyTTAd'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zimub' => 'panguowen@playdayy.com' }
  s.source           = { :git => 'https://github.com/zimub/MyTTAd.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
#  s.vendored_frameworks = 'MyTTAd.framework'
  s.source_files = 'MyTTAd/Classes/**/*'
  s.swift_versions = ['5.0', '6.0'] # 修正：正确的键名是 swift_versions
  # 添加架构限制
  s.pod_target_xcconfig = {
     'VALID_ARCHS' => 'x86_64 arm64',
     'ARCHS' => 'x86_64 arm64',
     'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s',
     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7 armv7s i386'
   }
   
  s.user_target_xcconfig = {
     'VALID_ARCHS' => 'x86_64 arm64',
     'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s',
     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7 armv7s i386'
   }
   
  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'
  s.dependency 'Alamofire'
  s.dependency 'SnapKit'
  # s.resource_bundles = {
  #   'MyTTAd' => ['MyTTAd/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end


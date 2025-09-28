#
# Be sure to run `pod lib lint MyTTAd.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyTTAd'
  s.version          = '1.0.8'
  s.summary          = 'MyTTAd 是一个用于 iOS 应用的广告 SDK，提供开屏广告、横幅广告、插屏广告等功能'

  s.description      = <<-DESC
MyTTAd 是一个功能完整的 iOS 广告 SDK，支持多种广告形式包括开屏广告、横幅广告、插屏广告等。
该 SDK 基于 Swift 开发，支持 iOS 12.0 及以上版本，提供简单易用的 API 接口。
                       DESC

  s.homepage         = 'https://github.com/zimub/MyTTAd'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zimub' => 'panguowen@playdayy.com' }
  s.source           = { :git => 'https://github.com/zimub/MyTTAd.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5.0', '6.0']
  
  # 使用 xcframework 方式发布
  s.vendored_frameworks = 'MyTTAd.xcframework'
  
  # 静态框架
  s.static_framework = true
  
  # 系统框架依赖
  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'AdSupport', 'CoreTelephony', 'SystemConfiguration'
  
  # 第三方依赖
  s.dependency 'Alamofire', '~> 5.0'
  s.dependency 'SnapKit', '~> 5.0'
  # s.resource_bundles = {
  #   'MyTTAd' => ['MyTTAd/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end


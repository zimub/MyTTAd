

Pod::Spec.new do |s|
s.name             = 'MyTTAd'
s.version          = '1.1.5'
s.summary          = 'MyTTAd 是一个用于 iOS 应用的广告 SDK，提供开屏广告、横幅广告、插屏广告等功能'

s.description      = <<-DESC
MyTTAd 是一个功能完整的 iOS 广告 SDK，支持多种广告形式包括开屏广告、横幅广告、插屏广告等。
该 SDK 基于 Swift 开发，支持 iOS 12.0 及以上版本，提供简单易用的 API 接口。
DESC

s.homepage         = 'https://github.com/zimub/MyTTAd'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'zimub' => 'panguowen@playdayy.com' }
s.source           = { :git => 'https://github.com/zimub/MyTTAd.git', :tag => s.version.to_s }

s.ios.deployment_target = '13.0'

  # 关键：添加这些配置来强制覆盖所有目标的部署版本
  s.user_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '13.0',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.pod_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '13.0',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
s.swift_versions = ['5.0', '6.0']

# 使用 xcframework 方式发布
s.vendored_frameworks = 'MyTTAd.xcframework'

# s.source_files = 'MyTTAd/Classes/**/*'
# 静态框架
s.static_framework = true

# 系统框架依赖
#  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'AdSupport', 'CoreTelephony', 'SystemConfiguration'

s.frameworks = 'UIKit','Foundation','AdSupport','CoreMotion','AppTrackingTransparency'
s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'

s.dependency 'Alamofire', '~> 5.9.1'
# s.dependency 'MBProgressHUD', '1.2.0'
# s.dependency 'BrotliKit', '1.0.2'
s.dependency 'AdjustSignature', '3.35.2'
s.dependency 'Sentry', '1.7.2'
s.dependency 'FBSDKCoreKit_Basics', '17.0.0'
s.dependency 'FBSDKCoreKit', '17.0.0'
s.dependency 'FirebaseAnalytics', '11.3.0'
s.dependency 'FirebaseABTesting', '11.3.0'
s.dependency 'FirebaseAnalyticsOnDeviceConversion', '11.3.0'
s.dependency 'FirebaseCore', '11.3.0'
s.dependency 'FirebaseCoreExtension', '11.3.0'
s.dependency 'FirebaseCoreInternal', '11.3.0'
s.dependency 'FirebaseCrashlytics', '11.3.0'
s.dependency 'FirebaseInstallations', '11.3.0'
s.dependency 'FirebaseMessaging','11.3.0'
s.dependency 'FirebasePerformance', '11.3.0'
s.dependency 'FirebaseRemoteConfig', '11.3.0'
s.dependency 'FirebaseRemoteConfigInterop', '11.3.0'
s.dependency 'FirebaseSessions', '11.3.0'
s.dependency 'FirebaseSharedSwift', '11.3.0'
s.dependency 'ThinkingDataCore', '1.0.2'
s.dependency 'ThinkingSDK', '3.0.2'
s.dependency 'GoogleUtilities','8.0.2'
s.dependency 'TTOpenPass', '2.1.2-swift'



# s.resource_bundles = {
#   'MyTTAd' => ['MyTTAd/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end

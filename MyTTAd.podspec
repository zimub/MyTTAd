# MyTTAd.podspec
Pod::Spec.new do |s|
  s.name             = 'MyTTAd'
  s.version          = '2.0.6'
  s.summary          = 'MyTTAd 是一个用于 iOS 应用的广告 SDK'
  
  s.description      = <<-DESC
  MyTTAd 是一个功能完整的 iOS 广告 SDK，支持多种广告形式。
  DESC

  s.homepage         = 'https://github.com/zimub/MyTTAd'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zimub' => 'panguowen@playdayy.com' }
  
  # 关键修改：指向你的 Nexus 仓库
  s.source           = {
    :http => 'http://nexus.playnexx.net/repository/ios_libs/MyTTAd/2.0.6/MyTTAd.zip',
    :type => 'zip'
  }

  s.ios.deployment_target = '13.0'
  s.swift_versions = ['5.0', '6.0']
  
  # 架构配置
  s.user_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '13.0',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.pod_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '13.0',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  # 使用 xcframework
  s.vendored_frameworks = 'MyTTAd.xcframework'
  s.static_framework = true

  # 系统依赖
  s.frameworks = 'UIKit','Foundation','AdSupport','CoreMotion','AppTrackingTransparency'
  s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'

  # 第三方依赖
  s.dependency 'Alamofire', '~> 5.9.1'
  s.dependency 'MBProgressHUD', '1.2.0'
  s.dependency 'BrotliKit', '1.0.2'
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
end

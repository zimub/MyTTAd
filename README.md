# MyTTAd

[![CI Status](https://img.shields.io/travis/zimub/MyTTAd.svg?style=flat)](https://travis-ci.org/zimub/MyTTAd)
[![Version](https://img.shields.io/cocoapods/v/MyTTAd.svg?style=flat)](https://cocoapods.org/pods/MyTTAd)
[![License](https://img.shields.io/cocoapods/l/MyTTAd.svg?style=flat)](https://cocoapods.org/pods/MyTTAd)
[![Platform](https://img.shields.io/cocoapods/p/MyTTAd.svg?style=flat)](https://cocoapods.org/pods/MyTTAd)

MyTTAd 是一个功能完整的 iOS 广告 SDK，支持多种广告形式包括开屏广告、横幅广告、插屏广告等。该 SDK 基于 Swift 开发，支持 iOS 12.0 及以上版本。

## 功能特性

- 🚀 开屏广告
- 📱 横幅广告  
- 🎯 插屏广告
- 📊 广告数据统计
- 🔧 简单易用的 API 接口
- 📦 支持 CocoaPods 集成

## 系统要求

- iOS 12.0+
- Xcode 12.0+
- Swift 5.0+

## 安装方式

### CocoaPods 集成

1. 在您的 `Podfile` 中添加以下内容：

```ruby
platform :ios, '12.0'
use_frameworks!

target 'YourApp' do
  pod 'MyTTAd'
end
```

2. 运行安装命令：

```bash
pod install
```

3. 打开生成的 `.xcworkspace` 文件

### 手动集成

如果您不想使用 CocoaPods，也可以手动集成：

1. 下载 [MyTTAd.xcframework](https://github.com/zimub/MyTTAdFramework/releases)
2. 将 `MyTTAd.xcframework` 拖拽到您的 Xcode 项目中
3. 在项目设置中添加必要的系统框架依赖

## 快速开始

### 1. 初始化 SDK

```swift
import MyTTAd

// 在 AppDelegate 中初始化
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    // 初始化广告 SDK
    MyTTAdManager.shared.initialize(appId: "your_app_id")
    
    return true
}
```

### 2. 显示开屏广告

```swift
import MyTTAd

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 显示开屏广告
        MyTTAdManager.shared.showSplashAd(in: self.view) { [weak self] result in
            switch result {
            case .success:
                print("开屏广告显示成功")
            case .failure(let error):
                print("开屏广告显示失败: \(error)")
            }
        }
    }
}
```

### 3. 显示横幅广告

```swift
import MyTTAd

class ViewController: UIViewController {
    
    @IBOutlet weak var bannerContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 显示横幅广告
        MyTTAdManager.shared.showBannerAd(
            in: bannerContainer,
            adSize: .banner320x50
        ) { result in
            switch result {
            case .success:
                print("横幅广告显示成功")
            case .failure(let error):
                print("横幅广告显示失败: \(error)")
            }
        }
    }
}
```

## API 文档

### MyTTAdManager

主要的广告管理器类，提供所有广告相关的功能。

#### 初始化方法

```swift
func initialize(appId: String)
```

#### 开屏广告

```swift
func showSplashAd(in view: UIView, completion: @escaping (Result<Void, Error>) -> Void)
```

#### 横幅广告

```swift
func showBannerAd(in containerView: UIView, adSize: AdSize, completion: @escaping (Result<Void, Error>) -> Void)
```

#### 插屏广告

```swift
func showInterstitialAd(completion: @escaping (Result<Void, Error>) -> Void)
```

## 示例项目

运行示例项目：

1. 克隆仓库
2. 进入 Example 目录
3. 运行 `pod install`
4. 打开 `MyTTAd.xcworkspace`
5. 运行项目

## 版本历史

### 1.0.6
- 支持 xcframework 发布
- 优化广告加载性能
- 修复已知问题

## 许可证

MyTTAd 基于 MIT 许可证开源。详情请查看 [LICENSE](LICENSE) 文件。

## 作者

zimub, panguowen@playdayy.com

## 支持

如果您在使用过程中遇到问题，请通过以下方式联系我们：

- 提交 [Issue](https://github.com/zimub/MyTTAd/issues)
- 发送邮件至 panguowen@playdayy.com

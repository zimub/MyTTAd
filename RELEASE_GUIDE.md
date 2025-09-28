# MyTTAd 发布指南

本指南将帮助您了解如何将 MyTTAd.xcframework 发布到 GitHub 并通过 CocoaPods 让其他项目集成。

## 发布流程

### 1. 准备 xcframework

确保您已经生成了 `MyTTAd.xcframework` 文件，该文件应该包含：
- `ios-arm64/` - 真机架构
- `ios-arm64_x86_64-simulator/` - 模拟器架构
- `Info.plist` - 框架信息

### 2. 更新版本号

在发布新版本前，需要更新以下文件中的版本号：

#### 更新 podspec 文件
```ruby
# MyTTAd.podspec
s.version = '1.0.7'  # 更新版本号
```

#### 更新 README.md
```markdown
### 1.0.7
- 新功能描述
- 修复的问题
```

### 3. 创建 Git Tag

```bash
# 提交所有更改
git add .
git commit -m "Release version 1.0.7"

# 创建标签
git tag 1.0.7

# 推送代码和标签
git push origin main
git push origin 1.0.7
```

### 4. 上传 xcframework 到 GitHub

有两种方式可以发布 xcframework：

#### 方式一：直接上传到主仓库
```bash
# 将 xcframework 复制到项目根目录
cp build/MyTTAd.xcframework ./

# 提交并推送
git add MyTTAd.xcframework
git commit -m "Add MyTTAd.xcframework for version 1.0.7"
git push origin main
```

#### 方式二：创建专门的 Framework 仓库（推荐）
1. 创建新仓库：`MyTTAdFramework`
2. 上传 xcframework 文件
3. 创建 Release 版本
4. 更新 podspec 中的 source 地址

### 5. 验证 podspec

在发布前，验证 podspec 文件是否正确：

```bash
# 验证 podspec 语法
pod spec lint MyTTAd.podspec

# 如果有警告，可以使用 --allow-warnings 参数
pod spec lint MyTTAd.podspec --allow-warnings
```

### 6. 发布到 CocoaPods Trunk

```bash
# 注册 CocoaPods 账号（首次发布）
pod trunk register your-email@example.com 'Your Name' --description='Your description'

# 发布 pod
pod trunk push MyTTAd.podspec

# 如果有警告，使用以下命令
pod trunk push MyTTAd.podspec --allow-warnings
```

## 其他项目集成方式

### 方式一：通过 CocoaPods 官方源

```ruby
# Podfile
platform :ios, '12.0'
use_frameworks!

target 'YourApp' do
  pod 'MyTTAd'
end
```

### 方式二：通过 GitHub 直接引用

```ruby
# Podfile
platform :ios, '12.0'
use_frameworks!

target 'YourApp' do
  pod 'MyTTAd', :git => 'https://github.com/zimub/MyTTAd.git', :tag => '1.0.7'
end
```

### 方式三：通过本地路径（开发测试）

```ruby
# Podfile
platform :ios, '12.0'
use_frameworks!

target 'YourApp' do
  pod 'MyTTAd', :path => '../MyTTAd'
end
```

### 方式四：通过 xcframework 直接集成

如果不想使用 CocoaPods，也可以直接集成 xcframework：

1. 下载 `MyTTAd.xcframework`
2. 拖拽到 Xcode 项目中
3. 在项目设置中添加依赖：
   - `Alamofire`
   - `SnapKit`
   - 系统框架：`UIKit`, `Foundation`, `CoreGraphics`, `AdSupport`, `CoreTelephony`, `SystemConfiguration`

## 常见问题

### Q: 如何更新已发布的版本？

A: 按照上述流程，更新版本号后重新发布即可。

### Q: 如何回退到之前的版本？

A: 用户可以在 Podfile 中指定具体版本：
```ruby
pod 'MyTTAd', '~> 1.0.6'  # 使用 1.0.6 版本
```

### Q: xcframework 文件太大怎么办？

A: 可以考虑：
1. 使用 Git LFS 管理大文件
2. 创建专门的 Framework 仓库
3. 通过 Release 页面提供下载链接

### Q: 如何测试集成是否成功？

A: 创建一个测试项目：
1. 创建新的 iOS 项目
2. 添加 Podfile 并集成 MyTTAd
3. 运行 `pod install`
4. 尝试导入和使用 MyTTAd

## 最佳实践

1. **版本管理**：使用语义化版本号（Semantic Versioning）
2. **文档更新**：每次发布都要更新 README.md 和 CHANGELOG
3. **测试验证**：发布前在多个项目中测试集成
4. **向后兼容**：尽量保持 API 的向后兼容性
5. **及时响应**：及时回复用户的问题和反馈

## 联系支持

如果在发布过程中遇到问题，请联系：
- 邮箱：panguowen@playdayy.com
- GitHub Issues：https://github.com/zimub/MyTTAd/issues

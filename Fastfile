default_platform(:ios)


platform :ios do
  desc "Package MyTTAd framework"
  lane :package do
    setup_ci
    
    # 使用 gym 打包
    gym(
      scheme: "MyTTAd",
      workspace: "MyTTAd.xcworkspace",
      configuration: "Release",
      export_method: "development",
      output_directory: "build",
      output_name: "MyTTAd.framework",
      skip_package_ipa: true,
      skip_archive: false,
      build_path: "build",
      xcargs: {
        :ARCHS => "arm64 x86_64",
        :VALID_ARCHS => "arm64 x86_64",
        :ONLY_ACTIVE_ARCH => "NO",
        :BUILD_LIBRARY_FOR_DISTRIBUTION => "YES"
      }
    )
  end
end

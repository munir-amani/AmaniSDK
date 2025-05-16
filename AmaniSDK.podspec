#
#  Be sure to run `pod spec lint Amani.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "AmaniSDK"
  s.version      = "3.4.12"
  s.summary      = "Amani-SDK"
  s.description  = "The Amani Software Development kit (SDK) provides you complete steps to perform eKYC."
  s.homepage     = "https://github.com/AmaniTechnologiesLtd/IOS_SDK_V2_Public"
  s.license      = "Copyright"
  s.author       = "Amani"
  s.platform     = :ios, "13.0"
  s.static_framework = true
  s.source       = { :git => "https://github.com/munir-amani/AmaniSDK-ios.git", :tag => s.version.to_s }
  # s.dependency 'Alamofire', '>=5.2'
  # s.dependency 'SwiftLint'
  # s.dependency 'IQKeyboardManagerSwift'
  # s.dependency "lottie-ios"
  s.dependency 'GMOpenSSL'
  s.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit'}
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = 'Binaries/AmaniSDK.xcframework'
  s.preserve_paths      = 'Binaries/AmaniSDK.xcframework'


end

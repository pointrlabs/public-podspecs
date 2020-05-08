# frozen_string_literal: true

Pod::Spec.new do |s|
  s.name             = 'PointrKit'
  s.version          = '6.0.0-pre1'
  s.summary          = 'Pod for Pointr SDK 6.0.0-prev1 using Xcode 11.3.1'

  s.homepage         = 'https://github.com/pointrlabs'
  s.license          = { type: 'Apache-2.0' }
  s.authors          = { 'pointrlabs' => 'info@pointrlabs.com' }
  s.homepage         = 'https://www.pointrlabs.com'

  s.description      = <<~DESC
    Pointr v6-preview-1 podspec
    Podspec is generated to use Pointr inside a react-native project.
  DESC

  s.source = { http: "https://pointrapps.blob.core.windows.net/sdk/ios/PointrKit/#{s.version}.zip?#{ENV['POINTR_SDK_TOKEN']}" }

  s.ios.deployment_target = '9.0'
  s.ios.vendored_framework = 'PointrKit.framework'

  s.frameworks = %w[
    SystemConfiguration
    CoreBluetooth
    CoreLocation
    AudioToolbox
    CoreMotion
    UIKit
    AVFoundation
    AudioToolbox
  ]
  s.weak_frameworks = %w[
    UserNotifications
  ]

  s.libraries = ['z', 'c++']
end

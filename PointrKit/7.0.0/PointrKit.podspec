# frozen_string_literal: true

Pod::Spec.new do |s|
  s.name             = 'PointrKit'
  s.version          = '7.0.0'
  s.summary          = 'Pointr iOS SDK'

  s.homepage         = 'https://github.com/pointrlabs'
  s.license          = { type: 'Apache-2.0' }
  s.authors          = { 'pointrlabs' => 'info@pointrlabs.com' }
  s.homepage         = 'https://www.pointrlabs.com'

  s.description      = <<~DESC
    Pointr iOS SDK. Requires `POINTR_SDK_TOKEN` environment variable to be set.
  DESC

  s.source = { http: "https://pointrapps.blob.core.windows.net/sdk/ios/PointrKit/#{s.version}/PointrKit.zip?#{ENV['POINTR_SDK_TOKEN']}" }

  s.platform = :ios, '10.0'
  s.swift_versions = ['5.0']

  s.frameworks = %w[
    SystemConfiguration
    CoreBluetooth
    CoreLocation
    AudioToolbox
    CoreMotion
    UIKit
    AVFoundation
  ]
  s.weak_frameworks = %w[
    UserNotifications
    ARKit
    SceneKit
  ]

  s.libraries = ['z', 'c++']
  s.vendored_framework = 'PointrKit.xcframework'

  s.dependency 'Mapbox-iOS-SDK', '~>5'
end

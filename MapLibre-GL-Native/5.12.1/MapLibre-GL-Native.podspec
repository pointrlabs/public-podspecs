Pod::Spec.new do |m|

  version = '5.12.1'

  m.name    = 'MapLibre-GL-Native'
  m.version = version

  m.summary           = 'Open source vector map solution for iOS with full styling capabilities.'
  # m.description       = 'Open source, OpenGL-based vector map solution for iOS with full styling capabilities and Cocoa Touch APIs.'
  m.homepage          = 'https://docs.maptiler.com/maplibre-gl-native-ios/'
  m.license           = { :type => 'BSD' }
  m.author            = { 'Mapbox' => 'mobile@mapbox.com' }
  # m.social_media_url  = 'https://twitter.com/maplibre'
  # m.documentation_url = 'https://docs.mapbox.com/ios/api/maps/'

  m.source = {
    :http => "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v#{m.version.to_s}/Mapbox-#{m.version.to_s}.zip"
  }

  m.platform              = :ios
  m.ios.deployment_target = '9.0'

  m.requires_arc = true

  m.vendored_frameworks = 'Mapbox.xcframework'
  m.module_name = 'Mapbox'

end

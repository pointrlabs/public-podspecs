Pod::Spec.new do |m|

  version = '6.2.0'

  m.name    = 'MapLibre'
  m.version = version

  m.summary           = 'Open source vector map solution for iOS with full styling capabilities.'
  m.description       = 'Open source, Metal-based vector map solution for iOS with full styling capabilities and Cocoa Touch APIs.'
  m.homepage          = 'https://maplibre.org/'
  m.license           = { :type => 'BSD', :file => 'LICENSE.md' }
  m.author            = { 'MapLibre' => 'https://maplibre.org/' }
  m.social_media_url  = 'https://twitter.com/maplibre'
  m.documentation_url = 'hhttps://maplibre.org/maplibre-native/docs/book/'

  m.source = {
    :http => "https://github.com/maplibre/maplibre-native/releases/download/ios-v#{m.version.to_s}/MapLibre.dynamic.xcframework.zip"
  }

  m.platform              = :ios
  m.ios.deployment_target = '9.0'

  m.requires_arc = true

  m.vendored_frameworks = 'MapLibre.xcframework'
  m.module_name = 'MapLibre'

end

Pod::Spec.new do |m|

  version = '6.27.0.1'

  m.name    = 'MapLibre'
  m.version = version

  m.summary           = 'Open source vector map solution for iOS with full styling capabilities.'
  m.description       = 'Open source, Metal-based vector map solution for iOS with full styling capabilities and Cocoa Touch APIs.'
  m.homepage          = 'https://maplibre.org/'
  m.license           = { :type => 'BSD', :file => 'LICENSE.md' }
  m.author            = { 'MapLibre' => 'https://maplibre.org/' }
  m.social_media_url  = 'https://twitter.com/maplibre'
  m.documentation_url = 'https://maplibre.org/maplibre-native/docs/book/'

  m.source = {
    :http => "https://pointrapps.blob.core.windows.net/sdk/ios/MapLibre/6.27.0.1/MapLibre.dynamic.xcframework.zip?sv=2023-01-03&st=2024-10-23T06%3A40%3A13Z&se=2035-11-08T06%3A40%3A00Z&sr=c&sp=r&sig=WaCbhxt4pMqf9Oqzgf%2FnDj1SbdvyzwCtFdsWLW4KFqA%3D"
  }

  m.platform              = :ios
  m.ios.deployment_target = '15.0'

  m.requires_arc = true

  m.vendored_frameworks = 'MapLibre.xcframework'
  m.module_name = 'MapLibre'

end

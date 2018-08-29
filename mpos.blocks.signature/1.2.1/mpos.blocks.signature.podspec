Pod::Spec.new do |s|
  s.name     = 'mpos.blocks.signature'
  s.version  = '1.2.1'
  s.platform = :ios, '5.0'
  s.license  = {:type => 'MIT'}
  s.summary  = 'Signature Field'
  s.homepage = 'http://www.payworksmobile.com'
  s.author   = { 'payworks GmbH' => 'info@payworksmobile.com' }
  s.source   = { :git => 'https://bitbucket.org/payworks/mpos.ios.blocks.signatureview.git', :tag => 'v1.2.1' }
  s.description = 'A View/Controller to capture a users signature on screen and access it as an UIImage'
  s.source_files = 'mpos.blocks.signature/*.{h,m}', 'External/**/*.{h,m}'
  s.resources = ["Resources/*.png"]
  s.requires_arc =  true
  s.frameworks = 'QuartzCore', 'OpenAL', 'OpenGLES'
  s.dependency 'cocos2d', '~> 2.1'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/external/kazmath/include/"' }
end

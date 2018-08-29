Pod::Spec.new do |s|
  s.name     = 'mpos.blocks.signature'
  s.version  = '1.3.1'
  s.platform = :ios, '5.0'
  s.license  = {:type => 'MIT'}
  s.summary  = 'Signature Field'
  s.homepage = 'http://www.payworksmobile.com'
  s.author   = { 'payworks GmbH' => 'info@payworksmobile.com' }
  s.source   = { :git => 'https://bitbucket.org/payworks/mpos.ios.blocks.signatureview.git', :tag => '1.3.1' }
  s.description = 'A View/Controller to capture a users signature on screen and access it as an UIImage'
  s.source_files = 'mpos.blocks.signature/*.{h,m}', 'External/**/*.{h,m}'
  s.requires_arc =  true
  s.frameworks = 'GLKit', 'OpenGLES'
end

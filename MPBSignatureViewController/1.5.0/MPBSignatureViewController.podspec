Pod::Spec.new do |s|
  s.name     = 'MPBSignatureViewController'
  s.version  = '1.5.0'
  s.platform = :ios, '7.0'
  s.license  = {:type => 'MIT'}
  s.summary  = 'Signature Field'
  s.homepage = 'http://www.payworks.com'
  s.author   = { 'Payworks GmbH' => 'info@payworks.com' }
  s.source   = { :git => 'https://github.com/payworks/MPBSignatureViewController.git', :tag => s.version.to_s }
  s.description = 'A ViewController to capture a user\'s signature on screen and access it as an UIImage'
  s.source_files = 'MPBSignatureViewController/*.{h,m}', 'External/**/*.{h,m}'
  s.resource_bundle  = { 'MPBSignatureViewResources' => ['Resources/*.png', 'Resources/*.lproj'] }
  s.requires_arc =  true
  s.frameworks = 'GLKit', 'OpenGLES'
end

Pod::Spec.new do |s|

  s.name         = "mcommerce"
  s.version      = "1.7.0"
  s.summary      = "Accept payments in your app."

  s.description  = <<-DESC
  				   With mcommerce, you can accept payments in your app

                   * see http://www.payworksmobile.com/developers for details
                   DESC

  s.homepage     = "http://www.payworksmobile.com/developers"
  s.license	 = { :type => 'proprietary', :file => 'LICENCE.txt' }


  s.author       = { "Korbinian Breu" => "korbinian.breu@payworksmobile.com" }


  s.platform     = :ios, '6.0'

  s.source       = { :git => "https://bitbucket.org/payworks/io.payworks.mcommerce.release.git", :tag => "v1.7.0" }
  
  s.frameworks   = 'mobile.connect'
  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/mcommerce"' }
  s.preserve_paths = ['mobile.connect.framework', 'LICENSE.txt']
  s.resource = 'mobile.connect.framework'

end

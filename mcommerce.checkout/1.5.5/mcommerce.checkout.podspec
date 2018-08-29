
Pod::Spec.new do |s|

  s.name         = "mcommerce.checkout"
  s.version      = "1.5.5"
  s.summary      = "Payment screens for mcommerce"

  s.description  = <<-DESC
  				   Provides payment checkout screens based on mcommerce

                   * see http://www.payworksmobile.com/developers for details
                   DESC

  s.homepage     = "http://www.payworksmobile.com/developers"
  s.license	 = { :type => 'proprietary', :file => 'LICENCE.txt' }


  s.author       = { "Korbinian Breu" => "korbinian.breu@payworksmobile.com" }


  s.platform     = :ios, '5.0'


  s.source       = { :git => "https://bitbucket.org/payworks/io.payworks.mcommerce.release.git", :tag => "v1.5.5" }
  
  s.frameworks   = 'mobile.connect.checkout'
  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/mcommerce.checkout"' }
  s.preserve_paths = ['mobile.connect.checkout.framework', 'LICENSE.txt']
  s.dependency 'mcommerce', '~> 1.5.5'
  s.resource = 'mobile.connect.checkout.framework'


end

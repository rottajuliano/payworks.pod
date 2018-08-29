Pod::Spec.new do |spec|
	spec.name				= 'Paybutton'
	spec.version			= '1.0.0-BETA'
	spec.license			= { :type => 'Copyright', :text => '©2015 payworks GmbH. All rights reserved.' }
	spec.homepage			= 'http://www.payworksmobile.com/developers'
	spec.authors			= { 'payworks' => 'developers@payworksmobile.com' }
	spec.summary			= 'A delightful payment integration framework powered by payworks'
	spec.platform			= :ios, '7.0'
	spec.requires_arc		= true
	spec.source				= { :http => 'http://payworksmobile.com/downloads/mPOS-UI-2.2.7-BETA01/mpos.ios.ui.2.2.7-BETA01.zip' }
	spec.resource			= 'mpos.ios.ui.1.0.0-BETA/mPOSUIResources.bundle'
	spec.vendored_frameworks = 'mpos.ios.ui.1.0.0-BETA/mPOSUI.framework'
	spec.ios.dependency			'mpos', '~> 2.2.7'
	spec.ios.dependency			'MPBSignatureViewController', '~> 1'
end

Pod::Spec.new do |s|
  s.name     = 'MPAFNetworking'
  s.version  = '2.5.4'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X networking framework.'
  s.homepage = 'https://github.com/AFNetworking/AFNetworking'
  s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://bitbucket.org/payworks/io.payworks.mpafnetworking.git', :tag => '2.5.4-7750931', :submodules => true }
  s.requires_arc = true

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.public_header_files = 'AFNetworking/*.h'
  s.source_files = 'AFNetworking/MPAFNetworking.h'

  s.subspec 'Serialization' do |ss|
    ss.source_files = 'AFNetworking/MPAFURL{Request,Response}Serialization.{h,m}'
    ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.osx.frameworks = 'CoreServices'
  end

  s.subspec 'Security' do |ss|
    ss.source_files = 'AFNetworking/MPAFSecurityPolicy.{h,m}'
    ss.frameworks = 'Security'
  end

  s.subspec 'Reachability' do |ss|
    ss.source_files = 'AFNetworking/MPAFNetworkReachabilityManager.{h,m}'
    ss.frameworks = 'SystemConfiguration'
  end

  s.subspec 'NSURLConnection' do |ss|
    ss.dependency 'MPAFNetworking/Serialization'
    ss.dependency 'MPAFNetworking/Reachability'
    ss.dependency 'MPAFNetworking/Security'
    ss.frameworks = 'UIKit'

    ss.source_files = 'AFNetworking/MPAFURLConnectionOperation.{h,m}', 'AFNetworking/MPAFHTTPRequestOperation.{h,m}', 'AFNetworking/MPAFHTTPRequestOperationManager.{h,m}'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'MPAFNetworking/Serialization'
    ss.dependency 'MPAFNetworking/Reachability'
    ss.dependency 'MPAFNetworking/Security'

    ss.source_files = 'AFNetworking/MPAFURLSessionManager.{h,m}', 'AFNetworking/MPAFHTTPSessionManager.{h,m}'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.deployment_target = '6.0'

    ss.dependency 'MPAFNetworking/NSURLConnection'
    ss.dependency 'MPAFNetworking/NSURLSession'

    ss.ios.public_header_files = 'UIKit+AFNetworking/*.h'
    ss.ios.source_files = 'UIKit+AFNetworking'
    ss.osx.source_files = ''
  end
end

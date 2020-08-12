Pod::Spec.new do |s|  
    s.name                      = 'Revolt'
    s.version                   = '1.0.10'
    s.summary                   = 'Revolt SDK, tracking events'
    s.homepage                  = 'http://miquido.com/'

    s.author                    = { 'Name' => 'jacek.grygiel@miquido.com' }
    s.license                   = { :type => 'Apache 2.0', :file => 'LICENSE' }

    s.platform                  = :ios
    s.source                    = { :git => "https://github.com/miquido/revolt-sdk-ios-binary.git", :tag => "#{s.version}" }
    s.ios.deployment_target     = '10.0'
    s.ios.vendored_frameworks   = 'Frameworks/Revolt.framework'
end

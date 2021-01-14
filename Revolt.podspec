Pod::Spec.new do |s|  
    s.name              = 'Revolt'
    s.version           = '1.0.13'
    s.summary           = 'Revolt SDK, tracking events'
    s.homepage          = 'http://miquido.com/'

    s.author            = { 'Name' => 'jacek.grygiel@miquido.com' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform          = :ios
    s.source       = { :git => "https://github.com/miquido/revolt-sdk-ios-binary.git", :tag => "#{s.version}" }
    s.ios.deployment_target = '12.0'
    s.ios.vendored_frameworks = 'Frameworks/Revolt.framework'
    s.xcconfig                  = { 'VALID_ARCHS' => 'arm64 armv7 x86_64' }
end

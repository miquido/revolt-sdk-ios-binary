Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  s.name         = "Revolt"
  s.version      = "1.0.0"
  s.summary      = "Revolt - user tracking library"

  # This description is used to generate tags and improve search results.
  s.description  = <<-DESC
  Revolt is a framework for user activity tracking for iOS
                   DESC

  s.homepage     = "https://www.miquido.com"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.license      = { :type => "Apache", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.author             = { "jacekgrygiel" => "jacek.grygiel@miquido.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  s.platform     = :ios, "10.0"

  s.source = { :http => 'https://github.com/miquido/revolt-sdk-ios-binary/1.0.0/Revolt.zip'}
  s.ios.vendored_frameworks = 'Revolt.framework'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1', "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES" => "YES" }


end

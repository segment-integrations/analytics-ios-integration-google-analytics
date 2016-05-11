Pod::Spec.new do |s|
  s.name             = "Segment-GoogleAnalytics"
  s.version          = "1.1.1"
  s.summary          = "Google Analytics Integration for Segment's analytics-ios library."

  s.description      = <<-DESC
                       Analytics for iOS provides a single API that lets you
                       integrate with over 100s of tools.

                       This is the Google Analytics integration for the iOS library.
                       DESC

  s.homepage         = "http://segment.com/"
  s.license          =  { :type => 'MIT' }
  s.author           = { "Segment" => "friends@segment.com" }
  s.source           = { :git => "https://github.com/segment-integrations/analytics-ios-integration-google-analytics.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/segment'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.dependency 'Analytics', '~> 3.0.0'
  s.dependency 'GoogleAnalytics', '~> 3.14'

  s.subspec 'GoogleIDFASupport' do |idfa|
    # This will get bundled unless a subspec is specified
    idfa.dependency 'GoogleIDFASupport', '~> 3.14'
  end

  s.subspec 'Core' do |core|
    # For users who don't want to bundle GoogleIDFASupport
    # If a user specified Segment-GoogleAnalytics/Core, we won't bundle IDFA
  end
end

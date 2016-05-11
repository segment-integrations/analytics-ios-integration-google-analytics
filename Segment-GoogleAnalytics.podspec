Pod::Spec.new do |s|
  s.name             = "Segment-GoogleAnalytics"
  s.version          = "1.0.1"
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

  s.default_subspec = 'NoIDFA'

  s.dependency 'Analytics', '~> 3.0.0'
  s.dependency 'GoogleAnalytics', '~> 3.14'

  s.subspec 'NoIDFA' do |noidfa|
  # subspec for users who don't want the IDFA Support
  end

  s.subspec 'GoogleIDFASupport' do |idfa|
    idfa.xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -SEGMENT_IDFA' }
    idfa.dependency 'GoogleIDFASupport', '~> 3.14'
  end
end

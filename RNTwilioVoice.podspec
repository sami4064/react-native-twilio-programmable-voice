require 'json'

spec = JSON.load(File.read(File.expand_path("./package.json", __dir__)))

Pod::Spec.new do |s|
  s.name         = "RNTwilioVoice"
  s.version      = spec['version']
  s.summary      = spec['description']
  s.authors      = spec['author']['name']
  s.homepage     = spec['homepage']
  s.license      = spec['license']
  s.platform     = :ios, "10"

  s.source_files = [ "ios/RNTwilioVoice/*.h", "ios/RNTwilioVoice/*.m"]
  s.source = {:path => "./RNTwilioVoice"}

  s.dependency 'React'
  s.dependency 'TwilioVoice', '~> 5.1.1'
  # s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/TwilioVoice' }
  # s.frameworks   = 'TwilioVoice'
end
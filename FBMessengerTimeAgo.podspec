Pod::Spec.new do |s|
  s.name             = 'FBMessengerTimeAgo'
  s.version          = '1.0.0'
  s.summary          = 'Facebook Messenger time ago style format'
  s.homepage         = 'https://github.com/rad182/FBMessengerTimeAgo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Royce Dy' => 'rady182@me.com' }
  s.source           = { :git => 'https://github.com/rad182/FBMessengerTimeAgo.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'FBMessengerTimeAgo/*'
end

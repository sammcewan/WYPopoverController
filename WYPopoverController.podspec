Pod::Spec.new do |s|
  s.name         = 'WYPopoverController'
  s.version      = '0.3.9'
  s.summary      = 'An iOS Popover for iPhone and iPad. Very customizable.'
  s.description  = <<-DESC
                    WYPopoverController is for the presentation of content in popover on iPhone / iPad devices. Very customizable.
                   DESC
  s.homepage     = 'https://github.com/sammcewan/WYPopoverController'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Nicolas CHENG' => 'nicolas.cheng.dev@gmail.com', 'Sam McEwan' => 'me@sammcewan.co.nz', 'Vitaly Samoylik' => 'vitalys@gmail.com' }

  s.source       = { :git => 'https://github.com/sammcewan/WYPopoverController.git', :tag => '0.3.9' }

  s.requires_arc = true

  s.ios.deployment_target = '6.0'

  s.subspec 'Core' do |core|
  core.source_files = 'WYPopoverController/*.{h,m}'
    core.frameworks = 'QuartzCore', 'UIKit', 'CoreGraphics'
  end

  s.subspec 'AppExtension' do |app_extension|
    app_extension.dependency 'WYPopoverController/Core'
    app_extension.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) WY_APP_EXTENSIONS=1' }
  end
end

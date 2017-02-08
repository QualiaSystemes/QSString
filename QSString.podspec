Pod::Spec.new do |s|
  s.name             = 'QSString'
  s.version          = '0.0.1'
  s.summary          = 'Provide Strings utilities'
  s.description      = <<-DESC
QSString provide Strings utilities
@see README.md to have more details
                       DESC

  s.homepage         = 'https://github.com/QualiaSystemes/QSString'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'QualiaSystemes' => 'technique@qualia.fr' }
  s.source           = { :git => 'https://github.com/QualiaSystemes/QSString.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'QSString/Classes/**/*'

  s.frameworks = 'UIKit'
  s.module_name = 'QSString'
end

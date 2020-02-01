
Pod::Spec.new do |s|
  s.name             = 'CircularAnimatingProgressView'
  s.version          = '0.0.2.2'
  s.summary          = 'Project Circular Progress View'
  s.swift_versions  = '4.2'
  s.description      = <<-DESC
This is Circular Progress View frame work to animate the progress framework
                       DESC
 
  s.homepage         = 'https://github.com/vinaykiranMobileDev/CircularProgressView.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vinay' => 'vinay1993kiran@gmail.com' }
  s.source           = { :git => 'https://github.com/vinaykiranMobileDev/CircularProgressView.git', :tag => s.version }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'CircularAnimatingProgressView/**/*.{swift,h,m}'
 
end

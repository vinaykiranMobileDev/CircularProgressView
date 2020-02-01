
Pod::Spec.new do |spec|

  spec.name         = 'CircularProgressView'
  spec.version      = '0.0.1'
  spec.summary      = 'Circular Progress View'

  spec.description  = <<-DESC
	Circular Progress View frame work to animate the progress 
                   DESC

 spec.homepage     = 'https://github.com/vinaykiranMobileDev'

 spec.license      = { :type => 'MIT', :file => 'LICENSE' }



  spec.authors             = { 'vinaykiran' => 'vinay.kiran1993@gmail.com' }


 spec.ios.deployment_target = '10.0'
 s.swift_version = '4.0'

 spec.source	= { :git => 'https://github.com/vinaykiranMobileDev/CircularProgressView.git', :tag => '0.0.1' }
 spec.source_files  = 'CircularProgressView/**/*.{h,m}'

end

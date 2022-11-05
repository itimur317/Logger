Pod::Spec.new do |spec|
  
  spec.name         = "Logger"
  spec.version      = "0.0.1"
  spec.summary      = "Very useful logger"
  spec.homepage     = "https://github.com/itimur317/Logger"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Timur" => "itimur317@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = '14.0'
  spec.source = {
    :git => "https://github.com/itimur317/Logger.git",
    :tag => "#{spec.version}"
  }
  spec.source_files = "Logger/**/*.{h,swift}"
  spec.requires_arc = true
  spec.swift_versions = "5.0"

end


 

Pod::Spec.new do |s|
  s.name         = "DMFunctionalUnit"
  s.version      = "1.0.0"
  s.summary      = "拆分贷嘛工具类"
  s.description  = <<-DESC
                        拆分工具类，便于复用
                   DESC
  s.homepage     = "https://github.com/YRDGroup/DMFunctionalUnit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Agoer" => "https://github.com/Agoer" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/YRDGroup/DMFunctionalUnit.git",  :branch => "master", :tag => "1.0.0" }
  s.source_files  = "DMFunctionalUnit", "DMFunctionalUnit/**/*.{h,m}"
  s.requires_arc = true
end
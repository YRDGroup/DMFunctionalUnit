Pod::Spec.new do |s|
  s.name         = 'DMFunctionalUnit'
  s.version      = '1.0.1'
  s.summary      = '拆分贷嘛工具类'
  s.homepage     = 'https://github.com/YRDGroup/DMFunctionalUnit'
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { 'Agoer' => '10915819@qq.com' }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source       = {
      :git => 'https://github.com/YRDGroup/DMFunctionalUnit.git',
      :tag => s.version.to_s
  }
  s.source_files = 'DMFunctionalUnit/**/*.{c,h,m}'
end
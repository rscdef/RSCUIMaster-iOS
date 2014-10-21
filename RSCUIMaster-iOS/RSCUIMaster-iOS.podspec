Pod::Spec.new do |s|
  s.name     = 'RSCUIMaster-iOS'
  s.version  = '1.0'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'This is an open source project to reduce the burden on UI implements for iOS developers.'
  s.homepage = 'http://uimaster.org'
  s.author   = { ‘Andy Cheng' => ‘rscdef@gmail.com' }
  s.source   = { :git => 'https://github.com/rscdef/RSCUIMaster-iOS.git', :tag => s.version.to_s }

  s.description = 'This is an open source project to reduce the burden on UI implements for iOS developers.'

  s.source_files = 'Public/*.{h,m}’
  s.requires_arc = true
end

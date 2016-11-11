Pod::Spec.new do |s|
  s.name             = "GithubSwift"
  s.summary          = "Unofficial Github API client in Swift"
  s.version          = "0.5.0"
  s.homepage         = "https://github.com/onmyway133/Github.swift"
  s.license          = 'MIT'
  s.author           = { "Khoa Pham" => "onmyway133@gmail.com" }
  s.source           = {
    :git => "https://github.com/onmyway133/Github.swift.git",
    :tag => s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/onmyway133'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'

  s.requires_arc = true
  s.ios.source_files = 'Sources/**/*'
  s.osx.source_files = 'Sources/**/*'

  # s.ios.frameworks = 'UIKit', 'Foundation'
  # s.osx.frameworks = 'Cocoa', 'Foundation'

  s.dependency 'Tailor'
  s.dependency 'RxSwift', '~> 3.0'
  s.dependency 'Alamofire', '~> 4.0.1'
  s.dependency 'ISO8601', '~> 0.5'
  s.dependency 'Construction'

end

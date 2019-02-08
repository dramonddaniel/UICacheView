Pod::Spec.new do |s|

  s.name                    = "UICacheView"
  s.version               = "1.0.0"
  s.summary               = "Allow your users to save their mobile data by caching each and every image they scroll past."
  s.description           = "This pod allows users to load images into a UIImageView directly from a URL. Once the image has been fetched, it will then cache that image to the device, so the user will not have to use their data plan to reload that same image."
  s.homepage              = "https://github.com/dramonddaniel/UICacheView"
  s.license               = "MIT"
  s.author                = { "Daniel Dramond" => "dramonddaniel@gmail.com" }
  s.platform              = :ios, "11.0"
  s.swift_version         = "4.2"
  s.pod_target_xcconfig   = { "SWIFT_VERSION" => "4.2" }
  s.ios.deployment_target = "10.0"
  s.source                = { :git => "https://github.com/dramonddaniel/UICacheView.git", :tag => "1.0.0" }
  s.source_files          = "UICacheView/UICacheView/**/*.{h,m,swift}"
  s.exclude_files         = "UICacheView/*.plist"

end

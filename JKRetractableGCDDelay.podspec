#
#  Be sure to run `pod spec lint JKAutoReleaseObject.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "JKRetractableGCDDelay"
  s.version      = "1.0.0"
  s.summary      = "JKRetractableGCDDelay可取消GCD延迟操作"

  s.homepage     = "https://github.com/XiFengLang/JKRetractableGCDDelay"
  
  s.license      = "MIT"
  s.author       = { "XiFengLang" => "lang131jp@vip.qq.com" }
  s.source       = { :git => "https://github.com/XiFengLang/JKRetractableGCDDelay.git", :tag => "#{s.version}" }

  s.platform     = :ios,"8.0"
  s.framework    = "UIKit"
  s.requires_arc = true

  s.source_files = "src/*.{h,m}"

end
require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNOS"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/brunobar79/react-native-os.git", :tag => "master" }
  s.source_files  = "RNOS/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end

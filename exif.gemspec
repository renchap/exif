# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exif/version'

Gem::Specification.new do |spec|
  spec.name          = "exif"
  spec.version       = Exif::VERSION
  spec.authors       = ["Jian Weihang"]
  spec.email         = ["tonytonyjan@gmail.com"]
  spec.extensions    = ["ext/exif/extconf.rb"]
  spec.summary       = %q{Wrapper of libexif}
  spec.description   = %q{Wrapper of libexif}
  spec.homepage      = "https://github.com/tonytonyjan/exif"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
end

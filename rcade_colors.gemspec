# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "rcade_colors"
  spec.version       = "0.0.4"
  spec.authors       = ["Andrew Havens"]
  spec.email         = ["email@andrewhavens.com"]
  spec.description   = %q{Provides additional CSS Hex value and opacity support for Gosu.}
  spec.summary       = %q{Provides additional CSS Hex value and opacity support for Gosu.}
  spec.homepage      = "https://github.com/ruby-rcade/rcade_colors"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "gosu"
  spec.add_dependency "color"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

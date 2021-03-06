# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adif/version'

Gem::Specification.new do |spec|
  spec.name          = "adif"
  spec.version       = ADIF::VERSION
  spec.authors       = ["cho45"]
  spec.email         = ["cho45@lowreal.net"]
  spec.summary       = %q{ADIF Parser/Writer}
  spec.description   = %q{ADIF (Amateur Data Interchange Format) is an open standard for exchange of data between ham radio software.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

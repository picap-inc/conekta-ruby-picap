# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conekta/version'

Gem::Specification.new do |spec|
  spec.name          = "conekta"
  spec.version       = Conekta::VERSION
  spec.authors       = ["MauricioMurga"]
  spec.email         = ["mauricio@conekta.io"]
  spec.description   = %q{Ruby library for https://api.conekta.io}
  spec.summary       = %q{This library provides https://api.conekta.io operations}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  #spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "faraday"
  spec.add_development_dependency "json"
  spec.add_development_dependency "sys-uname"
end
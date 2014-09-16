# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'e_m_typographer/version'

Gem::Specification.new do |spec|
  spec.name          = "e_m_typographer"
  spec.version       = EMTypographer::VERSION
  spec.authors       = ['Anton Kolmakov', 'Timur Khafizov']
  spec.description   = %q{Allows you to format yout text using http://mdash.ru API.}
  spec.summary       = %q{Allows you to format yout text using http://mdash.ru API.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rspec'
end

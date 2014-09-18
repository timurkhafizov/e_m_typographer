# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'e_m_typographer'
  spec.version       = '1.0.1'
  spec.authors       = ['Anton Kolmakov', 'Timur Khafizov']
  spec.description   = %q{Allows you to format your text using http://mdash.ru API.}
  spec.summary       = %q{Allows you to format your text using http://mdash.ru API.}
  spec.homepage      = 'https://github.com/fishtag/e_m_typographer'
  spec.license       = 'MIT'

  spec.files         = ['lib/e_m_typographer.rb']
  spec.test_files    = spec.files.grep(%r{^(spec)/})

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'codeclimate-test-reporter'
end

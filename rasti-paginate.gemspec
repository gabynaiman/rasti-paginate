# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rasti/paginate/version'

Gem::Specification.new do |spec|
  spec.name          = 'rasti-paginate'
  spec.version       = Rasti::Paginate::VERSION
  spec.authors       = ['Gabriel Naiman']
  spec.email         = ['gnaiman@keepcon.com']
  spec.summary       = 'Will paginate wrapper'
  spec.description   = 'Will paginate wrapper'
  spec.homepage      = 'https://github.com/gabynaiman/rasti-paginate'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'will_paginate', '3.0.7'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end

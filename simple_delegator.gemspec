# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_delegator'

Gem::Specification.new do |gem|
  gem.name          = "simple_delegator"
  gem.version       = SimpleDelegator::VERSION
  gem.authors       = ["Will Farrington"]
  gem.email         = ["wfarr@github.com"]
  gem.description   = %q{Adds simple delegation to all Objects.}
  gem.summary       = %q{Adds simple delegation to all Objects.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "mocha", "~> 0.12.7"
  gem.add_development_dependency "rspec", "~> 2.11"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'edo/version'

Gem::Specification.new do |spec|
  spec.name          = "edo"
  spec.version       = Edo::VERSION
  spec.authors       = ["Bodacious"]
  spec.email         = ["gavin@katanacode.com"]

  spec.summary       = %q{Katana's internal code-police}
  spec.description   = %q{Write better code–together–by using these reports to make sure
  the changes you're committing are healthy}
  spec.homepage      = "http://github.com/katanacode/edo"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sandi_meter"
  spec.add_dependency "rubycritic"
  spec.add_dependency "rubocop"
  spec.add_dependency "brakeman"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

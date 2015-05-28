# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'if_true_if_false/version'

Gem::Specification.new do |spec|
  spec.name          = "if_true_if_false"
  spec.version       = IfTrueIfFalse::VERSION
  spec.authors       = ["Gabriel Torello"]
  spec.email         = ["gabriel128@gmail.com"]

  spec.summary       = %q{Ruby implementation of if_true and if_false messages.}
  spec.description       = %q{Emulate as similar as possible the smalltalk ifTrue and ifFalse messages.}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
end

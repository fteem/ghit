# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ghit/version'

Gem::Specification.new do |spec|
  spec.name          = "ghit"
  spec.version       = Ghit::VERSION
  spec.authors       = ["Ile Eftimov"]
  spec.email         = ["ileeftimov@gmail.com"]
  spec.summary       = %q{More git commands for your enjoyment.}
  spec.description   = %q{Ghit is a gem that adds more git commands for a better command line Git(hub) experience.}
  spec.homepage      = "https://github.com/fteem/ghit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'github_api', '~> 0.12'
  spec.add_dependency 'rainbow', '~> 2.0'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency 'rspec', "~> 3.1"
end

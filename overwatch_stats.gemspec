# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'overwatch/version'

Gem::Specification.new do |spec|
  spec.name          = "overwatch-stats"
  spec.version       = Overwatch::VERSION
  spec.authors       = ["camdenbrown"]
  spec.email         = ["camdenebrown@gmail.com"]

  spec.summary       = %q{A Ruby Gem that returns Blizzard Overwatch player stats.}
  spec.description   = %q{You can retrieve profile stats, specific hero stats, cumulative hero stats, achievements, and patch notes from Blizzard Overwatch web scraping.}
  spec.homepage      = "https://github.com/camdenbrown/overwatch_stats"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "httparty", "0.13.7"
end

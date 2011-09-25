# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "stylus-source"
  s.version     = "0.15.4"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TJ Holowaychuk"]
  s.email       = ["tj@vision-media.ca"]
  s.homepage    = "https://github.com/railsjedi/ruby-stylus-source"
  s.summary     = %q{JS source code for Stylus.js}
  s.description = %q{Robust, expressive, and feature-rich CSS superset. This gem packages up stylus for use with the stylus gem.}

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end

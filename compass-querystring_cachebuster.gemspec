# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "compass/querystring_cachebuster/version"

Gem::Specification.new do |s|
  s.name        = "compass-querystring_cachebuster"
  s.version     = Compass::QuerystringCachebuster::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Micah Geisel"]
  s.email       = ["micah@botandrose.com"]
  s.homepage    = "http://github.com/botandrose/compass-querystring_cachebuster"
  s.summary     = %q{Adds Rails-style querystring cachebusters to compass sprites.}
  s.description = %q{Adds Rails-style querystring cachebusters to compass sprites.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

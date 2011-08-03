# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-cas/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-cas"
  s.version     = Omniauth::Cas::VERSION
  s.authors     = ["Matt Campbell"]
  s.email       = ["matt@soupmatt.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "omniauth-cas"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'oa-core', '>= 0.2.6'
  s.add_dependency 'rack', '>= 1.1'
  s.add_dependency 'nokogiri', '~> 1.5.0'

  s.add_development_dependency 'bundler', '~> 1.0.15'
  s.add_development_dependency 'rake', '>= 0.8'
  s.add_development_dependency 'rspec', '~> 2.6.0'
  s.add_development_dependency 'rack-test', '~> 0.6.1'
  s.add_development_dependency 'webmock', '~> 1.6.4'
end

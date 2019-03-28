$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "exlibris/primo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "exlibris-primo"
  s.version     = Exlibris::Primo::VERSION
  s.authors     = ["Scot Dalton"]
  s.email       = ["scotdalton@gmail.com", "barnaby.alter@gmail.com"]
  s.homepage    = "https://github.com/NYULibraries/exlibris-primo"
  s.summary     = "Library to work with Exlibris' Primo discovery system."
  s.description = "Library to work with Exlibris' Primo discovery system. Does not require Rails."
  s.license     = 'MIT'

  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'require_all', '~> 1.3'
  # Leverage ActiveSupport core extensions.
  s.add_dependency 'activesupport', '>= 3.2', '< 6'
  s.add_dependency 'nokogiri', '>= 1.7'
  s.add_dependency 'json', '>= 1.8.0', '< 3'
  s.add_dependency 'savon', '>= 2.11'
  s.add_dependency 'iso-639', '~> 0.2.0'
  s.add_development_dependency 'rake', '>= 10.1'
  s.add_development_dependency 'vcr', '> 2'
  s.add_development_dependency 'webmock', '>= 1.20'
  s.add_development_dependency 'pry', '~> 0'
  s.add_development_dependency 'minitest', '>= 4.7'
  s.add_development_dependency 'rack', '~> 1.6'
  s.add_development_dependency 'test-unit', '~> 3.2'
end

source 'http://rubygems.org'

# Declare your gem's dependencies in exlibris-primo.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

platforms :jruby do
  gem 'jruby-openssl', '~> 0.9.0'
  gem 'nokogiri', '= 1.8.1'
  gem 'minitest', '= 4.7.5'
  gem 'savon', '= 2.11.0'
  gem 'rake', '~> 10.1'
end

group :test do
  gem 'coveralls', '~> 0.7.0', :require => false
end

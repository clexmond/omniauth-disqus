# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-disqus/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'omniauth-disqus'
  gem.authors     = [ 'Chris Lexmond' ]
  gem.email       = [ 'chris@chrislexmond.com' ]
  gem.description = 'A Disqus OAuth2 strategy for OmniAuth'
  gem.summary     = 'A Disqus OAuth2 strategy for OmniAuth'
  gem.homepage    = 'https://rubygems.org/gems/omniauth-disqus'
  gem.license     = 'MIT'

  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'
  gem.required_ruby_version = '>= 1.8.7'

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = [ 'lib' ]
  gem.version       = Omniauth::Disqus::VERSION
end

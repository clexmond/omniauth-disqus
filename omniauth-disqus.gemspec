# frozen_string_literal: true

require File.expand_path('lib/omniauth-disqus/version', __dir__)

Gem::Specification.new do |gem|
  gem.name        = 'omniauth-disqus'
  gem.authors     = ['Chris Lexmond']
  gem.email       = ['chris@chrislexmond.com']
  gem.description = 'A Disqus OAuth2 strategy for OmniAuth'
  gem.summary     = 'A Disqus OAuth2 strategy for OmniAuth'
  gem.homepage    = 'https://rubygems.org/gems/omniauth-disqus'
  gem.license     = 'MIT'

  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency 'rubocop', '0.84.0'
  gem.required_ruby_version = '>= 1.8.7'

  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.version       = Omniauth::Disqus::VERSION
end

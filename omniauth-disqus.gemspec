# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-disqus/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = [ 'Chris Lexmond' ]
  gem.email         = [ 'chris@chrislexmond.com' ]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.add_runtime_dependency 'omniauth-oauth2'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-disqus"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Disqus::VERSION
end

# Omniauth::Disqus

[![Gem Version](http://img.shields.io/gem/v/omniauth-disqus.svg)][gem]

[gem]: https://rubygems.org/gems/omniauth-disqus

A Disqus OAuth2 strategy for OmniAuth.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-disqus'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-disqus

## Usage

Register your application with Disqus to retrieve a public key and secret key: http://disqus.com/api/applications/

This is an example that you might put into a Rails initializer at `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :disqus, ENV['DISQUS_PUBLIC_KEY'], ENV['DISQUS_SECRET_KEY']
end
```

You can now access the OmniAuth Disqus OAuth2 URL: `/auth/disqus`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create new Pull Request

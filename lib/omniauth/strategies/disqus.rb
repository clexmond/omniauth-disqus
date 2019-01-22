require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Disqus < OmniAuth::Strategies::OAuth2
      option :name, 'disqus'
      option :scope, 'read'

      option :client_options, {
        :site          => 'https://disqus.com',
        :authorize_url => '/api/oauth/2.0/authorize/',
        :token_url     => '/api/oauth/2.0/access_token/'
        }

      uid { access_token.params['user_id'] }

      info do
        {
          :name        => raw_info['name'],
          :nickname    => raw_info['username'],
          :location    => raw_info['location'],
          :description => raw_info['about'],
          :image       => raw_info['avatar']['small']['permalink'],
          :urls        => {
            'profileUrl' => raw_info['profileUrl']
          }
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def callback_url
        full_host + script_name + callback_path
      end
      
      def raw_info
        url    = '/api/3.0/users/details.json'
        params = {
          'api_key'      => access_token.client.id,
          'access_token' => access_token.token
        }

        @raw_info ||= access_token.get(url, :params => params).parsed['response']
      end
    end
  end
end

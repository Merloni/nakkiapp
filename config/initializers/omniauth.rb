require 'json'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Tekis < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "tekis"

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {:site => "https://new.tko-aly.fi",
                               :authorize_url => "/oauth/authorize/"}

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid{ request.params['user_id'] }

      info do
        {
          'role' => raw_info['role'],
          'username' => raw_info['username']
        }
      end

      def raw_info
        @raw_info ||= JSON.load(access_token.get('/me.json')).body
      end
    end
  end
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tekis, "GGEOdaBk88rRFJaCLmnDJLc3ZKkztVvi6D6lT51B", "V3gC1qxw5VIzC0fpGF7Jq3bm6qbWB7IHrBMgKi7vKkGLJZmgYgtqYV6dCY2kPeJY07TN0p7TM2ndpjAA7TJVTOxweFV04Y0zJcCp4wvig1B633UeYTrQN7Os2yV9Zz2Z"
end

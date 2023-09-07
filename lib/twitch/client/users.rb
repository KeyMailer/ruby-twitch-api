# frozen_string_literal: true

module Twitch
  class Client
    ## API method for users
    module Users
      def get_users_follows(options = {})
        raise APIError(400, 'This API is no longer available: See Channels.get_channel_followers')
      end

      def get_users(options = {})
        initialize_response User, get('users', options)
      end

      def update_user(options = {})
        initialize_response User, put('users', options)
      end
    end
  end
end

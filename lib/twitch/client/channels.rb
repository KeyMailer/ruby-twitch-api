# frozen_string_literal: true

module Twitch
  class Client
    ## API method for channels
    module Channels

      # Gets channel information for users.
      # https://dev.twitch.tv/docs/api/reference#get-channel-information
      def get_channels(options = {})
        require_access_token do
          initialize_response Channel, get('channels', options)
        end
      end

      # Returns a list of channels that match the query
      # https://dev.twitch.tv/docs/api/reference#search-channels
      def search_channels(options = {})
        initialize_response Channel, get('search/channels', options)
      end

      # Modifies channel information for users.
      # https://dev.twitch.tv/docs/api/reference#modify-channel-information
      def modify_channel(options)
        initialize_response NilClass, patch('channels', options)
      end

      # Gets a list of users who have editor permissions for a specific channel
      # https://dev.twitch.tv/docs/api/reference#get-channel-editors
      def get_editors(options = {})
        require_access_token do
          initialize_response ChannelEditor, get('channels/editors', options)
        end
      end

    end
  end
end

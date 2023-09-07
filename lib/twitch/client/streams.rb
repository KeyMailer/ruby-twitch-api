# frozen_string_literal: true

module Twitch
  class Client
    ## API method for streams
    module Streams

      # https://dev.twitch.tv/docs/api/reference#create-stream-marker
      def create_stream_marker(options = {})
        initialize_response StreamMarker, post('streams/markers', options)
      end

      # https://dev.twitch.tv/docs/api/reference#get-stream-markers
      def get_stream_markers(options = {})
        initialize_response StreamMarkerResponse, get('streams/markers', options)
      end

      # https://dev.twitch.tv/docs/api/reference#get-streams
      def get_streams(options = {})
        initialize_response Stream, get('streams', options)
      end
    end
  end
end

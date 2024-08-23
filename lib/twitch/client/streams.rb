# frozen_string_literal: true

module Twitch
  class Client
    ## API method for streams
    module Streams
      def create_stream_marker(options = {})
        initialize_response StreamMarker, post('streams/markers', options)
      end

      def get_stream_markers(options = {})
        initialize_response StreamMarkerResponse, get('streams/markers', options)
      end

      def get_streams(options = {})
        initialize_response Stream, get('streams', options)
      end

      ## https://discuss.dev.twitch.tv/t/deprecation-of-the-helix-get-streams-metadata-endpoint/26407
      def get_streams_metadata(options = {})
        raise APIError(400, 'This API is no longer available.')
      end

      def get_stream_key(options = {})
        initialize_response nil, get('streams/key', options)
      end
    end
  end
end

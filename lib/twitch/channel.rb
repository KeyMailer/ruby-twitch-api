# frozen_string_literal: true

module Twitch
  # Data object for Twitch channels
  class Channel
    DATE_ATTRIBUTES = %i[started_at].freeze

    # ID of the channel.
    attr_reader :broadcaster_id
    alias_attribute :id, :broadcaster_id
    # Unformatted (lowercase) channelname of the channel.
    attr_reader :broadcaster_login
    # Formatted channelname of the channel.
    attr_reader :broadcaster_name
    alias_attribute :display_name, :broadcaster_name
    # Broadcaster Language field from the Channels service
    attr_reader :broadcaster_language
    # Current game ID being played on the channel.
    attr_reader :game_id
    # Name of the game being played on the channel.
    attr_reader :game_name
    # Title of the stream.
    attr_reader :title

    # Stream delay in seconds (Twitch Partner feature) -  get_channel
    attr_reader :delay

    # Indicates if the channel is currently live. -  search channels
    attr_reader :is_live
    # Tag IDs that apply to the stream (when a channel is live) -  search channels
    attr_reader :tag_ids
    # Thumbnail URL of the stream -  search channels
    attr_reader :thumbnail_url
    # UTC timestamp (when a channel is live) -  search channels
    attr_reader :started_at

    def initialize(attributes = {})
      attributes.each do |key, value|
        if DATE_ATTRIBUTES.include?(key.to_sym)
          instance_variable_set("@#{key}", Time.parse(value)) unless value.nil? || value.empty?
        else
          instance_variable_set("@#{key}", value)
        end
      end
    end
  end
end

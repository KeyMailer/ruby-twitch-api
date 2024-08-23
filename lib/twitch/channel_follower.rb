# frozen_string_literal: true

module Twitch
  # Represents a relationship of one user following another.
  class ChannelFollower

    # An ID that uniquely identifies the user that's following the broadcaster.
    attr_reader :user_id
    # The userss login name.
    attr_reader :user_login
    # The user's display name.
    attr_reader :user_name
    # The UTC timestamp when the user started following the broadcaster.
    attr_reader :followed_at

    def initialize(attributes = {})
      attributes.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end

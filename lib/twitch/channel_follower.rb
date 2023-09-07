# frozen_string_literal: true

module Twitch
  # Represents a relationship of one user following another.
  class ChannelFollowers

    DATE_ATTRIBUTES = %i[followed_at].freeze

    # An ID that uniquely identifies the user that’s following the broadcaster.
    attr_reader :user_id
    # The user’s login name.
    attr_reader :user_login
    # The user’s display name.
    attr_reader :user_name
    # The UTC timestamp when the user started following the broadcaster.
    attr_reader :followed_at

    def initialize(attributes = {})
      attributes.each do |key, value|
        if DATE_ATTRIBUTES.include?(key.to_sym)
          instance_variable_set("@#{key}", Time.parse(value)) unless value.blank?
        else
          instance_variable_set("@#{key}", value)
        end
      end
    end
  end
end

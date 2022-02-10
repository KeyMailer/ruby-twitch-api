# frozen_string_literal: true

module Twitch
  # Data object for Twitch users
  class User
    DATE_ATTRIBUTES = %i[created_at].freeze

    # ID of the user.
    attr_reader :id
    # Unformatted (lowercase) username of the user.
    attr_reader :login
    # Formatted username of the user.
    attr_reader :display_name
    # Represents a special role of a user.
    # (global mod, admin, staff)
    attr_reader :type
    # Represents a special broadcaster role of a user.
    # (partner, affiliate)
    attr_reader :broadcaster_type
    # Description/biographical info of a user.
    attr_reader :description
    # URL to the user's profile image.
    attr_reader :profile_image_url
    # URL to the image displayed in the video box
    # when the stream is offline.
    attr_reader :offline_image_url
    # Total number of visits to the user's stream page.
    attr_reader :view_count
    # Date when the user was created..
    attr_reader :created_at

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

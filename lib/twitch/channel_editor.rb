# frozen_string_literal: true

module Twitch
  # Data object for Twitch channel editors
  class ChannelEditor
    # User ID of the editor.
    attr_reader :user_id
    # Display name of the editor.
    attr_reader :user_name
    # Date and time the editor was given editor permissions.
    attr_reader :created_at

    def initialize(attributes = {})
      attributes.each do |key, value|
        instance_variable_set "@#{key}", value
      end
    end
  end
end

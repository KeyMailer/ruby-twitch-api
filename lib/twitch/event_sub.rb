# frozen_string_literal: true

module Twitch
  # subscription objects
  class EventSub
    # An ID that identifies the subscription.
    attr_reader :id
    # The subscription's status
    attr_reader :status
    # The subscription's type.
    attr_reader :type
    # The version of the subscription type.
    attr_reader :version
    # The subscription's parameter values.
    attr_reader :condition
    # The RFC 3339 timestamp indicating when the subscription was created.
    attr_reader :created_at
    # The transport details used to send you notifications.
    attr_reader :transport
    # The amount that the subscription counts against your limit. Learn More
    attr_reader :cost

    def initialize(attributes = {})
      attributes.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end

module Twitch
  class Client
    ## API method for EventSub Subscriptions
    module EventSubs

      # Get EventSub Subscriptions
      # https://dev.twitch.tv/docs/api/reference#get-eventsub-subscriptions
      def get_eventsub_subscriptions(options = {})
        initialize_response EventSub, get('eventsub/subscriptions', options)
      end

      # Create EventSub Subscription
      # https://dev.twitch.tv/docs/api/reference#create-eventsub-subscription
      def create_eventsub_subscription(options)
        initialize_response EventSub, post('eventsub/subscriptions', options)
      end

      # Delete EventSub Subscription
      # https://dev.twitch.tv/docs/api/reference#delete-eventsub-subscription
      def delete_eventsub_subscription(options)
        initialize_response NilClass, delete('eventsub/subscriptions', options)
      end
    end
  end
end

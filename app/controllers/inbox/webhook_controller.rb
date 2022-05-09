class Inbox::WebhookController < ApplicationController
  include Mandrill::Rails::WebHookProcessor
  ignore_unhandled_events!
  before_action :authenticate_incoming_request

  # To completely ignore unhandled events (not even logging), uncomment this line
  # ignore_unhandled_events!

  # If you want unhandled events to raise a hard exception, uncomment this line
  # unhandled_events_raise_exceptions!

  # To enable authentication, uncomment this line and set your API key.
  # It is recommended you pull your API keys from environment settings,
  # or use some other means to avoid committing the API keys in your source code.
  # authenticate_with_mandrill_keys! 'YOUR_MANDRILL_WEBHOOK_KEY'

  def handle_inbound(event_payload)
    create_event(event_payload)
  end

  def handle_click(event_payload)
    create_event(event_payload)
  end

  def handle_open(event_payload)
    create_event(event_payload)
  end

  private
  def create_event(event_payload)
    event = event_payload['event']
    time_stamp = event_payload['ts']
    MessageEvent.create(event_name: event, ts: time_stamp)
  end
  def authenticate_incoming_request
    MANDRILL_APP_CONFIG["events"].each do |key, value|
      authenticate_with_mandrill_keys! value
    end

  end
end

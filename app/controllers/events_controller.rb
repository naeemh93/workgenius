class EventsController < ApplicationController
  def index
    @events = MessageEvent.all
  end
end

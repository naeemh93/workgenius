App.messageevent = App.cable.subscriptions.create "MessageeventChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#events').prepend "<div class='event'>#{data.message}</div>"
    # Called when there's incoming data on the websocket for this channel

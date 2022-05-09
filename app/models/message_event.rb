class MessageEvent < ApplicationRecord
  after_create_commit { MessageEventBroadcastJob.perform_later self }

  typed_store :msg do |message|
    message.string :_id
    message.integer :ts
    message.string :email, default: false, blank: false
  end
end

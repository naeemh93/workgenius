class CreateMessageEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :message_events do |t|
      t.string :event_name
      t.integer :ts
      t.string :url
      t.string :ip
      t.string :_id

      t.timestamps
    end
  end
end

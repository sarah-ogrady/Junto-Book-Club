class DeleteChatroom < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :chatroom, foreign_key: true
    add_reference :messages, :swap, foreign_key: true
    drop_table :chatrooms
  end
end

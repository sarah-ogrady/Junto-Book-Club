class AddSwapIdToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :swap_id, :integer
  end
end

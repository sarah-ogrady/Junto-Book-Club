class AddUser2ToSwaps < ActiveRecord::Migration[6.0]
  def change
    add_reference :swaps, :user_2, null: false, foreign_key: { to_table: :users }
  end
end

class AddUserToSwaps < ActiveRecord::Migration[6.0]
  def change
    add_reference :swaps, :user, null: false, foreign_key: true
  end
end

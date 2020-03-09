class AddBookclubidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :bookclub, foreign_key: true
  end
end

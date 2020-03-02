class CreateSwaps < ActiveRecord::Migration[6.0]
  def change
    create_table :swaps do |t|
      t.integer :book_1_id
      t.integer :book_2_id

      t.timestamps
    end
  end
end

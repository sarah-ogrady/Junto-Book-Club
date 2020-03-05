class AddCompleteToSwaps < ActiveRecord::Migration[6.0]
  def change
    add_column :swaps, :complete, :boolean, default: false
  end
end

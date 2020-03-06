class AddRejectedToSwaps < ActiveRecord::Migration[6.0]
  def change
    add_column :swaps, :rejected, :boolean, default: false
  end
end

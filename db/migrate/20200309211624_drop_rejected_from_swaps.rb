class DropRejectedFromSwaps < ActiveRecord::Migration[6.0]
  def change
    remove_column :swaps, :rejected
  end
end

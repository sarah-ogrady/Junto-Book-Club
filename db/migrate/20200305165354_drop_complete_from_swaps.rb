class DropCompleteFromSwaps < ActiveRecord::Migration[6.0]
  def change
    remove_column :swaps, :complete
  end
end

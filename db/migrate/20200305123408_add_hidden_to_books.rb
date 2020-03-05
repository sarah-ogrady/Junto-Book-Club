class AddHiddenToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :hidden, :boolean, default: false
  end
end

class ChangeIsbnFromIntegerToStringInBooks < ActiveRecord::Migration[6.0]
  def change
    change_column :books, :isbn, :string
  end
end

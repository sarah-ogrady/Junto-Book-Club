class AddDescriptionToBookclubs < ActiveRecord::Migration[6.0]
  def change
    add_column :bookclubs, :description, :string
  end
end

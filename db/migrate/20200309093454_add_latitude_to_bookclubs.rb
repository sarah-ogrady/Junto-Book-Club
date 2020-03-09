class AddLatitudeToBookclubs < ActiveRecord::Migration[6.0]
  def change
    add_column :bookclubs, :latitude, :float
  end
end

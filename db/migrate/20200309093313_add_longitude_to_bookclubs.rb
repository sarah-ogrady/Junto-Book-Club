class AddLongitudeToBookclubs < ActiveRecord::Migration[6.0]
  def change
    add_column :bookclubs, :longitude, :float
  end
end

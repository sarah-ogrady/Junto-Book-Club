class AddImageToBookclubs < ActiveRecord::Migration[6.0]
  def change
    add_column :bookclubs, :image_url, :string
  end
end

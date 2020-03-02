class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.text :description
      t.string :genre
      t.integer :isbn
      t.string :author_name

      t.timestamps
    end
  end
end

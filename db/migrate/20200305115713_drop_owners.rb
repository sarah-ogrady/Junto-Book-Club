class DropOwners < ActiveRecord::Migration[6.0]
  def up
    drop_table :owners
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end

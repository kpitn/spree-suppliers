class SupplierSetup < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.string :name
      t.string :initial, :limit => 5
      t.timestamps
    end
    add_column :products, :supplier_id, :integer
    add_index :products, :supplier_id
  end

  def self.down
    drop_table :suppliers
    remove_column :products, :supplier_id
  end
end
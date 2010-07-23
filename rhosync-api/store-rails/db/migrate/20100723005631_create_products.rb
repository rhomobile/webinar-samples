class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :price
      t.string :quantity
      t.string :sku

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end

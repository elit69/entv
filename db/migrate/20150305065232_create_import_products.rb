class CreateImportProducts < ActiveRecord::Migration
  def change
    create_table :import_products do |t|
      t.integer :import_id
      t.integer :product_id
      t.integer :product_unit
      t.decimal :price

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.string :company
      t.decimal :price
      t.integer :total

      t.timestamps
    end
  end
end

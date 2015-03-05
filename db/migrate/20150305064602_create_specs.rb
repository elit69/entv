class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.integer :product_id
      t.string :cpu
      t.string :ram
      t.string :vga
      t.string :os
      t.string :storage
      t.string :screen_size
      t.string :battery

      t.timestamps
    end
  end
end

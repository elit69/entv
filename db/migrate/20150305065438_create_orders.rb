class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :status, default: "Pending"
      t.string :order_address
      t.string :order_type
      t.decimal :total, default: 0

      t.timestamps
    end
  end
end

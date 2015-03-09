class AddDefaultValueToOrdersTotal < ActiveRecord::Migration
  def change
    change_column :orders, :total, :decimal, default: true
  end
end

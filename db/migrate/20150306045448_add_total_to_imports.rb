class AddTotalToImports < ActiveRecord::Migration
  def change
    add_column :imports, :total, :decimal, default: 0
  end
end

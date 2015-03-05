class RenameImportProductsPriceToUnitPrice < ActiveRecord::Migration
  def change
    rename_column :import_products, :price, :unit_price
  end
end

class Import < ActiveRecord::Base
  has_many :import_products, inverse_of: :import
  has_many :products, through: :import_products, source: :product

  before_save :add_product_to_stock_and_calculate_total_price

  validates_presence_of :description

  accepts_nested_attributes_for :import_products, allow_destroy: true

  private

    def add_product_to_stock_and_calculate_total_price
      import_products.each do |import_product|
        product = import_product.product
        unit_total = product.total + import_product.product_unit
        product.update_attribute(:total, unit_total)

        self.total += import_product.unit_price * import_product.product_unit
      end
    end
end

class OrderItem < ActiveRecord::Base
  before_save :set_price
  
  belongs_to :order
  belongs_to :product
  
  private
  
    def set_price
      self.price = product.price
    end
end

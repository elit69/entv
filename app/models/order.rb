class Order < ActiveRecord::Base
  before_save :calculate_total
  
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items, source: :product
  
  def order_date
    created_at.strftime "%D"
  end
  
  def deliver_date
    updated_at.strftime "%D"
  end
  
  private
  
    def calculate_total
      amount = 0
      order_items.each do |order_item|
        amount += order_item.product_unit * order_item.price
      end
      self.total = amount
    end
end

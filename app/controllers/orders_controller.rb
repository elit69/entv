class OrdersController < ApplicationController
  def new
    @order = Order.new
    @cart = session[:cart]   
  end
  def create
    @order = Order.new(order_params)
    @cart = session[:cart]       
    if @order.save
      @cart.each do |k,v|
        p=Product.find(k)
        @order.order_items.create!(product: p, product_unit: v, price: p.price)    
      end
    end
    render :index    
  end
  def index
    @orders = Order.all
  end
  private
    def order_params
      params.require(:order).permit(:order_address, :order_type, :total)
    end
end

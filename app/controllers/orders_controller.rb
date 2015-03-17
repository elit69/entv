class OrdersController < ApplicationController
  def new
    @order = Order.new
    @cart = session[:cart]   
  end
  def create
    @order = Order.new(order_params)
    if @order.order_address == "" or @order.order_type == ""
      redirect_to new_order_path, alert: "Order Address and Order Type can't be blank."
    else
      @order.user = current_user
      @cart = session[:cart]       
      if @order.save
        @cart.each do |k,v|
          p=Product.find(k)
          p.total-=v.to_i
          p.save
          @order.order_items.create!(product: p, product_unit: v, price: p.price)    
        end
        @order.save
      end
      session[:cart]={}
      redirect_to orders_path
    end
  end
  def index
    @orders = Order.all
  end
  private
    def order_params
      params.require(:order).permit(:order_address, :order_type, :total)
    end
end

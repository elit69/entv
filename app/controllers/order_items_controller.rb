class OrderItemsController < ApplicationController
  before_action :authenticate_user!
  def create
    new_product=Product.find(params[:id])
    if new_product.total.zero?
      redirect_to new_product, alert: "This product is out of stock. Please try again later." 
    else
      if  session[:cart][params[:id].to_i].nil? || session[:cart][params[:id].to_i].zero?
        session[:cart][params[:id].to_i] = 1
        flash[:success] = "Added Successfully." 
      end
      @cart = session[:cart]   
      render :index
    end     
  end
  def index
    @cart = session[:cart]   
    if @cart.nil? 
      flash.now[:danger] = "Your cart is empty. Please add something." 
    end
  end
  def destroy
    if params[:commit] == "Remove"
      session[:cart].delete params[:id].to_i
      if session[:cart].nil?
        flash.now[:danger] = "Your cart is empty. Please add something." 
      else
        flash[:success] = "Deleted Successfully." 
      end  
      @cart = session[:cart]   
      render :index
    else
      redirect_to new_order_path
    end
  end
end

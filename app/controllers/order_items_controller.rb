class OrderItemsController < ApplicationController
  def create
    session[:cart][params[:id].to_i] = 1 if session[:cart][params[:id].to_i].nil? || session[:cart][params[:id].to_i].zero?
    @cart = session[:cart]   
    flash[:success] = "Successfully Added." 
    render :index
  end
  def index
    @cart = session[:cart]   
    if @cart.nil? 
      flash.now[:danger] = "Your cart is empty. Please add something." 
    end
  end
  def destroy
    render :index
  end
end

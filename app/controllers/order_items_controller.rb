class OrderItemsController < ApplicationController
  before_action :authenticate_user!
  def create
    if session[:cart][params[:id].to_i].nil? || session[:cart][params[:id].to_i].zero?
      session[:cart][params[:id].to_i] = 1
      flash[:success] = "Added Successfully." 
    end     
    @cart = session[:cart]   
    render :index
  end
  def index
    @cart = session[:cart]   
    if @cart.nil? 
      flash.now[:danger] = "Your cart is empty. Please add something." 
    end
  end
  def destroy
    session[:cart].delete params[:id].to_i
    if session[:cart].nil?
      flash.now[:danger] = "Your cart is empty. Please add something." 
    else
      flash[:success] = "Deleted Successfully." 
    end    
    @cart = session[:cart]   
    render :index
  end
end

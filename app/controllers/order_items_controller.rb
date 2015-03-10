class OrderItemsController < ApplicationController
  def create
    session[:cart][params[:id].to_i] = 1 if session[:cart][params[:id].to_i].nil? || session[:cart][params[:id].to_i].zero?
    @cart = session[:cart]    
    render :index
  end
end

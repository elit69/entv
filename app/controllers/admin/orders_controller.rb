class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @orders = Order.all
  end
  
  def show
    @order = Order.find params[:id]
  end
  
  def update
    @order = Order.find params[:id]
    unless @order.update_attribute :status, params[:order][:status]
      render js: "alert('Error while updating status. Please try again.')"
    end
  end
end

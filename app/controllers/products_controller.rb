class ProductsController < ApplicationController
  def index
    if params[:category_id].blank? && params[:company].blank?
      @products = Product.all
    elsif params[:category_id]
      category = Category.find params[:category_id]
      @products = category.products.where "company LIKE ?", "#{params[:company]}%"
    else
      @products = Product.where(company: params[:company])
    end
  end
  
  def show
    @categories = Category.all
    @product = Product.find(params[:id])
    @s = Spec.find_by(product: @product)
    session[:cart] = Hash.new(0) if session[:cart].nil?    
  end
end

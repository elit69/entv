class ProductsController < ApplicationController
  def index
    if params[:company].nil? || params[:category_id].nil?
      @products = Product.where(company: params[:company])
    else
      category = Category.find params[:category_id]
      @products = category.products.where "company LIKE ?", "#{params[:company]}%"
    end
  end
  
  def show
    @categories = Category.all
    @product = Product.find(params[:id])
    @s = Spec.find_by(product: @product)
    session[:cart] = Hash.new(0) if session[:cart].nil?
  end
end

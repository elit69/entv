class ProductsController < ApplicationController
  def index
    @products = Product.where(company: params[:company])
  end
  def show
    @categories = Category.all
    @product = Product.find(params[:id])
    @s = Spec.find_by(product: @product)
    session[:cart] = Hash.new(0) if session[:cart].nil?
  end
end

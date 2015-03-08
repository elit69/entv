class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end
  def show
    @categories = Category.all
    @product = Product.find(params[:id])
    @s = Spec.find_by(product: @product)
  end
end

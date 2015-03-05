class Admin::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    session[:referer] = request.referer if request.referer == new_admin_import_url
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:success] = "A new product has been added."
      redirect_back_or_to admin_products_path
    else
      flash.now[:danger] = "Error while processing data."
      render "new"
    end
  end

  def edit
  end

  def update
    if @product.update_attributes product_params
      flash[:success] = "Product's information has been updated."
      redirect_to admin_products_path
    else
      flash.now[:danger] = "Error while processing data."
      render "edit"
    end
  end

  def destroy
    @product.destroy
    flash[:success] = "Successfully remove a product."
    redirect_to admin_products_path
  end

  private

    def product_params
      params.require(:product).permit(:category_id, :name, :company, :price,
        spec_attributes: [:cpu, :ram, :os, :storage, :screen_size, :vga, :battery])
    end

    def set_product
      @product = Product.find params[:id]
    end
end

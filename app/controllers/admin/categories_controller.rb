class Admin::CategoriesController < ApplicationController 
  before_action :authenticate_admin!
  before_action :set_category, only: [:edit, :update]
  
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
    session[:referer] = request.referer if request.referer == new_admin_product_url
  end
  
  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = "A new category has been added."
      redirect_back_or_to admin_categories_path
    else
      render "new"
    end
  end
  
  def edit
  end
  
  def update
    if @category.update_attributes category_params
      flash[:success] = "Successfully updated."
      redirect_to admin_categories_path
    else
      render "edit"
    end
  end
  
  private
  
    def category_params
      params.require(:category).permit(:name, :description)
    end
  
    def set_category
      @category = Category.find params[:id]
    end
end

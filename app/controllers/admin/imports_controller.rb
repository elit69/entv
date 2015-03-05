class Admin::ImportsController < ApplicationController
  def index
    @imports = Import.all
  end

  def show
    @import = Import.find params[:id]
  end

  def new
    @import = Import.new
  end

  def create
    @import = Import.new import_params
    if @import.save
      flash[:success] = "Successfully imported products."
      redirect_to admin_imports_path
    else
      flash.now[:danger] = "Error while importing due to incomplete data."
      render "new"
    end
  end

  private

    def import_params
      params.require(:import).permit(:description,
        import_products_attributes: [:import_id, :product_id, :product_unit, :unit_price])
    end
end

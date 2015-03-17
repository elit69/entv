class StaticController < ApplicationController
  def index
    @products = Product.order("id DESC").limit(30)
  end

  def about
  end

  def contact
  end
end

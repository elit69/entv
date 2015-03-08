module ProductsHelper
  def format_in_stock(product)
    if product.total.nil?
      "Out of Stock"
    else
      product.total.to_s + " In Stock"
    end
  end
end

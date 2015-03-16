module ProductsHelper
  def format_in_stock(product)
    if product.total.nil? || product.total.zero?
      "Out of Stock"
    else
      pluralize(product.total, "Item") + " In Stock"      
    end
  end
end

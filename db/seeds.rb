# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  category = Category.create name: "Category #{i+1}", description: "Description #{i+1}"
  3.times do |n|
    Product.find_or_create_by(name: "Product #{n+1}") do |product|
      product.category = category
      product.price = 10
    end
  end
end
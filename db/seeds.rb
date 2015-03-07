# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create!([
  {
    name: "Smart Phone",
    description: "latest generation of phone that are smart lol"
  },
  {
    name: "Headset",
    description: "used for listening"
  }
])

cate = Category.find(1)
cate.products.create!(name: "IPhone6", company: "Apple", price: 1000, total: 200)

cate = Category.find(2)
cate.products.create!(name: "Beat Headset",	company: "Beat Audio",	price: 150,	total: 20)
cate.products.create!(name: "Beat Headset big",	company: "Beat Audio",	price: 200,	total: 60)

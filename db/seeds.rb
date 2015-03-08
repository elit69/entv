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
    name: "Computer",
    description: "personal desktop computer"
  },
  {
    name: "Headset",
    description: "used for listening"
  }
])

cate = Category.find(1)
spec = Spec.create!(cpu: "Apple A8", ram: "1GB", vga: "PowerVR GX6450", os: "IOS 8", storage: "32/64/128GB", screen_size: "4.7inches", battery:"1810mah")
spec.product = cate.products.create!(name: "IPhone 6", company: "Apple", price: 1000, total: 200)
spec.save
spec = Spec.create!(cpu: "Krait 450, Quad core, 2700 MHz", ram: "3GB", vga: "Adreno 420", os: "Android 5.0", storage: "32/64GB", screen_size: "6inches", battery:"3220mah")
spec.product  = cate.products.create!(name: "Nexus 6", company: "Motorola", price: 400, total: 200)
spec.save
spec = Spec.create!(cpu: "Krait 400, Quad core, 2500 MHz", ram: "3GB", vga: "Adreno 330 ", os: "Android 4.4, CM 11", storage: "32/64GB", screen_size: "5.5inches", battery:"3100mah")
spec.product = cate.products.create!(name: "One Plus One", company: "One Plus", price: 300, total: 200)
spec.save

cate = Category.find(3)
cate.products.create!(name: "Beat Headset",	company: "Beat Audio",	price: 150,	total: 20)
cate.products.create!(name: "Beat Headset big",	company: "Beat Audio",	price: 200,	total: 60)
cate.products.create!(name: "Sony X factor", company: "Sony",  price: 200, total: 60)

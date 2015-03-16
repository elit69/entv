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
spec = Spec.create!(cpu: "Apple A8, Dual Core, 1400 MHz", ram: "1GB", vga: "PowerVR GX6450", os: "IOS 8", storage: "32/64/128GB", screen_size: "4.7 Inches", battery:"1810 mAh")
spec.product = cate.products.create!(name: "IPhone 6", company: "Apple", price: 900, total: 0)
spec.save
spec = Spec.create!(cpu: "Apple A8, Dual Core, 1400 MHz", ram: "1GB", vga: "PowerVR GX6450", os: "IOS 8", storage: "32/64/128GB", screen_size: "5.5 Inches", battery:"2915 mAh")
spec.product = cate.products.create!(name: "IPhone 6S", company: "Apple", price: 1000, total: 10)
spec.save
spec = Spec.create!(cpu: "Krait 450, Quad core, 2700 MHz", ram: "3GB", vga: "Adreno 420", os: "Android 5.0", storage: "32/64GB", screen_size: "6inches", battery:"3220mah")
spec.product  = cate.products.create!(name: "Nexus 6", company: "Motorola", price: 400, total: 200)
spec.save
spec = Spec.create!(cpu: "Krait 400, Quad core, 2500 MHz", ram: "3GB", vga: "Adreno 330 ", os: "Android 4.4, CM 11", storage: "32/64GB", screen_size: "5.5inches", battery:"3100mah")
spec.product = cate.products.create!(name: "One Plus One", company: "One Plus", price: 300, total: 200)
spec.save

cate = Category.find(2)
spec = Spec.create!(cpu: "Intel Processor N2840 BF 2.58GHz", ram: "4GB", vga: "Intel HD Graphics", os: "Windows 8 Pro", storage: "500GB", screen_size: "14 Inches", battery:"6 cells")
spec.product = cate.products.create!(name: "X453MA", company: "Asus", price: 305, total: 23)
spec.save
spec = Spec.create!(cpu: "Intel QuadCore N2940 BF 2.25GHz", ram: "8GB", vga: "NVIDIA GT 820M", os: "Windows 8 Pro", storage: "500GB", screen_size: "15.6 Inches", battery:"4 cells")
spec.product = cate.products.create!(name: "K555LD", company: "Asus", price: 319, total: 23)
spec.save
spec = Spec.create!(cpu: "Intel QuadCore N2940 BF 2.25GHz", ram: "4GB", vga: "Intel HD Graphics", os: "Windows 8 Pro", storage: "500GB", screen_size: "14 Inches", battery:"4 cells")
spec.product = cate.products.create!(name: "E5-411", company: "Acer", price: 319, total: 23)
spec.save
spec = Spec.create!(cpu: "Intel Core i3-4030U 1.9GHz", ram: "4GB", vga: "Intel HD Graphics 4400", os: "Windows 8 Pro", storage: "500GB", screen_size: "15.6 Inches", battery:"3 cells")
spec.product = cate.products.create!(name: "E5-571", company: "Acer", price: 319, total: 23)
spec.save

cate = Category.find(3)
cate.products.create!(name: "Beat Headset",	company: "Beat Audio",	price: 150,	total: 20)
cate.products.create!(name: "Beat Headset big",	company: "Beat Audio",	price: 200,	total: 60)
cate.products.create!(name: "Sony X factor", company: "Sony",  price: 200, total: 60)

Admin.create!(username: "elit", email: "chhornelit@gmail.com", password:"12345678", password_confirmation: "12345678")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create! id: 1, name: "T-Shirt", price: 2000.00, active: true
Product.create! id: 2, name: "Shirt", price: 1299.00, active: true
Product.create! id: 3, name: "Jeans", price: 1995.00, active: true
Product.create! id: 4, name: "Loafers", price: 399.00, active: true
Product.create! id: 5, name: "Belt", price: 569.00, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

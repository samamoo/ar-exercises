require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true, created_at: Time.now)

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false, created_at: Time.now)

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true, created_at: Time.now)

@mens_stores = Store.where(mens_apparel: true)

#p @mens_stores 
# store1, store5, store6

@mens_stores.each {|mens_store|
puts mens_store[:name]
puts mens_store[:annual_revenue]}

@womens_stores = Store.where("annual_revenue < ?", 1000000).where(womens_apparel:true) # store4, store 6, store1

# p @womens_stores
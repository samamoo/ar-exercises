require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@ar_sum = Store.sum(:annual_revenue)
@ar_avg = Store.average(:annual_revenue)

puts @ar_sum #4114000
puts @ar_avg #822800.0

@ar_count = Store.where("annual_revenue > ?", 1000000).count

p @ar_count #2
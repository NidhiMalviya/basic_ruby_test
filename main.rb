require './data.rb'
require 'date'
require 'pry'
require './user.rb'
require './seller.rb'
require './buyer.rb'
require './product.rb'
require 'table_print'
class Main

end

User.load_data

puts "This is Users----------------------------------------------------------------\n"
tp User.all 
puts "\n\nThis is Products-------------------------------------------------------------\n"
tp Product.all_products
puts "\n\nThis is Full_Name------------------------------------------------------------\n"
puts User.all.map(&:full_name).to_s
puts "\n\nThis is Age-------------------------------------------------------------------\n"
puts User.all.map(&:age).to_s
puts "\n\nThis is Buyers----------------------------------------------------------------\n"
tp Buyer.find_buyer
puts "\n\nThis is Sellers---------------------------------------------------------------\n"
tp Seller.find_seller
puts "\n\nWhose First Name is 'alex'----------------------------------------------------\n"
tp User.find_by_name


require './user.rb'
require './data.rb'
require 'date'
require 'pry'
class Buyer < User
    def self.find_buyer
        @@users.select{|user| user.role == 'buyer'}
    end
end
puts Buyer.find_buyer.to_s

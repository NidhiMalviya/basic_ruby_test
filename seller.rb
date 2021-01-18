require './user.rb'
require './data.rb'
require 'date'
require 'pry'
class Seller < User
   
    def self.find_seller
        @@users.select{|user| user.role == 'seller'}
    end
end

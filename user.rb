require './data.rb'
require 'date'

class User
  #@users = []
  #def initialize(hash)
    #hash.each { |k, v| public_send("@#{k}=", v) }
  #end

  def initialize()
  end
  def full_name
    "#{@first_name} #{@last_name}"
  end

  #def self.create(users_array)
    #[users_array].each do |user_hash|
    #User.all_users << User.new(user_hash)
  #end

  #def self.all_users
    #@users
  #end

  def age
    now = Date.today
    @date_of_birth.year - ((now.month > @date_of_birth.month || (now.month == @date_of_birth.month && now.day >= @date_of_birth.day)) ? 0 : 1)
  end

  #def self.create(users_array)
      #[users_array].each do |user_hash|
      #User.all_users << User.new(user_hash)
  #end
  
  end

  def seller?
    @role == 'seller'
  end

  def buyer?
    @role == 'buyer'
  end

  def find_by_name(first_name)
    RawData::USER.select{|user| user.first_name == first_name }
  end
end

User.create(RawData::USER)
puts @users

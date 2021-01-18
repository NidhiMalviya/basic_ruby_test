require './data.rb'
require 'date'
require 'pry'

class User
  include RawData
  attr_accessor :first_name, :last_name,  :date_of_birth,  :address, :role
  @@users = []

  def self.load_data
    USERS.each do |user|
      @@users << User.new(user)
    end
  end
  def initialize(user)
    @first_name = user[:first_name]
    @last_name = user[:last_name]
    @date_of_birth = Date.parse user[:date_of_birth]
    @address = user[:address]
    @role = user[:role]
  end

  def self.all
    @@users
  end

  def self.all_users
    all.inspect
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
  now.year - @date_of_birth.year - ((now.month > @date_of_birth.month || (now.month == @date_of_birth.month && now.day >= @date_of_birth.day)) ? 0 : 1)
  end

  #def self.create(users_array)
  #[users_array].each do |user_hash|
  #User.all_users << User.new(user_hash)
  #end

  def seller?
  @role == 'seller'
  end

  def buyer?
  @role == 'buyer'
  end

  def self.find_by_name
    @@users.select{|user| user.first_name == 'alex'}
  end
end


User.load_data


#obj = User.new('Nidhi','Malviya','11-11-1947','Indore','buyer')
#puts obj.full_name
#puts obj.age


#User.create(RawData::USER)
#puts @users
  



# puts User.full_name

#obj = User.new()
#puts obj.all

#puts @@users

puts User.all_users
puts User.all.map(&:full_name)
puts User.all.map(&:age)
#puts User.all.map(&:find_by_name)
puts User.find_by_name.to_s
#puts obj.find_by_name
#puts User.obj

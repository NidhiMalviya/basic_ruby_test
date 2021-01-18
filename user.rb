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
    all
  end

  def full_name
  "#{@first_name} #{@last_name}"
  end

  def age
  now = Date.today
  now.year - @date_of_birth.year - ((now.month > @date_of_birth.month || (now.month == @date_of_birth.month && now.day >= @date_of_birth.day)) ? 0 : 1)
  end

  def self.find_by_name
    @@users.select{|user| user.first_name == 'alex'}
  end
end

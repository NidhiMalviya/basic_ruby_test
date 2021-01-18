require './data.rb'
require 'date'
require 'pry'


class Product
  include RawData
  attr_accessor :name, :seller, :price, :category
  @@products = []

  def self.load_data
    PRODUCTS.each do |product|
      @@products << Product.new(product)
    end
  end

  def initialize(product)
    @name = product[:name]
    @seller = product[:seller]
    @price = product[:price]
    @category = product[:category]
  end

  def self.all_products
    @@products.inspect
  end
end

Product.load_data
puts Product.all_products
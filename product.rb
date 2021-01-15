class Product
    def initialize(product_name,seller_name,price,category)
        @product = product
        @seller_name = seller_name
        @price = price
        @category = category
    end
    obj =Product.new('bicycle','alax','3000','vehicle')
    puts obj
end
Tax = {tw: 0.05, jp: 0.08, cn: 0.03}

class Product
  attr_reader :title, :price, :country, :is_online
  def initialize(title, price, country, is_online = false)
    @title = title
    @price = price
    @country = country
    @is_online = is_online
  end

  def tax
    Tax[country]
  end
  
  def total
    price * (1 + tax)
  end

  def to_s
    "品名：#{title}"
  end
end

p1 = Product.new("ruby", 100, :jp)
p2 = Product.new("php", 200, :tw,  true)
p3 = Product.new("asp", 300, :tw)
p4 = Product.new("java", 500, :jp, true)
p5 = Product.new("python", 800, :tw)
p6 = Product.new("perl", 1000, :cn)
p7 = Product.new("swift", 1800, :tw)
products = [p1, p2, p3, p4, p5, p6, p7]


#puts p1.price * (1 + Tax[p1.country])
#印出所有商品名稱
#puts products
#印出所有商品的價錢總和(含稅)
products.inject {|result, p| result + p.total } 
#印出所有台灣商品的價錢總和(含稅)
#印出所有超過500元以上的商品
# expensive_product = products.select { |p| p.total >= 500 }#select根據判斷式選取資料
# cheap_product = products.reject{ |p| p.total >= 500}#根據判斷式剃除資料
# expensive_product , cheap_product = products.partition { |p| p.total >= 500}#根據判斷式把資料分成兩群
# puts expensive_product
# puts "---------"
# puts cheap_product

class Cart 

  include Enumerable #必須自己實作each方法 
  def initialize 
    @items = []
  end

  def add_item(product)
    @items << product
  end

  def each
    @items.each {|t| yield t }
  end

end

cart = Cart.new
cart.add_item(p1)
cart.add_item(p2)
cart.add_item(p3)
cart.add_item(p4)
cart.add_item(p5)
cart.add_item(p6)
cart.add_item(p7)

h,l = cart.partition{|p| p.price >=500}
puts h
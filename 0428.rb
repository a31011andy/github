module Ccc
  def cry
  	puts "kukuo"
  end
end
class Cat
  extend Ccc # extend會讓模組內的方法變為類別方法
  include Ccc	 # include會變為實體方法
  class << self #多個類別方法可這樣寫
    def fly
      puts "666666"
    end
    def run
      puts "666"
    end
  end
end
#singleton method 單體(例)方法 
#任意物件上建立方法
kitty = Cat.new
def kitty.hello
  puts "666666"
end 
kitty.hello
# 類別方法 作用在類別上的方法(Cat.new)
Cat.fly
Cat.run
Cat.cry
p kitty.class #查詢上層class 所有類別的class方法都指向Class 
p Cat.superclass.superclass #查詢繼承自哪個父類別 


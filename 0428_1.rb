# def make_hello
#   define_method :hello do |name| #動態定義方法 
# 	puts "#{name} 666666 "	
#   end
# end
# make_hello
# hello("aaaa")
class Animal
  def self.my_attr_accessor(name,age)#類別方法
    define_method :name do # get method
    	#return @name
    	instance_variable_get(:"@#{name}")
    end
    define_method (:"#{name}=") do |n| #set method
  		#@name = n 
  		instance_variable_set(:"@#{name}", n)
  	end
  end
end
class Cat < Animal
  my_attr_accessor :name ,:age
  def initialize(name,age)
  	@name = name
  	@age = age
  end
end
kitty = Cat.new("aaaa","18")
puts kitty.name
puts kitty.age
kitty.name = "bbbb"
puts kitty.name

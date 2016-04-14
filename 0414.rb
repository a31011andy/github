# module Flyable #模組
# 	def fly
# 		puts "666666"
# 	end
# end

# class Cat
# 	include Flyable #Cat類別包含Flyable模組
# end

# kitty = Cat.new
# kitty.fly

# class String #ruby相同名稱的類別，方法會合併 可以新增預設類別的方法
# 	def say_hi
# 		puts "666666"
# 	end
# end

# "aa".say_hi
# "bb".say_hi
class Dog 
	def hello
		puts "666666"
	
	end


	def secret
		puts "87"
	end
end

aaa = Dog.new
aaa.hello
aaa.secret
#def age 
# 	return 20 #return 可有可無 最後一行若為值會自己return
#end
#
#puts age

# def hello(name)
# 	puts "first"
# 	yield  name # 控制權出讓 後可拋參數給後面的block
# 	puts "last"
# end

# hello("66666") do |name| #block 
# 	puts "hello ,#{name}"
# end

# def count_to(n)
# 	x = 0
# 	# while x < n
# 	# 	x+=1
# 	# 	yield x 
# 	# end
# 	n.times do
# 		x+=1
# 		yield x
# 	end
# end
# count_to(5) do |i|
# 	puts "hello,#{i}"
# end

# def is_adult? (age) #方法名稱後面+? 預期會傳回一個booleam值
# 	 age  >= 18
# end

# if is_adult? (18)
# 	p "yes"
# else
# 	p "no"
# end


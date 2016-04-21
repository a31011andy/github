class Fixnum 
	def my_times
		 i = 0
		while i < self
			yield i 
			i +=1
		end
	end
end

5.my_times do |n|
	puts "#{n} - hihi"
end


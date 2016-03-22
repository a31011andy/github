#請用 print 或 puts 方法印出你的名字
puts "蔡昱偉"

#請問 print、puts 以及 p 這三個方法有什麼差別?
#puts 相當於print 再斷行
#p 用來顯示資料完整型態

#請問下面這段程式碼中，|f| 代表什麼意思?
#  friends = ['aa', 'bb', 'cc']
#  friends.each do |f|
#    puts f
#  end
#|f| 用來存放從陣列中取出來的值

#請用 Ruby 程式碼寫出「從 1 到 100 數字中，隨機取出 5 個不重複的數字」
array = (1..100).to_a
puts array.shuffle[0,5]
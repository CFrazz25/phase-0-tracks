def calculate(integer1, operator, integer2)
  integer1.send(operator, integer2)
  end 

#Driver Code
 #puts calculate(4 , "+", 5)
 #puts calculate(3, "*", 3)
 #puts calculate(10, "-", 2)
 #puts calculate(10, "/", 2)
 
 puts "add a calculation!"
calculation = gets.chomp 
calculation.split("")



integer1 = calculation[0].to_i
operator = calculation[2].to_s
integer2 = calculation[4].to_i

puts calculate(integer1, operator, integer2)
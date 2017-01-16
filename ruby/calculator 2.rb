def calculate(integer1, operator, integer2)
  integer1.send(operator, integer2)
  end 

#Driver Code
 #puts calculate(40 , "+", 50)
 #puts calculate(3, "*", 3)
 #puts calculate(10, "-", 2)
 #puts calculate(10, "/", 2)
 
  all_calculations = []
 puts "add a calculation! type 'done' to exit"
calculation = gets.chomp 
new_calc = calculation.split(" ")

until calculation == "done"

integer1 = new_calc[0].to_i
operator = new_calc[1].to_s
integer2 = new_calc[2].to_i
p calculate(integer1, operator, integer2)
all_calculations.push "#{integer1} #{operator} #{integer2} = #{calculate(integer1, operator, integer2)}"
puts "add another calculation if you want!"
calculation = gets.chomp 
new_calc = calculation.split(" ")
end 

puts "#{all_calculations.length} calculations performend: 
      #{all_calculations}"
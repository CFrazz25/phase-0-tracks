def calculate(integer1, operator, integer2)
  integer1.send(operator, integer2)
  end 

#Driver Code
puts calculate(4 , "+", 5)
puts calculate(3, "*", 3)
puts calculate(10, "-", 2)
puts calculate(10, "/", 2)
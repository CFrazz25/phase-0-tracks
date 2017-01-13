# release 0

arr = [5, 10, 3, 17, 20, 25]
   
 
def search_array(arr, num)
    arr_new = []
    found = false
    arr.each do |item|
        arr_new << item
         if item == num
            found = true
          break
            
        end
      
    end
   if found == true
    return arr_new.length - 1
  else return nil 
end
end


 p search_array(arr, 17)

 #release 1 

  def fib(num)
    fib_arr = [0,1]
    (num - 2).times do
    fib_arr << fib_arr[-1] + fib_arr[-2]
    end
    return fib_arr
end

p fib(50)

# release 2 
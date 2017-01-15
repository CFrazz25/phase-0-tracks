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

# We have a set of random numbers and we need to get them in order. Take numbers in pairs. Whichever number is smaller, move it to the left. Keep going through the list until you get through all the numbers where the number on the left is always smaller than the number on the right. 

array = [25, 4, 1, 19, 43, 5, 0] 


 def sort(array)
  n = array.length
  i = 0
  while i < array.length
    

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        
      end
    end

    i += 1
  end

  array
end

sort(array)
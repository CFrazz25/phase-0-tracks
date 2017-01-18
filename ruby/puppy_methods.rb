class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Woof!" * integer 
  end 

  def roll_over
    puts "*rolls over*"
  end 

  def dog_years(integer)
    puts integer * 7 
  end 

  def gimme_paw(treat)
    puts "if you want #{treat}, gimme paw!"
  end 

  def initialize
    puts "Initializing new puppy instance..."
  end 

end


class Cars 

  def initialize
    puts "Initializing new car instance..."
  end 

  def safe_cars(car_name)
    puts "#{car_name} is a very safe car for new drivers!"
  end

  def fun_cars(car_name)
    puts "#{car_name} is a fun car for when you retire!"
  end 

end 

new_cars = []
i = 0

until i == 50
  toyota = Cars.new
  new_cars << toyota 

  
  i += 1 
end 
new_cars.each do |x|
  puts x.safe_cars("toyota")
  puts x.fun_cars("viper")
end 

puts new_cars



# Driver code

boxer = Puppy.new 

boxer.fetch("ball")

boxer.speak(3)

boxer.roll_over

boxer.dog_years(10)

boxer.gimme_paw("bone")


 
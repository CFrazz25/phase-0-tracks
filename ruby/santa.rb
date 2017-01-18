cclass Santa 
  def speak
    puts "#{@gender} and #{@ethnicity} Santa says Ho, ho, ho! Haaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end 

  def initialize(gender, ethnicity) 
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end 
end 

# Driver code

red = Santa.new("male", "white")

red.speak
red.eat_milk_and_cookies("chocolate chip")


santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
genders.length.times do |i|
  puts "Creating a new santa whom is #{genders[i]} and #{ethnicities[i]}!"
  santas << Santa.new(genders[i], ethnicities[i])
end

santas.each do |x|
  x.speak
end




#release 4 below
class Santa 
  attr_reader  :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity, age) 
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
   @age = age
   puts "Creating a new santa whom is #{gender}, #{ethnicity} and is #{age} years old!"
  end 
end 

# Driver code for release 4

age = (1..140).to_a
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
until santas.length == 100
  santas << Santa.new(genders.sample, ethnicities.sample, age.sample)
end



#release 0 - 3 below
=begin
class Santa 
  attr_reader :age, :ethnicity
  attr_accessor :gender
  
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
  
  def celebrate_birthday
    @age = 1
    puts "Santa is #{@age} year older!"
  end
  
  def get_mad_at(reindeer_name)
    new_reindeer_ranking = @reindeer_ranking 
    new_reindeer_ranking.delete(reindeer_name)
    new_reindeer_ranking << reindeer_name
    p @reindeer_ranking
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

red.celebrate_birthday
red.get_mad_at("Vixen")
p red.gender=("female")
red.speak
p red.age
p red.ethnicity
red.get_mad_at("Rudolph")

=end
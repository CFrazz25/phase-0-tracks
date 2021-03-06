# Virus Predictor

# I worked on this challenge [ with: Carlo Francisco].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# obtaining information from another file in same folder
# obtains information from other built in ruby files
require_relative 'state_data'



class VirusPredictor

# creates the attributes
# setting them available through out the whole class
# passing in state, density, population

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calling 2 methods and passing in arguments
 

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private

# if/else depending on population_density 
# prints what state will lose # of deaths 

  def predicted_deaths
    # predicted deaths is solely based on population density
    counter = 200
    x = 0.4
    until counter == 0
      if  @population_density >= counter
          number_of_deaths = (@population * x).floor
          p "#{@state} will lose #{number_of_deaths} people in this outbreak"
          break
      elsif 
          @population_density < 50
          number_of_deaths = (@population * 0.05).floor
          p "#{@state} will lose #{number_of_deaths} people in this outbreak"
        break
      end
      
        counter -= 50
        x -= 0.1
    end
  end

# conditional statements
# prints the speed of spreading

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affectedm
    # by additional factors we haven't added into this functionality.
    counter = 200
    x = 0.5
    until counter == 0 
      if @population_density >= counter
        speed = x
         puts " and will spread across the state in #{speed} months.\n\n"
        break
      elsif 
        @population_density < 50
        puts " and will spread across the state in 2.5 months.\n\n"
        break
      end
      counter -= 50
      x += 0.5
    end
end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_info|
  state_info = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
  state_info.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
1. What are the differences between the two different hash syntaxes shown in the state_data file?
rocket & symbol

2. What does require_relative do? How is it different from require?
 # require_relative is obtaining information from another file in same folder
# require obtains information from other built in ruby files 

3. What are some ways to iterate through a hash?
using an each loop utilizing the key and value inside the block, could use .times also based on the length. You can do the same thing with 
  until and while loops, calling their elements 

4.When refactoring virus_effects, what stood out to you about the variables, if anything?
the instance variables are accessible through out the whole class because they're attributes

5. What concept did you most solidify in this challenge?
accessing hashes inside hashes. 
=end

# Reflection Section
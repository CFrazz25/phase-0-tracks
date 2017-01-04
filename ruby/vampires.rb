puts "what is your name?"
name = gets.chomp

puts "how old are you?"
age = gets.chomp.to_i

puts "what year were you born?"
year_born = gets.chomp.to_i
current_year = 2016

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic_bread = gets.chomp

if garlic_bread == "yes"
  garlic_bread = true
elsif garlic_bread == "no"
  garlic_bread = false
end 
    

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
health_insurance = gets.chomp 

if health_insurance == "yes"
  health_insurance = true
elsif health_insurance == "no"
  health_insurance = false
end 

if age == (current_year - year_born) && (garlic_bread || health_insurance = true)
    puts "probably not a vampire"

elsif age != (current_year - year_born) && (garlic_bread || health_insurance = false)
    puts "probably a vampire"

elsif age != (current_year - year_born) && garlic_bread = false && health_insurance = false
  puts "Almost certainly a vampire"

elsif name == "Drake Cula" || "Tu Fang"
  puts "Definitely a vampire"

else 
  puts "Results inconclusive"
end 


  
  
      
puts "how many employees will be processed?"
employees_processed = gets.chomp.to_i
surveys_taken = 0 

until surveys_taken == employees_processed

puts "what is your name?"
name = gets.chomp

puts "how old are you?"
age = gets.chomp.to_i

puts "what year were you born?"
year_born = gets.chomp.to_i
current_year = 2016

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
health_insurance = gets.chomp 



puts "Name any allegries one at a time. Write 'done' when done."
allergies = gets.chomp 

until allergies == "sunshine" || allergies == "done"


allergies = gets.chomp
 
end 


  


surveys_taken += 1


if age == (current_year - year_born) && (garlic_bread == "yes" || health_insurance == "yes")
    puts "probably not a vampire"

elsif age != (current_year - year_born) && (garlic_bread == "no" && health_insurance == "yes") || (garlic_bread == "yes" && health_insurance == "no") || allergies == "sunshine"
    puts "probably a vampire"
   

elsif age != (current_year - year_born) && garlic_bread == "no" && health_insurance == "no"
  puts "Almost certainly a vampire"

elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire"

else 
  puts "Results inconclusive"
end 

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
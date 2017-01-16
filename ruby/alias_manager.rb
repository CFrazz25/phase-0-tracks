

def vowels_consonant_movement2(name)
 name = name.downcase.split(" ")
first_name = name[0]
second_name = name[1]
  consonants = "bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"
  translated_name = []
  translated_name2 = []

#adjust first name 
  x =  0 
  while x < first_name.length
  if first_name[x] == "z"
    first_name[x] = "b"
    translated_name << first_name[x]
    elsif
    first_name[x] == "u"
    first_name[x] = "a"
    translated_name << first_name[x]
  
  elsif consonants.include?first_name[x]
  
    new_position = consonants.index(first_name[x]) + 1 
  
    first_name[x] = consonants[new_position]
    translated_name << first_name[x]
    
    elsif vowels.include?first_name[x]
    newer_position = vowels.index(first_name[x]) + 1
    first_name[x] = vowels[newer_position]
    translated_name << first_name[x]
  
  end
  
    x += 1
  end
  
#adjust second name   
  x =  0 
  while x < second_name.length
  if second_name[x] == "z"
    second_name[x] = "b"
    translated_name2 << second_name[x]
    elsif
    second_name[x] == "u"
    second_name[x] = "a"
    translated_name2 << second_name[x]
  
  elsif consonants.include?second_name[x]
  
    new_position = consonants.index(second_name[x]) + 1 
  
    second_name[x] = consonants[new_position]
    translated_name2 << second_name[x]
    
    elsif vowels.include?second_name[x]
    newer_position = vowels.index(second_name[x]) + 1
    second_name[x] = vowels[newer_position]
    translated_name2 << second_name[x]
  
  end
  
    x += 1
  end
  
  first_letter = translated_name[0].upcase
  translated_name.delete_at(0)
  translated_name.insert(0, first_letter)
  
  first_letter2 = translated_name2[0].upcase
  translated_name2.delete_at(0)
  translated_name2.insert(0, first_letter2)
  
  return translated_name2.join("") + " " + translated_name.join("")
  
  
end

# Entering names into data 
fake_names = []
puts "What is your name? Type 'quit' to exit. "
name = gets.chomp
until name == "quit"
fake_names.push "#{name} is actually #{vowels_consonant_movement2(name)}"
puts "Another name? Type 'quit' to exit."
name = gets.chomp
end

puts fake_names
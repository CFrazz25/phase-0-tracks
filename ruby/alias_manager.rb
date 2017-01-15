

def vowels_consonant_movement2(name)
 name = name.split(" ")
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
  
  return translated_name[0].upcase
  
  # translated_name.join("") + " " + translated_name2.join("")
  
  
  
  
  
  
  
  
  
end

vowels_consonant_movement2("felicia torres")
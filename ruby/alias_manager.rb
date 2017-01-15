def decryption_method(string)
  consonants = "bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"
  translated_name = []
  x =  0 
  while x < string.length 
  if consonants.include?string[x]
    new_position = consonants.index(string[x]) + 1
    string[x] = consonants[new_position]
    translated_name << string[x]
    elsif vowels.include?string[x]
    newer_position = vowels.index(string[x]) + 1
    string[x] = vowels[newer_position]
    translated_name << string[x]
  end
    x += 1
  end
  return translated_name.join('')
end

decryption_method("felicia torres")
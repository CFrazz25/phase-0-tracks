# Information about an interior designer's client's information, storing them all together in one data base. The client's name, age, number of children, decor theme, referral from another client, and if so, who. If the client would like to change any information, ask them what information they would like to replace and then ask them what the change is. 

client_information = {
  name:"",
  age: "",
  number_of_children:"",
  decor_theme:"",
  referral:"",
  referral_name:""
}


# Driver code 

puts "what is your name"
client_information[:name] = gets.chomp

puts "what is your age?"
client_information[:age] = gets.chomp.to_i 

puts "how many children do you have?"
client_information[:number_of_children] = gets.chomp.to_i 

puts "what is your decor theme?"
client_information[:decor_theme] = gets.chomp 

puts "Were you referred? (yes/no)"
client_information[:referral] = gets.chomp
if client_information[:referral] == "yes"
  client_information[:referral] = true 
else 
  client_information[:referral] = false
end

puts "who referred you to us?"
client_information[:referral_name] = gets.chomp

p client_information

puts "would you like to make any changes? (yes/none)"
change = gets.chomp
 if  change == "yes"
   puts "what would you like to change?"
   new_change = gets.chomp.to_sym
   puts "please make update"
   client_information[new_change] = gets.chomp 
 elsif client_information == "none"
 end
   
 p client_information
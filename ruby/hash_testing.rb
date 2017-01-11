design_application = {
  name:"",
  address:"",
  email:"",
  phone:"",
  fave_shade_of_blue:"",
  wallpaper_preferences:"",
  ombre_is: ""
}


# Driver code 
puts "what is your name"
design_application[:name] = gets.chomp

puts "what is your address"
design_application[:address] = gets.chomp 

puts "what is your email"
design_application[:email] = gets.chomp 

puts "what is your phone #"
design_application[:phone] = gets.chomp 

puts "fave shade of blue?"
design_application[:fave_shade_of_blue] = gets.chomp 

puts "wallpaper preferences?"
design_application[:wallpaper_preferences] = gets.chomp

puts "Ombre is?..."
design_application[:ombre_is] = gets.chomp 

p design_application
# release 0 

def method
    puts "Yo Man"
    yield("chris", "tim")
end
method { |name1, name2| puts "WASSSUUPPP, it's #{name1} and #{name2}"}




#release 1

sports = ["basketball", "soccer", "football" , "volleyball"]
teams = {
  "Cubs" => "good", 
  "White_Sox" => "bad", 
  "BlackHawks" => "good"
}


# Before calling blocks for each
p sports
sports.each do |sport|
    puts "#{sport} is Fun!"
end
# After calling blocks for each
p sports


# Before calling hash for each
p teams
teams.each do |team, status|
    puts "#{team} is #{status}"
end
# After calling hash for each
p teams


# Before calling blocks for map!
p sports
sports.map! do |sport|
    puts sport
    sport.upcase
end
# Aafter calling blocks for map!
p sports


# release 2 


number_array = [9, 15, 23, 14, 30]
letter_starts = {"a" => "apple",
        "b" => "banana", 
        "c" => "coconut", 
        "d" => "doritoes", 
        "e" => "eggs"
}

# number 1
p number_array

number_array.delete_if {|number| number < 20}

p number_array

p letter_starts
letter_starts.delete_if {|letter, food| letter == "d" }
  
p letter_starts

# number 2 

number_array = [9, 15, 23, 14, 30]
letter_starts = {"a" => "apple",
        "b" => "banana", 
        "c" => "coconut", 
        "d" => "doritoes", 
        "e" => "eggs"
}

p number_array

number_array.keep_if {|number| number < 20}

p number_array

p letter_starts
letter_starts.keep_if {|letter, food| letter == "d" }
  
p letter_starts

# number 3 

number_array = [9, 15, 23, 14, 30]
letter_starts = {"a" => "apple",
        "b" => "banana", 
        "c" => "coconut", 
        "d" => "doritoes", 
        "e" => "eggs"
}

p number_array

number_array.select! {|number| number == 23}

p number_array

p letter_starts
letter_starts.select! {|letter, food| letter >= "d" }
  
p letter_starts

# number 4 

number_array = [9, 15, 23, 14, 30]
letter_starts = {"a" => "apple",
        "b" => "banana", 
        "c" => "coconut", 
        "d" => "doritoes", 
        "e" => "eggs"
}

p number_array

number_array.drop_while {|number| number < 20}

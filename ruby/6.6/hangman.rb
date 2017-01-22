class Hangman
  
  def initialize
     puts "creating game!"
  end

# This is where the first user will create a word for their friend to guess, 
# and when they create the word, it will result in empty spaces of how long the word is,
# showcasing how many letters are in the word.  
  def create_word(word)
    @word = word
    puts "Cool, but this will stay hidden. ;-)"
    puts "your friend will get #{@word.length} guesses. Repeat guesses, will not count against you."
    p @secret_letters = ["_ " * @word.length]

  end 
  
    
# This is where we will show the progress of the word from how many and what letters the 
# friend has guessed so far. If they get a letter correct in the word, that letter will show up,
# if they get a letter wrong, the empty space in the secret word will stay empty.   
  def show_progress(all_guesses, word)
    @word = word
     secret_word = "" 
     @word.chars.each do |letter|
       if all_guesses.include?(letter)
         secret_word << letter 
       else 
         secret_word << "_ "
       end
    end
    return secret_word
  end 

# Once the friend uses up all their guesses, they will get one shot at guessing the word. 
# If they get the word corret, it will let them know they won, if not, the program will taunt them. 
  def guess_word(guess, word)
    @word = word
    if guess == @word
      puts "you win!"
    else 
      puts "gosh you're not smart....like, at all...."
    end
  end
end 
  
  
# DRIVER CODE!!! 
# Ask the user to put in a word for their friend to guess. 
puts "Please create a word for your friend to guess."
word = gets.chomp 
game = Hangman.new

# The game will create 
game.create_word(word)


# Here the user guesses the letters in the word and will keep track of all guesses made.
all_guesses = []
number_of_guesses = word.length
new_guesses = []

until new_guesses.length == number_of_guesses
  puts "guess a letter"
  guessed_letter = gets.chomp 
  all_guesses << guessed_letter
  puts "Here's what you have guessed so far:"
  puts all_guesses

#below will make sure repeat guesses are not counted against the user 
  new_guesses = all_guesses.uniq
  puts "you have #{word.length - new_guesses.length} guesses left!"

  p game.show_progress(all_guesses, word)

end 
puts "that's all the guesses you get."

# The user's friend can guess the word after all of their attempts are over. 
puts "guess word"
guess = gets.chomp 
game.guess_word(guess, word)
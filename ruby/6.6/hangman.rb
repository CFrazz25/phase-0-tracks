class Hangman
  
  def initialize
     
  end
  
  def create_word(word)
    @word = word
    puts "Cool, but this will stay hidden. ;-)"
    puts "your friend will get #{@word.length} guesses. Repeat guesses, will not count against you."
    p @secret_letters = ["_ " * @word.length]
  end 
  
  def guessed_letters(letter)
    @letter = letter
  end
    
  
  def show_progress(all_guesses)
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

  def guess_word(guess)
    if guess == @word
      puts "you win!"
    else 
      puts "gosh you're not smart....like, at all...."
    end
  end
end 
  
  
# Driver code 
# Ask the user to put in a word for their friend to guess. 
game = Hangman.new 
puts "Please create a word for your friend to guess."
word = gets.chomp 
game.create_word(word)


# Here the user guesses the letters in the word. 
all_guesses = []
number_of_guesses = word.length
new_guesses = []
until new_guesses.length == number_of_guesses
  puts "guess a letter"
  guessed_letter = gets.chomp 
  game.guessed_letters(guessed_letter)
  all_guesses << guessed_letter
  puts "Here's what you have guessed so far:"
  puts all_guesses
#below will make sure repeat guesses are not counted against the user 
  new_guesses = all_guesses.uniq
  puts "you have #{word.length - new_guesses.length} guesses left!"

  p game.show_progress(all_guesses)

end 
puts "that's all the guesses you get."

# The user's friend can guess the word after all of their attempts are over. 
puts "guess word"
guess = gets.chomp 
game.guess_word(guess)
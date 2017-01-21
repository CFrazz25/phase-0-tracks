class Hangman
  attr_reader :word
  attr_reader :letter
  
  def initialize
    @letter = ""
    @word = ""
  end
  
  def create_word(word)
    @word = word
    puts "Cool, but this will stay hidden. ;-)"
  end 
  
  def guessed_letters(letter)
    @letter = letter
    if @letter == letter
      puts "you guessed that already..."
    end
  end
    
  
  def show_progress(all_guesses)
     secret_word = "" 
     @word.chars.each do |letter|
       if all_guesses.include?(letter)
         secret_word << letter 
       else 
         secret_word << "_"
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
p word.length
game.create_word(word)


# Here the user guesses the letters in the word. 
all_guesses = []
i = 0
while i < word.length
puts "guess a letter"
guessed_letter = gets.chomp 
game.guessed_letters(guessed_letter)
all_guesses << guessed_letter
all_guesses
x = 0 
while x < all_guesses.length 
p game.show_progress(all_guesses)
x += 1
end
i +=1 
end 
puts "that's all the guesses you get."

# The user's friend can guess the word after all of their attempts are over. 
puts "guess word"
guess = gets.chomp 
game.guess_word(guess)
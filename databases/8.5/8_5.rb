require 'sqlite3' 

db = SQLite3::Database.new("gamblers.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS gamblers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    money_left INT
  )
SQL

db.execute(create_table_cmd)

# method to gamble 
def gambling (name, bet)
  $money_left = bet
  cards_1 = ["A", "K", "Q", "J", 10, 9, 8, 7, 6, 5, 4, 3, 2]

  x = 0 
  while x < bet 
    card1 = cards_1.sample
    card2 = cards_1.sample
    card3 = cards_1.sample
    card4 = cards_1.sample
    card5 = cards_1.sample

    p results = [card1, card2, card3, card4, card5]
    solutions = results.uniq
      if solutions.count < 3 
        $money_left += 3
        puts "you're pretty lucky with that 4-pair"
      elsif solutions.count < 4 
        $money_left += 2
        puts "you got three of a kind or two pairs!"
      elsif solutions.count < 5 
        $money_left += 1
        puts "you got a pair!"
      else
        $money_left -= 1
        puts "sorry, nothing"
      end 
    solutions.count
    x += 1 
    p "you have $#{$money_left} now."
  end 
end
#end of gambling method 

puts "What's your name?"
$name = gets.chomp
name = $name
names = []
names << name 

puts "how many times do you want to bet? $1 a bet."
bet = gets.chomp.to_i
gambling(name, bet)
money_left = $money_left

def create_gambler(db, name, money_left)
  db.execute("INSERT INTO gamblers (name, money_left) VALUES (?, ?)", [name, money_left])
end

names.each do 
  create_gambler(db, name, money_left)
end 







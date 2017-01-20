module Shout 
  def yell_angrily(words)
    puts words + "!!!" + ":("
  end

  def yelling_happily(words)
    puts words + "!!!" + ":)"
  end
end

class Coaches
  include Shout
end


class Boss
  include Shout
end 

soccer = Coaches.new
soccer.yelling_happily("GOAL")
soccer.yell_angrily("Benched")

mean = Boss.new
mean.yell_angrily("You're fired")
mean.yelling_happily("You're hired, I guess....")


#release 1 below
=begin
module Shout 
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yelling_happily(words)
    words + "!!!" + ":)"
  end
end

p Shout.yell_angrily("asshole")
p Shout.yelling_happily("I love you")
=end
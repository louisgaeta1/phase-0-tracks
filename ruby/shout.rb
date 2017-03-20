=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!!!" + " :)"
  end
end


puts Shout.yelling_happily("Hello")
puts Shout.yell_angrily("No")
=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!!" + " :)"
  end
end

class Boss
	include Shout
end

class Announcer
	include Shout
end

test_boss = Boss.new
test_announcer = Announcer.new

puts test_boss.yell_angrily("You're Fired")
puts test_boss.yelling_happily("Great Work")

puts test_announcer.yelling_happily("Welcome")
puts test_announcer.yell_angrily("Stand Back")
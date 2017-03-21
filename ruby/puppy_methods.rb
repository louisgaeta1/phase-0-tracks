class Puppy

	def initialize
		puts "Initializing puppy class"
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(int)
		int.times do 
			puts "Woof!"
		end
	end

	def roll_over 
		puts "*rolls over*"
	end

	def dog_years(human_years)
		human_years * 7
	end

	def sneeze
		puts "Achoo!!"
	end

end

class Gamer

	def initialize
		puts "Initializing Gamer"
	end

	def play(console, game)
		puts "Starting #{game} for #{console}"
	end

	def rage(reason)
		puts "**throws controller at screen because #{reason}**"
	end

	def party
		"joins a match"
	end

end


=begin
fido = Puppy.new
fido.fetch("bone")
fido.speak(5)
fido.roll_over
puts "Fido is #{fido.dog_years(4)} years old in dog years."
fido.sneeze


salty = Gamer.new

salty.play("Switch", "Zelda")
salty.rage("one-shotted by a Guardian")
=end


gamers = []

50.times do |i|
	gamers[i] = Gamer.new
end

gamers.each_with_index do |gamer, i|
	puts "Gamer #{i+1} #{gamer.party}"
end


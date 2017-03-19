class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age+=1
	end

	def get_mad_at (reindeer)
		@reindeer_ranking.push(@reindeer_ranking.slice(@reindeer_ranking.index(reindeer)))
		puts "Santa is mad at #{@reindeer_ranking.last}"
	end
=begin
	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	def gender
		@gender
	end
=end
end

=begin
claus = Santa.new

claus.initialize
claus.speak
claus.eat_milk_and_cookies("oreo")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
=end

santa = Santa.new("male", "white")
puts "Santa is currently a #{santa.age} year old #{santa.ethnicity} #{santa.gender}."

santa.get_mad_at("Dasher")

56.times do 
	santa.celebrate_birthday
end

santa.gender = "transgender"

puts "Santa is currently a #{santa.age} year old #{santa.ethnicity} #{santa.gender}."


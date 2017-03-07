puts "What is the hamster's name?"
name = gets.chomp
puts "What is your preferred volume level?(1-10)"
volume = gets.chomp
puts "What fur color?"
color = gets.chomp
puts "Is the hamster a good candidate for adoption?"
adoption = gets.chomp
puts "Approximately how old is the hamser?"
age = gets.chomp

if age == ""
	age = nil
end

puts name
puts volume
puts color
puts adoption
puts age
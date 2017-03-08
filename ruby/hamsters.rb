
name = nil
loop do
	puts "What is the hamster's name?"
	input = gets.chomp
	if input != ""
		name = input
		break
	end
end

volume = nil
loop do 
	puts "What is your preferred volume level?(1-10)"
	input = gets.chomp
	if input.to_i >=1 && input.to_i<=10
		volume = input.to_i
		break
	end
end

puts "What fur color?"
color = gets.chomp

adoption=nil
loop do
	puts "Is the hamster a good candidate for adoption?"
	input = gets.chomp
	if input == 'yes' || input == 'no'
		adoption = input
		break
	end
end

puts "Approximately how old is the hamster?"
age = gets.chomp

if age == ""
	age = nil
end


age = age.to_i


puts name
puts volume
puts color
puts adoption
puts age
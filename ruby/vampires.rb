puts "What is your name?"
name1 = gets.chomp
puts "How old are you? What year were you born?"
age = gets.chomp 
year =gets.chomp

age_check = (age.to_i == 2017-year.to_i) 

#puts age_check
gb = nil
loop do
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	gb = gets.chomp
	if gb == 'yes'
		gb = true
		break
	elsif gb =="no"
		gb = false
		break
	end
end

health = nil
loop do
	puts "Would you like to enroll in the company’s health insurance? "
	health = gets.chomp
	if health == 'yes'
		health = true
		break
	elsif health =="no"
		health = false
		break
	end
end

#puts "#{age_check} && (#{gb} || #{health}) == #{age_check && (gb || health)}"

result="Results inconclusive."
if age_check && (gb || health)
	result="Probably not a vampire."
end
if !age_check && (!gb || !health)
	result="Probably a vampire."
end
if !age_check && !gb && !health
	result="Almost certainly a vampire."
end
if name1 == "Drake Cula" || name1 == "Tu Fang"
	result= "Clearly a vampire."
end


puts result
puts "How many employees will be processed?"
employees=gets.chomp.to_i

i=0
while i < employees
puts "What is your name?"
name1 = gets.chomp
puts "How old are you?"
age = gets.chomp 
puts "What year were you born?"
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

puts "Please list any allergies you have. Enter 'done' when you are finished."
allergies=nil
while allergies != "done"
	allergies = gets.chomp
	if allergies == "sunshine"
		result="Probably a vampire."
		break
	end
end


puts result

i+=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
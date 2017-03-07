puts "What is your name?"
name1 = gets.chomp
puts "How old are you? What year were you born?"
age = gets.chomp 
year =gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
gb = gets.chomp
if gb == 'y'
	gb = true
elsif gb =="n"
	gb = false
puts "Would you like to enroll in the company’s health insurance? "
health =gets.chomp health
if health == 'y'
	health = true
elsif health =="n"
	health = false
end

age_check = (age==2017-year)

case age_check
when age_check && (gb || health)
	result="Probably not a vampire."
when !age_check && !(gb||health)
	result="Probably a vampire."
when !age_check && !gb && !health
	result="Almost certainly a vampire."
when name1 == "Drake Cula" || name1 == "Tu Fang"
	result= "Clearly a vampire."
else
	result="Results inconclusive."
end

puts result
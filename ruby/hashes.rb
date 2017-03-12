#Create a hash with name, age, number of children, decor theme as keys and initialize as nil
#Prompt user for the values of each key and assign them to the hash.
#As the user inputs data for age and number of children, convert them to integers
#Print the completed hash
#Ask the user which key they would like to update (If none skip to the end)
#Ask the user what they would like to change it to
#	Convert inputs to symbols and update the name of the key to the name that was input
#print the edited hash


client_info ={
	name: nil,
	age: nil,
	children: nil,
	decor_theme:nil
}

puts "Please enter your name."
client_info[:name]=gets.chomp

puts "Please enter your age."
client_info[:age]=gets.chomp.to_i

puts "How many children do you have?"
client_info[:children]=gets.chomp.to_i

puts "What decor theme would you like?"
client_info[:decor_theme]=gets.chomp

p client_info

puts "What value would you like to update?"
key = gets.chomp

if key != "none"

	key = key.to_sym

	puts "What would you like to change it to?"
	if key == :age || key == :children
		update = gets.chomp.to_i
	else
		update = gets.chomp
	end

	client_info[key] = update

	p client_info
end


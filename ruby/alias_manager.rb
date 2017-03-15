
=begin
 Methods for: 
	1. swapping first and last name
	2. advancing to the next vowel
	3. advancing to the next consonant

Swapping names
takes a string and splits it by a space into an array
swaps the two places
joins the array back together and returns it


Next Vowel
takes a string of one character
creates an array of all vowels
	iterates through the vowel array checking which it matches to 
	return the next value in the vowel array.
		if the current vowel is "u"  assign it to "a"

Next Consonant
takes a string of one character
creates an array of all consonants
	iterates through the consonants array checking which it matches to 
	return the next value in the consonants array.
		if the current consonant is "z"  assign it to "b"


Driver
Ask user for input of a name as a string

run swap names on the string and store it in a new value

split the swapped string by character and store it in a new array value

iterate through the array checking if the character matches a vowel,
	if it is run next vowel and assign it to the current character
	if it is a space assign it to a space
	otherwise run next consonant

join the array and display it

=end

def swap(name)
	names =name.split(' ')
	names[0],names[1]=names[1],names[0]
	result = names.join(' ')
	result
end

def next_vowel(char)
	vowels=['a','e','i','o','u']
	nextv = nil
	if char == 'u'
		nextv = 'a'
		return nextv
	end
	vowels.each_with_index do |vowel,index|
		if char == vowel
			nextv = vowels[index+1]
		end
	end
	return nextv
end

def next_consonant(char)
	consonants="bcdfghjklmnpqrstvwxyz".chars
	if char=='z'
		nextc ='b'
		return nextc
	end
	consonants.each_with_index do |consonant,index|
		if char == consonant
			nextc = consonants[index+1]
		end
	end
	return nextc
end

originals = []
aliases = []

loop do
	puts "Please enter a name:"
	input = gets.chomp

	if input == 'quit'
		break
	end

	originals.push(input)

	swapped = swap(input)

	names = swapped.split(' ')

	names.map! do |name|
		characters = name.chars
		characters.map! do |char|
			if char.downcase == 'a' || char.downcase == 'e'|| char.downcase == 'i'|| char.downcase == 'o'|| char.downcase == 'u'
				char = next_vowel(char.downcase)
			else
				char = next_consonant(char.downcase)
			end
		end
		name = characters.join('').capitalize
	end

	result = names.join(' ')

	aliases.push(result)

	#puts result
end

originals.each_with_index do |name, index|
	puts "#{name} is actually #{aliases[index]}"
end



=begin
puts next_consonant('t')
puts next_consonant('r')
puts next_consonant('v')



puts next_vowel('a')
puts next_vowel('e')
puts next_vowel('i')
puts next_vowel('o')
puts next_vowel('u')
=end

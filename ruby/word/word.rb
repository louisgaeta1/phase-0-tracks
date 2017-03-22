=begin 
Game class
atrributes:
	number of guesses
	answer
	guessed letters
	blanks 
	solved 
methods
	initialize
	display
	check letter
	check solved

initalize method
input: word
steps: 
	number of guesses = 0 
	answer = word.split('')
	guessed letters =[]
	solved = false
	blanks = []
	for each item in answer array, push a "_" onto the blanks array
output:
	nil


check letter method
input: letter
steps:
	push letter onto guessed letters array
	iterate through answer array and check for letter
	if letter is found, update blanks array at the same index with the guessed letter and return true
	if its not found return false
output:
	true or false

display method
input: none
steps:
	print blanks.join(" ")
output:
	ex. _ _ _ _ _ t 

check solved method
input: none
steps:
	iterate through blanks array and check for a "_"
	if "_" is found return false
	if not return true
output: true or false

driver
Input a word to guess
Call an instance of game with the word as a parameter
loop until the number of guesses = the length of the word + 3
run display method
Ask for input of a letter
check that letter
check if solved
	if solved break
increment number of guesses 
end loop

if solved is true
	display finished word and victory message
if solved is false
	display finished word and losing message

=end

class Game
	attr_reader :answer, :blanks
	attr_accessor 

	def initialize(word)
		@guesses = 0
		@answer = word.split('')
		@guessed_letters = []
		@solved = false
		@blanks = []
		@answer.each do 
			@blanks.push("_")
		end
	end

	def display
		puts @blanks.join(' ')
		@blanks.join(' ')
	end



end




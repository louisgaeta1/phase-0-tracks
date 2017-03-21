class Puppy

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


end

fido = Puppy.new

fido.fetch("bone")
fido.speak(5)
fido.roll_over
puts "Fido is #{fido.dog_years(4)} years old in dog years."
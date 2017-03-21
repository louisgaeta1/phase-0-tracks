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

end

fido = Puppy.new

fido.fetch("bone")
fido.speak(5)
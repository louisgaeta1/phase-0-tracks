# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative includes whatever file you specify
# Require_relative will look in directories relative to where it is called
require_relative 'state_data'

class VirusPredictor
 attr_reader :population_density, :population, :state
 # Runs when when a new instance is created
 # Assigns the arguments to the instance variables
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

 # Run the two methods and prints out predicted deaths and the
 # speed of spread of the virus
 def virus_effects
   "#{state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
 end

 private
 # Takes in 3 arguments and calculates number_of_deaths based on
 # population density by multiplying population by some number
 # and print the results
 def predicted_deaths
  case population_density
  when population_density >= 200 then (population * 0.4).floor
  when 150...200 then (population * 0.3).floor
  when 100...150 then(population * 0.2).floor
  when 50...100 then (population * 0.1).floor
  else (population * 0.05).floor
  end
 end

 # Take in state and population density and calculates speed of spread based
 # on population density and prints that speed
 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.
   case population_density
   when population_density >= 200 then 0.5
   when 150...200 then 1
   when 100...150 then 1.5
   when 50...100 then 2
   else 2.5
   end
 end
end

def print_all_states
 STATE_DATA.each do |state, info|
   temp = VirusPredictor.new(state, info[:population_density], info[:population])
   puts temp.virus_effects
 end
end
#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
puts alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
puts jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
puts california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
puts alaska.virus_effects

print_all_states
#=======================================================================
# Reflection Section

